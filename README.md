# cookiessssss
IOS应用和safari共享数据的demo

![image](http://cdn.hudongdong.com/content/uploadfile/201610/fd421476432824.png)

## 1、通过idfa等标识判断

idfa等唯一标识只有oc能获取，但是网页一般获取不到ios的idfa，uuid等硬件的唯一标识符（除非使用苹果配置文件，这个用户需要安装，无法做到无痕，而且使用起来比较麻烦，有兴趣的可以去看看）

## 2、通过多重可获取的信息综合判断

由于无法准确的获得idfa等信息，所以可以多记录几个网页和app都能获取的数据，比如网络模式、IP、时间、机型、位置等，通过多重判断来看是不是同一个人，但是这种方式是存在误差的，比如一个公司用的同一个网络同一个机型的两个人就会判断有错误。

## 3、通过cookies判断

之前是不可以的，因为ios应用是沙盒运行，app之间创建的webview之间的cookies都是沙盒状态的，但是ios9之后，终于增加了一个全新的类SFSafariViewController，这个相当于在app内部创建了一个safari浏览器，用的和safari浏览器共同的cookies，所以可以用SFSafariViewController来获取cookies

## 4、demo说明

该demo就是演示通过SFSafariViewController来在IOS未安装APP获取Safari浏览器数据。

原文地址：《[IOS未安装APP获取Safari浏览器数据](http://www.hudongdong.com/ios/373.html)》
