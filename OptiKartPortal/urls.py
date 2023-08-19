'''THIS IS THE ACTUAL URLS.PY WHICH BELOMGS TO THE APP'''

from django.contrib import admin
from django.urls import path, include
from OptiKartPortal import views

urlpatterns = [
    path("", views.index, name = "HomePage"),
    path("blogs", views.blogs, name = "Blogs"),
    path("read-blog/<str:blogsname>", views.readBlogs, name = "ReadBlogs"),
    path("signin", views.signin, name = "SignIN"),
    path("signindone", views.signindone, name = "SignINdone"),
    path("signout", views.signout, name = "SignOut"),
    path("signup", views.signup, name = "SignUP"),
    path("signupdone", views.signupdone, name = "SignUPdone"),
    path("cart", views.Cart, name = "Cart"),
    path("add-cart/<str:prodname>", views.addCart, name = "AddCart"),
    path("payment", views.payment, name = "Payment"),
    path("newsletters", views.newsletters, name = "Newsletters"),
    path("search", views.search, name = "Search"),
    path("about", views.about, name = "AboutUs"),
    path("explore", views.explore, name = "Explore"),
    path("show-product/<str:prodname>", views.showProds, name = "ProductOverview"),
    path("error", views.error, name = "ErrorPage"),
    path("forgot-password", views.forgotpass, name = "PassForgot"),
    path("deleteacc", views.DeleteAccount, name = "DeleteAccount"),
    path("rating/<str:prod>", views.rating, name = "rating"),
    path("userprofile", views.userprofile, name = "UserProfile"),
    path("profile-update", views.profileupdate, name = "ProfileUpdate"),
    path("password-change", views.passwordchange, name = "PasswordChange"),
    path("place-order", views.OrderPlace, name = "OrderPlace"),
    path("checkout", views.checkout, name = "Checkout"),
]
