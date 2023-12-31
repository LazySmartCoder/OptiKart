# Generated by Django 4.1.3 on 2023-08-19 06:08

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ("OptiKartPortal", "0010_alter_product_actrates_alter_product_rates_and_more"),
    ]

    operations = [
        migrations.AddField(
            model_name="cartitem",
            name="User",
            field=models.ForeignKey(
                default=1,
                on_delete=django.db.models.deletion.CASCADE,
                related_name="UserDetails",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
    ]
