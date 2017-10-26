//
//  AdapterSpecialModel.swift
//  AdapterModel
//
//  Created by meitianhui2 on 2017/10/26.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class AdapterSpecialModel: SpecialModel,BusinessCardAdapterProtocol {
    
    func name() -> String? {
        return self.name
    }
    
    func lineColor() -> UIColor? {
       
        var color:UIColor = UIColor.black
        //
        switch self.colorString {
        case "red":color = UIColor.red
        case "green":color = UIColor.green
        default:
            color = UIColor.black
        }
        
        return color
    }

    func phoneNumber() -> String? {
        return self.phoneNumber
    }
}

