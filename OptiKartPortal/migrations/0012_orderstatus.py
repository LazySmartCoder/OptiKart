# Generated by Django 4.1.3 on 2023-08-20 03:45

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ("OptiKartPortal", "0011_cartitem_user"),
    ]

    operations = [
        migrations.CreateModel(
            name="OrderStatus",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "Product",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="OrderProduct",
                        to="OptiKartPortal.product",
                    ),
                ),
                (
                    "User",
                    models.ForeignKey(
                        default=1,
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="OrderUserDetails",
                        to=settings.AUTH_USER_MODEL,
                    ),
                ),
            ],
        ),
    ]