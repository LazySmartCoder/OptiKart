from django.db import models
from django.contrib.auth.models import User

# Creating the database tables here

class NewsMail(models.Model):
    Email = models.EmailField(default="", blank=False, max_length=200)

    def __str__(self):
        return self.Email

class Product(models.Model):
    ProdID = models.CharField(max_length=40, primary_key=True)
    Name = models.CharField(max_length=50)
    Desc = models.TextField(max_length=5000)
    Seller = models.CharField(max_length=50)
    Rating = models.IntegerField(default=0)
    Price = models.IntegerField()
    Image = models.CharField(max_length=200)
    Rates = models.CharField(blank=False, max_length=20, default="0")
    ActRates = models.CharField(blank=False, max_length=20, default="0")

    def __str__(self):
        return self.Name

class Blog(models.Model):
    Name = models.CharField(max_length=200)
    Desc = models.CharField(max_length=200)
    Post = models.TextField(max_length=5000)
    Date = models.DateField()
    Views = models.IntegerField()
    Image = models.CharField(max_length=50, blank=False, default="")

    def __str__(self):
        return self.Name

class CartItem(models.Model):
    Product = models.ForeignKey(Product, related_name="Product", on_delete=models.CASCADE)
    User = models.ForeignKey(User, related_name="UserDetails", on_delete=models.CASCADE, default=1)
    def __str__(self):
        return self.Product.Name

class OrderStatus(models.Model):
    Product = models.ForeignKey(Product, related_name="OrderProduct", on_delete=models.CASCADE)
    User = models.ForeignKey(User, related_name="OrderUserDetails", on_delete=models.CASCADE, default=1)
    def __str__(self):
        return self.Product.Name

