//
//  ViewController.swift
//  AdapterModel
//
//  Created by meitianhui2 on 2017/10/25.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 对象适配器模式
//        normalModelAdapterExample()
//        specialModelAdapterExample()
//        commonUsedAdapterExample()
        
        //  下面介绍
        classAdapterExample()
//        classAdapterExampleTwo()
        
        // 默认适配器模式
        defaultAdapter()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func normalModelAdapterExample(){
        
        let data:NormalModel = NormalModel()
        data.name = "DeLongYang"
        data.lineColor = UIColor.red
        data.phoneNumber = "139-1447-8563"
        
        let adapter:BusinessCardAdapter = NormalModelAdapter(data: data)
        let cardView:BusinessCardView = BusinessCardView(frame:BUSINESS_FRAME)
        cardView.center = self.view.center
        cardView.loadData(data: adapter)
        self.view.addSubview(cardView)
        
    }
    
    private func specialModelAdapterExample(){
        
        let data:SpecialModel = SpecialModel()
        data.name = "ShenZhen"
        data.colorString = "green"
        data.phoneNumber = "152-8456-8989"
        
        let adapter:BusinessCardAdapter = SpecialModelAdapter(data: data)
        let cardView:BusinessCardView = BusinessCardView(frame:BUSINESS_FRAME)
        cardView.center = self.view.center
        cardView.loadData(data: adapter)
        self.view.addSubview(cardView)
        
    }
    
    // commomUsedAdapter
    private func commonUsedAdapterExample(){
        
        let data1:NormalModel = NormalModel()
        data1.name = "DeLongYang"
        data1.lineColor = UIColor.red
        data1.phoneNumber = "139-1447-8563"
        
        let data2:SpecialModel = SpecialModel()
        data2.name = "ShenZhen"
        data2.colorString = "green"
        data2.phoneNumber = "152-8456-8989"
        
        let adapter:BusinessCardAdapter = CommonUsedAdapter(data: data1)
        let cardView:BusinessCardView = BusinessCardView(frame:BUSINESS_FRAME)
        cardView.center = self.view.center
        cardView.loadData(data: adapter)
        self.view.addSubview(cardView)
        
    }
    
    //  上面三种 都属于 对象适配器
    
    // 下面 展示类适配器类型
    private func classAdapterExample(){
        
        let data1:AdapterNormalModel = AdapterNormalModel()
        data1.name = "DeLongYang"
        data1.lineColor = UIColor.red
        data1.phoneNumber = "139-1447-8563"
        
        let cardView:BusinessCardView = BusinessCardView(frame:BUSINESS_FRAME)
        cardView.center = self.view.center
        cardView.loadData(data: data1)
        self.view.addSubview(cardView)
    }
    
    private func classAdapterExampleTwo()  {
        
        let data1:AdapterSpecialModel = AdapterSpecialModel()
        data1.name = "DeLongYang"
        data1.colorString = "green"
        data1.phoneNumber = "139-1447-8563"
        
        let cardView:BusinessCardView = BusinessCardView(frame:BUSINESS_FRAME)
        cardView.center = self.view.center
        cardView.loadData(data: data1)
        self.view.addSubview(cardView)
    }
    
    // 下面 展示 默认的适配器模式
    private func defaultAdapter(){
        let mook:TrueLuZhiShen = TrueLuZhiShen()
        let name = mook.getName()
        print(name)
        mook.xiWu()
    }
    
    
}






















































