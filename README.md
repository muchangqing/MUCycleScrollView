# MUCycleScrollView
⭐️⭐️⭐️iOS图片，文字轮播器⭐️⭐️⭐️ swift3.x实现

⭐️⭐️⭐️有许多不足之处，希望大家有问题及时反馈给我，邮箱📮：845891612@qq.com.我会及时更新，谢谢！！！
##功能:
1、自动轮播，无限轮图，文字和图片。

2、支持多种自定义样式设置。

3、支持横竖向滚动。

##实现原理:
1、基于UICollectionView, UICollectionViewFlowLayout实现布局。

2、基于Timer,实现自动滚动。

3、基于喵神的Kingfisher,实现网络图片下载。

##演示:
![](gif/2017-02-15 18_48_46.gif)
##用法:
####可Xib或者纯代码加载。

```
                let y = self.cycleView.frame.maxY + 100
                let roundCycleView: MUCycleScrollView = MUCycleScrollView(frame: CGRect(x: 0, y: y, width: self.view.bounds.size.width, height: 200))
                self.view.addSubview(roundCycleView)
                
                //设置数据源
                roundCycleView.imageArray = images
                //无限滚动
                roundCycleView.infiniteLoop = true
                //自动滚动
                roundCycleView.autoScroll = true
                //自动滚动时间
                roundCycleView.autoScrollTimeInterval = 4
                //是否显示title
                roundCycleView.showTitleLabel = false
                //是否显示分页控件
                roundCycleView.showPageControl = true;
                //滚动方向
                roundCycleView.scrollDirection = .vertical
                //图片填充样式
                roundCycleView.bannerImageContentMode = .scaleAspectFill
                //点击回调
                roundCycleView.selectItem = didSelectItem
                .......
```
####具体用法请参考MUCycleScrollView.xcodeproj
##使用Cocoapods导入
在Podfile文件中加入下面代码即可
```
pod 'MUCycleScrollView', :git => 'https://github.com/muchangqing/MUCycleScrollView.git'

```
也可以把项目download下来，然后把项目中的CycleScrollView文件及其内容拖拽到项目中即可
