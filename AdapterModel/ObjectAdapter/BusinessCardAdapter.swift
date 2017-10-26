//
//  BusinessCardAdapter.swift
//  AdapterModel
//
//  Created by meitianhui2 on 2017/10/26.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class BusinessCardAdapter: NSObject,BusinessCardAdapterProtocol {
    weak var data:AnyObject?
    
    init(data:AnyObject?) {
        self.data = data
        super.init();
    }
    
    func name() -> String? {
        return nil;
    }
    
    func lineColor() -> UIColor? {
        return nil;
    }
    
    func phoneNumber() -> String? {
        return nil;
    }
}


protocol BusinessCardAdapterProtocol {
    
    func name() -> String?
    
    func lineColor() -> UIColor?
    
    func phoneNumber() -> String?
    
}
