import hashlib
# 引入message通信
from django.contrib import messages
# 引入重定向模块
from django.shortcuts import redirect
# 引入反向解析的模块
from django.core.urlresolvers import reverse
#引入图形处理库
from PIL import Image


# 封装post
def post(request, key):
    return request.POST.get(key, '').strip()

def post_list(request, key):
    return request.POST.getlist(key, '')

# 封装get方法

def get(request, key):
    return request.GET.get(key, '').strip()

# 设置cookies
def set_cookie(response, key, value):
    response.set_cookie(key, value, max_age=60*60*24)

# 获取cookies
def get_cookie(request, key):
    return request.COOKIES.get(key, '')

# 删除cookies
def del_cookie(response, key):
    response.delete_cookie(key)


# 设置session
def set_session(request, key, value):
    request.session[key] = value


# 获取session
def get_session(request, key):
    return request.session.get(key, '')


# 删除session
def del_session(request, key):
    request.session.flush()

# 给用户密码加密
def password_encryption(password, salt="zhao"):
    sha = hashlib.sha256()
    new_password = "asdf&*^^" + password + salt

    sha.update(new_password.encode("utf-8"))

    return sha.hexdigest()

# 添加信息
def add_message(request, key, value):
    messages.add_message(request, messages.INFO, key + ":" + value)


# 获取信息,拼接成字典,并返回
def get_message(request):
    # 获取所有信息
    mess = messages.get_messages(request)
    # 构建一个字典类型
    info = dict()

    for message in mess:
        content = str(message).split(":")
        info[content[0]] = content[1]

    return info


# 判断用户是否登录

def check_user_login(request):
    return get_session(request, "username")


# 装饰器检测用户权限

def check_permission(view_func):
    # 判断用户是否登录
    def wrapper(request, *args, **kwargs):
        # 如果用户登录则执行视图函数
        if check_user_login(request):
            return view_func(request, *args, **kwargs)
        # 如果用户未登录,则跳转到视图页面
        else:
            return redirect(reverse('user:login'))

    return wrapper


# 获取用户ip
def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip


# 为图片加水印
def add_watermark(request, old_image_addr, desc_image_addr, new_image_addr):
    print("老照片:",old_image_addr, "装饰照片:", desc_image_addr, "新照片:",new_image_addr)
    # 创建底图
    target = Image.new('RGBA', (300, 300), (0, 0, 0, 0))
    # 打开头像
    nike_image = Image.open(old_image_addr)
    nike_image = nike_image.resize((300, 300))
    # 打开装饰
    hnu_image = Image.open(desc_image_addr)
    # 分离透明通道
    r, g, b, a = hnu_image.split()
    # 将头像贴到底图
    nike_image.convert("RGBA")
    target.paste(nike_image, (0, 0))

    # 将装饰贴到底图
    hnu_image.convert("RGBA")
    target.paste(hnu_image, (0, 0), mask=a)

    # 保存图片
    target.save(new_image_addr)

    return new_image_addr









