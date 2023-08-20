from django.contrib import admin
from OptiKartPortal.models import *

# Registering the models here to be shown in django admin portal.
admin.site.register(NewsMail)
admin.site.register(Product)
admin.site.register(Blog)
admin.site.register(CartItem)
admin.site.register(OrderStatus)
admin.site.register(EyeNumber)