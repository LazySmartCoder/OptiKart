'''This is the project's urls.py NOTE THE MAIN ONE IN APPS'''

from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", include("OptiKartPortal.urls"), name = "MainPortal")
]
