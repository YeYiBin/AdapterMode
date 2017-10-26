//
//  AdapterNormalModel.swift
//  AdapterModel
//
//  Created by meitianhui2 on 2017/10/26.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class AdapterNormalModel: NormalModel,BusinessCardAdapterProtocol {
    func name() -> String? {
        return self.name
    }
    
    func lineColor() -> UIColor? {
        return self.lineColor
    }
    
    func phoneNumber() -> String? {
        return self.phoneNumber
    }
    
}
