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
    let BUSINESS_FRAME:CGRect = CGRect(x: 0, y: 0, width: 200, height: 130)
    //
    var name:String = ""
    var lineColor:UIColor = UIColor.clear
    var phoneNumber:String = ""
    
    var nameLable:UILabel = UILabel()
    var lineView:UIView = UIView()
    var phoneNumberLable:UILabel = UILabel()
    
    /// 加载数据 实现了BusinessCardAdapterProtocol 协议的数据
    ///
    /// - Parameter data: 实现了BusinessCardAdapterProtocol 协议的数据
    func loadData(data:BusinessCardAdapterProtocol)  {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setUp(){
        
    }
    
}


