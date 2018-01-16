from .wrappers import *

# 如果用户已经登录返回true
def user_is_login(request):
    return get_session(request, "uid") and get_session(request, "username")