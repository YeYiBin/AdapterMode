//
//  BusinessCardView.swift
//  AdapterModel
//
//  Created by meitianhui2 on 2017/10/25.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class BusinessCardView: UIView {
    
    //
    //
    var name:String = ""{
        
        didSet{
            nameLable.text = name
        }
    }
    var lineColor:UIColor = UIColor.clear{
        
        didSet{
            lineView.backgroundColor = lineColor
        }
    }
    var phoneNumber:String = ""{
        didSet{
            phoneNumberLable.text = phoneNumber
        }
    }
    
    var nameLable:UILabel = UILabel()
    var lineView:UIView = UIView()
    var phoneNumberLable:UILabel = UILabel()
    
    /// 加载数据 实现了BusinessCardAdapterProtocol 协议的数据
    ///
    /// - Parameter data: 实现了BusinessCardAdapterProtocol 协议的数据
    func loadData(data:BusinessCardAdapterProtocol)  {
        self.name = data .name()!
        self.lineColor = data.lineColor()!
        self.phoneNumber = data.phoneNumber()!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setUp(){
        self.backgroundColor = UIColor.white
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 0.5
        self.layer.shadowOpacity =  0.5
        self.layer.shadowOffset = CGSize.init(width: 5, height: 5)
        self.layer.shadowRadius = 1.0
        
        self.nameLable = UILabel.init(frame: CGRect.init(x: 15, y: 10, width: 150, height: 25))
        self.nameLable.font = UIFont(name: "Avenir-Light", size: 20)
        self.addSubview(self.nameLable)
        
        self.lineView = UIView.init(frame: CGRect(x: 0, y: 45, width: 200, height: 5))
        self.addSubview(self.lineView)
        
        // Arial-BoldMT   AvenirNext-UltraLightItalic
        self.phoneNumberLable = UILabel.init(frame: CGRect(x: 41, y: 105, width: 150, height: 20))
        self.phoneNumberLable.textAlignment = .right
        self.phoneNumberLable.font = UIFont.init(name: "Arial-BoldMT", size: 16)
        self.addSubview(self.phoneNumberLable)
    }
    
}


