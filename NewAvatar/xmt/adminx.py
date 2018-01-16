import xadmin

from .models import *
# Register your models here.

class Xmt_userAdmin(object):
    # 定义需要显示的大主题
    list_display = ['xmt_user_id','xmt_user_ip','xmt_user_old_icon', 'xmt_user_new_icon']

class Xmt_design_descAdmin(object):
    # 定义要显示的字段
    list_display = ['xmt_desc_id', 'xmt_desc_image']

class User_numberAdmin(object):
    list_display = ['u_num']


xadmin.site.register(Xmt_user, Xmt_userAdmin)
xadmin.site.register(Xmt_design_desc, Xmt_design_descAdmin)
xadmin.site.register(User_number, User_numberAdmin)
