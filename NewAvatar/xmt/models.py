from django.db import models
from db.abstract_model import AbstractModel

# Create your models here.

# 存储新媒体活动用户信息
class Xmt_user(AbstractModel):
    # 用户id
    xmt_user_id = models.CharField(max_length=50, default="新媒体用户id",verbose_name="新媒体用户ID")
    # 用户IP
    xmt_user_ip = models.CharField(max_length=30, default="127.0.0.1", verbose_name="用户IP")
    # 用户旧头像地址
    xmt_user_old_icon = models.ImageField(max_length=200, upload_to="xmt/user_old_icon",default="空", verbose_name="旧的用户头像")
    # 用户新头像地址
    xmt_user_new_icon = models.ImageField(max_length=200, default="xmt/user_new_icon", verbose_name="新的用户头像")

    class Meta:
        verbose_name = "用户id和头像"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.xmt_user_ip

# 存储装饰图片的信息
class Xmt_design_desc(AbstractModel):
    # 装饰id
    xmt_desc_id = models.CharField(max_length=10, default="1", verbose_name="装饰物品的id")

    # 图片资源
    xmt_desc_image = models.ImageField(upload_to="xmt/desc_image", default="123", verbose_name="装饰图片")

    class Meta:
        verbose_name = "装饰图片"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.xmt_desc_id


# 存储访问量

class User_number(AbstractModel):

    u_num = models.IntegerField()


    class Meta:
        verbose_name = "用户访问量"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.u_num