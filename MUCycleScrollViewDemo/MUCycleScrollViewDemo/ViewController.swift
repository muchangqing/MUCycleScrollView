//
//  ViewController.swift
//  MUCycleScrollViewDemo
//
//  Created by qcm on 17/2/16.
//  Copyright © 2017年 ChengziVR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cycleView: MUCycleScrollView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        demo1()
        demo2()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func didSelectItem(index: Int) -> Void
    {
        print("index\(index)")
    }
    
    func demo2()
    {
        //情景二： 采用本地图片
        var images: [UIImage] = []
        
        for i in 0 ..< 10 {
            let named: String = "00\(i)"
            let filePath = Bundle.main.path(forResource: named, ofType: ".jpg")
            let image = UIImage.init(contentsOfFile: filePath!)
            if let tempImage = image {
                images.append(tempImage)
            }
        }
        
        let y = self.cycleView.frame.maxY + 100;
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
    }
    
    func demo1()
    {
        // 情景一：采用网络图片实现
        let urls: [String] = [
            "http://c.hiphotos.baidu.com/image/pic/item/359b033b5bb5c9ea9f59ff37d139b6003bf3b3b8.jpg",
            "http://pic17.nipic.com/20111122/6759425_152002413138_2.jpg",
            "http://pic41.nipic.com/20140520/18505720_144032556135_2.jpg",
            "http://img1.3lian.com/2015/a1/113/d/10.jpg",
            "http://img.taopic.com/uploads/allimg/140826/267848-140R60T34860.jpg",
            "http://img.taopic.com/uploads/allimg/130331/240460-13033106243430.jpg"
        ];
        
        cycleView.imageURLArray = urls
        cycleView.titleArray = ["第一张图", "第二张图", "第三张图", "第四张图", "第五张图", "第六张图"]
        cycleView.selectItem = didSelectItem
        cycleView.autoScroll = true
        cycleView.autoScrollTimeInterval = 3
        
        cycleView.showTitleLabel = true
        cycleView.titleTextColor = .red
        cycleView.titleTextFont = UIFont.systemFont(ofSize: 20)
        cycleView.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        cycleView.titleTextAligment = .center
        cycleView.titleBackgroundColor = .cyan
        cycleView.titleLabelHeight = 40
        
        cycleView.showPageControl = true
        cycleView.pageControlAligment = .right
        cycleView.curPageDotColor = .red
        cycleView.pageDotColor = .white
        cycleView.pageControlEdgeInsets = UIEdgeInsetsMake(5, 0, 0, 20)
        
        cycleView.scrollDirection = .horizontal
    }
    
}

