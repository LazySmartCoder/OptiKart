'''This is the project's urls.py NOTE THE MAIN ONE IN APPS'''

from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", include("OptiKartPortal.urls"), name = "MainPortal")
]

handler404 = "OptiKartPortal.views.error"
handler500 = "OptiKartPortal.views.ErrorOccured"
handler403 = "OptiKartPortal.views.error"
handler400 = "OptiKartPortal.views.error"
admin.site.site_title = "OptiKart"
admin.site.site_header = "OptiKart"
admin.site.index_title = "Welcome to OptiKart's Admin panel..."