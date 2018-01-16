from django.db import models


# 抽象模型基类

class AbstractModel(models.Model):

    # 数据创建时间
    create_time = models.DateTimeField(auto_now_add=True)

    # 数据更新时间
    update_time = models.DateTimeField(auto_now=True)

    # 数据是否删除
    real_delete = models.BooleanField(default=False)

    # 声明为抽象类
    class Meta:
        abstract = True

