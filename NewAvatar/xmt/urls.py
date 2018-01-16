from django.conf.urls import url
from . import views


urlpatterns = [

    url(r'^start_game/$', views.start_game, name="start_game"),
    url(r'^get_icon/$', views.get_icon, name="get_icon"),
    url(r'^report_info/$', views.report_info, name="report_info"),
    # url(r'^xmt/get_photo.html/$', views.report_info, name="report_info"),

]