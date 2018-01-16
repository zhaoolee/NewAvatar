from django.test import TestCase
from .models import User_number

# Create your tests here.


for i in range(5):

    u = User_number()

    u.u_num = 0

    u.save()

