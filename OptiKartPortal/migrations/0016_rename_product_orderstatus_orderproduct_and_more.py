# Generated by Django 4.1.3 on 2023-08-20 10:45

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("OptiKartPortal", "0015_eyenumber"),
    ]

    operations = [
        migrations.RenameField(
            model_name="orderstatus",
            old_name="Product",
            new_name="OrderProduct",
        ),
        migrations.RenameField(
            model_name="orderstatus",
            old_name="User",
            new_name="OrderUser",
        ),
    ]