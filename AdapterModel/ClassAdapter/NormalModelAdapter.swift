//
//  NormalModelAdapter.swift
//  AdapterModel
//
//  Created by meitianhui2 on 2017/10/26.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class NormalModelAdapter: BusinessCardAdapter {
    override func name() -> String? {
        let model:NormalModel = self.data as! NormalModel
        return model.name
    }
    
    override func lineColor() -> UIColor? {
        let model:NormalModel = self.data as! NormalModel
        return model.lineColor
    }
    
    override func phoneNumber() -> String? {
        let model:NormalModel = self.data as! NormalModel
        return model.phoneNumber
    }
}
