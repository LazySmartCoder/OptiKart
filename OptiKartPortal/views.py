# Importing some required packages
from django.shortcuts import render, redirect
from OptiKartPortal.models import Product, NewsMail, Blog, CartItem
from django.contrib.auth.models import User
from django.contrib.auth import login, login, authenticate, logout
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.header import Header
from email.utils import formataddr
from django.contrib import messages

'''Here the main code is beign written which is views.py'''

# Write some important functions over here
def otpGen():
    import random
    otp = ""
    for OTP in range(4):
        otp += str(random.randint(1, 9))
    return otp
user_otp = otpGen()

# Write the django functions over here
def index(request):
    prods = Product.objects.all()
    blogs = Blog.objects.all()
    prodparams = {
        "prods" : prods,
        "blogs" : blogs
    }
    return render(request, "index.html", prodparams)
    
def blogs(request):
    blogs = Blog.objects.all()
    blogparams = {
        "blogs" : blogs
    }
    return render(request, "blog.html", blogparams)

def readBlogs(request, blogsname):
    blogdet = Blog.objects.get(Name = blogsname)
    readparams = {
        "readb" : blogdet,
        "name" : blogdet.Name,
        "desc" : blogdet.Desc,
        "post" : blogdet.Post,
        "image" : blogdet.Image,
        "date" : blogdet.Date,
        "views" : blogdet.Views
    }
    blogdet.Views = blogdet.Views + 1
    blogdet.save()
    return render(request, "read-blogs.html", readparams)

def explore(request):
    prod = Product.objects.all()
    prodparams = {
        "prods" : prod
    }
    return render(request, "explore.html", prodparams)

def showProds(request, prodname):
    prod = Product.objects.get(Name = prodname)
    prodparams = {
        "name" : prod.Name,
        "desc" : prod.Desc,
        "seller" : prod.Seller,
        "rating" : prod.ActRates,
        "price" : prod.Price,
        "image" : prod.Image,
        "rating" : range(int(prod.ActRates))
    }
    return render(request, "show-prod.html", prodparams)

def Cart(request):
    return render(request, "Cart.html")

def addCart(request, prodname):
    prod = Product.objects.get(Name = prodname)
    cart = CartItem.objects.all()
    creating = CartItem(Product = prod)
    creating.save()
    messages.success(request, "Your product has been added to the Cart.")
    return redirect(f"/show-product/{prodname}")

def about(request):
    return render(request, "about.html")

def signin(request):
    return render(request, "signin.html")

def signup(request):
    return render(request, "signup.html")

def signindone(request):
    pass

def signupdone(request):
    if  request.method == "POST":
        name = request.POST["name"]
        email = request.POST["email"]
        pass1 = request.POST["pass1"]
        pass2 = request.POST["pass2"]
        if pass1 != pass2:
            messages.warning(request, "Passwords Unmatched.")
            return redirect("SignUP")
        if User.objects.filter(username=email).exists():
            messages.warning(request, "This account is already registered to us with this email.")
            return redirect("SignUP")
        creating_user = User.objects.create_user(username=email, password=pass1)
        creating_user.email = user_otp
        creating_user.first_name = name
        creating_user.save()
        authenticating = authenticate(username=email, password=pass1)
        if authenticating is not None:
            login(request, authenticating)
            userdet = User.objects.get(username = request.user.username)
            print(userdet)
            messages.success(request, "Your OptiKart account has been created succesfully.")
        else:
            messages.warning(request, "An unexpected error occured.")
            return redirect("SignUP")
        return redirect("HomePage")
    return redirect("ErrorPage")

def error(request):
    return render(request, "error.html")

def signindone(request):
    if request.method == "POST":
        email = request.POST["email"]
        password = request.POST["password"]
        authenticating = authenticate(username=email, password=password)
        if authenticating is not None:
            login(request, authenticating)
            messages.success(request, "You have successfully logged in.")
        else:
            messages.warning(request, "Please enter the fields correctly.")
            return redirect("SignIN")
        return redirect("HomePage")
    return redirect("ErrorPage")

def forgotpass(request):
    return render(request, "forgot-pass.html")

def signout(request):
    if request.user:
        logout(request)
        return redirect("HomePage")
    return redirect("ErrorPage")

def DeleteAccount(request):
    if request.user.is_authenticated:
        user = User.objects.get(username = request.user)
        user.delete()
        user.save()
        messages.success(request, "Your account has been successfully deleted. Never come back...")
        return redirect("HomePage")
    return redirect("ErrorPage")

def search(request):
    pass

def newsletters(request):
    pass

def payment(request):
    pass

def rating(request, prod):
    prod = Product.objects.get(Name = prod)
    prod.Rates = int(prod.Rates) + 1
    prod.Rating = prod.Rating + int(request.GET["rating"])
    prod.ActRates = (prod.Rating) // int(prod.Rates)
    prod.save()
    return redirect(f"/show-product/{prod}")