# Generated by Django 4.1.3 on 2023-08-06 16:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("OptiKartPortal", "0007_cartitem"),
    ]

    operations = [
        migrations.AddField(
            model_name="product",
            name="Rates",
            field=models.CharField(default="", max_length=20),
        ),
    ]