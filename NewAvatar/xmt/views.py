from django.shortcuts import render
from django.shortcuts import redirect
from django.http import JsonResponse
from django.core.urlresolvers import reverse
from utils import wrappers
from .models import *
import time
import re
from fangyuanxiaozhan.settings import BASE_DIR
import time
import os, base64



# Create your views here.

def start_game(request):
    # 创建用户id
    u_id = int(time.time())
    all_design_desc = Xmt_design_desc.objects.all()
    o_user_num = User_number.objects.get(id=1)

    o_user_num.u_num += 1

    xmt_u_num = o_user_num.u_num

    o_user_num.save()

    return render(request, "xmt/start_game.html",locals())


# 负责获取新的用户头像
def get_icon(request):
    print("--start--")
    u_id = wrappers.post(request, "u_id")
    desc_id = wrappers.post(request, "desc_id")
    # file = request.FILES.get("file")
    file = wrappers.post(request,"file")

    file = re.match(r"data:image/jpeg;base64,(.*)", file).group(1)
    print(file)
    # xmt_desc_image = wrappers.post(request,"xmt_desc_image")
    print(type(desc_id))
    print("用户选择的装饰id为",desc_id)
    # 获取装饰图片对象
    xmt_desc_image_obj = Xmt_design_desc.objects.get(xmt_desc_id = desc_id)
    # 获取装饰图片名称
    xmt_desc_image_name = xmt_desc_image_obj.xmt_desc_image

    print("装饰图片在数据库中的存储:",xmt_desc_image_name)



    # print(u_id)
    # print(type(file))
    # print(file.name)
    time.sleep(0.01)


    old_file_name = u_id+".png"
    '''
    /Users/lijianzhao/Documents/fangyuanxiaozhan/static/images/xmt/u_source_images
    
    re.match(r"/Users/lijianzhao/Documents/fangyuanxiaozhan(.*)","/Users/lijianzhao/Documents/fangyuanxiaozhan/static/images/xmt/u_source_images").group(1)
    
    '''
    old_file_name_path = BASE_DIR + "/static"+"/images"+"/xmt"+"/u_source_images/"+ old_file_name
    new_file_name_path = BASE_DIR + "/static"+"/images"+"/xmt"+"/u_target_images/"+ old_file_name

    desc_image_addr = BASE_DIR + "/static/" +str(xmt_desc_image_name)
    print("装饰图片的地址为:", desc_image_addr)

    # 保存2进制图片
    # with open(old_file_name_path, "wb") as f:
    #     # f.write(file.read())
    #
    #     f.write(file)
    #
    #

    # 保存base64图片
    print(file)
    print(type(file))

    imgdata = base64.b64decode(file)


    file = open(old_file_name_path, "wb")

    file.write(imgdata)

    file.close()

    print("finish")

    '''
    
    def add_watermark(request, old_image_addr, desc_image_addr, new_image_addr):
    '''

    wrappers.add_watermark(request, old_file_name_path, desc_image_addr, new_file_name_path)

    result_dic = dict()
    r_name = BASE_DIR+'(.*)'


    # new_image_addr = re.match(r"/Users/lijianzhao/Documents/fangyuanxiaozhan(.*)",new_file_name_path).group(1)
    new_image_addr = re.match(r"%s"%(r_name),new_file_name_path).group(1)

    result_dic["new_image_addr"] = new_image_addr

    return JsonResponse(result_dic)

# 负责处理第一页请求
def report_info(request):

    print("report_info--->")
    u_id = wrappers.post(request, "u_id")
    desc_id = wrappers.post(request, "desc_id")
    u_num = wrappers.post(request, "u_num")
    print("def-->report_info")
    print("u_id", u_id)
    print("desc_id", desc_id)
    print("u_num", u_num)
    print("report_info<--end")

    return render(request, "xmt/get_photo.html",locals())

