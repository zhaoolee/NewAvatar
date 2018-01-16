# NewAvatar

为头像添加装饰
> 前几天元旦, 用Python为自家公众号做了一个"革面"的活动页面,活动的效果非常好,分享一下实现过程:

- 前端: BootStrap, Jquery, Jcrop
- 后端: Django, Pillow

## 第一步: 选择头像

> ![初始页面](http://upload-images.jianshu.io/upload_images/3203841-f2a5a864701fadf0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 这是一个简单的前端页面,为了追求效果,将装饰红色以外的部分,进行透明处理,这样透过背景的纹理,会显得自然,简洁


> ![选择,页面响应,出现下一步按钮](http://upload-images.jianshu.io/upload_images/3203841-ca62b6846c75238f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 简单的响应处理, 用户点击后, 边框变色,下一步按钮会延时浮现出来,引导用户点击"下一步"

# 第二步:上传头像, 并实时裁剪
> ![初始页面](http://upload-images.jianshu.io/upload_images/3203841-81ba935455b85960.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 这里圆形区为canvas实时预览,裁剪区使用了Jcrop插件(有些安卓机不太支持这个插件),用户点击"选择头像"后,会调用系统文件,上传图片 

> ![上传图片, 并裁剪](http://upload-images.jianshu.io/upload_images/3203841-c196650d172dce83.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 上传图片后, 图片会实时显示, 用户可以通过拖动8点框裁剪,裁剪效果会在上方实时显示
- 用户拖动8点框后,下方的"小汇出图"会延迟1秒钟显示出来(引导用户点击, 获取图片) 

# 第三步: 生成图片,长按保存

>![生成图片](http://upload-images.jianshu.io/upload_images/3203841-348caa6546b37b80.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 将页面所有元素隐藏,在后台将上一步的预览图片发送到后端,后端Django使用Pillow进行图像合成,将成品返回到前端页面,用户长按保存后,保存完成


> 这个是小程序的在线演示地址: http://www.3qv1oo.com/xmt/start_game/




## 使用说明:
- ### 关于环境
> requirements.txt为环境依赖文件列表
> pip install -r requirements.txt 即可恢复到本地环境
> 部署项目细则详见 https://www.jianshu.com/p/95828121f99b
