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
        
//        normalModelAdapterExample()
//        specialModelAdapterExample()
        
        commonUsedAdapterExample()
        
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
}






















































