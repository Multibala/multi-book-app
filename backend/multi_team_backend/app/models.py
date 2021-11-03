from django.db import models
from django.contrib.auth.models import User
class Author:
    name = models.CharField(max_length=200)
    surname = models.CharField(max_length=200)
    image = models.ImageField()

class Book:
    name = models.CharField(max_length=300)
    description = models.CharField(max_length=5000)
    price = models.FloatField()
    cover = models.ImageField()
    author = models.ForeignKey(to=Author, related_name='books')


class Review:
    user = models.ForeignKey(to=User, related_name='reviews')
    content = models.CharField(max_length=1000)
    target = models.ForeignKey()
