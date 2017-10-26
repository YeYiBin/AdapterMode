//
//  SpecialModelAdapter.swift
//  AdapterModel
//
//  Created by meitianhui2 on 2017/10/26.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class SpecialModelAdapter: BusinessCardAdapter {
    
    override func name() -> String? {
        let  model:SpecialModel = self.data as! SpecialModel
        return model.name
    }
    
    override func lineColor() -> UIColor? {
        let model:SpecialModel = self.data as! SpecialModel
        var color:UIColor = UIColor.black
        //
        switch model.colorString {
        case "red":color = UIColor.red
        case "green":color = UIColor.green
        default:
            color = UIColor.black
        }
        
        return color
    }
    
    override func phoneNumber() -> String? {
        let model:SpecialModel = self.data as! SpecialModel
        return model.phoneNumber
        
    }
    
    
}
