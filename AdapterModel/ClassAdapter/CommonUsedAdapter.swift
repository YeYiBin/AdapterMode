//
//  CommonUsedAdapter.swift
//  AdapterModel
//
//  Created by meitianhui2 on 2017/10/26.
//  Copyright © 2017年 DeLongYang. All rights reserved.
/*
     公用的适配器 万能的适配器  
 */

import UIKit

class CommonUsedAdapter: BusinessCardAdapter {
    override func name() -> String? {
        var name:String?
        if self.data == nil{
            
        }else{
            if self.data!.isMember(of: NormalModel.self){
                let normalModel = self.data! as! NormalModel
                name = normalModel.name
            }else if self.data!.isMember(of: SpecialModel.self){
                let specialModel = self.data! as! SpecialModel
                name = specialModel.name
            }else{
                name = nil
            }
        }
        
        return  name
    }
    
    override func lineColor() -> UIColor? {
        var color:UIColor?
        if self.data == nil{
            
        }else{
            if self.data!.isMember(of: NormalModel.self){
                let normalModel = self.data! as! NormalModel
                color = normalModel.lineColor
            }else if self.data!.isMember(of: SpecialModel.self){
                
                let specialModel = self.data! as! SpecialModel
                switch specialModel.colorString {
                case "red":color = UIColor.red
                case "green":color = UIColor.green
                default:
                    color = UIColor.black
                }
                
            }else{
                color = nil
            }
        }
        
        return  color
        
    }
    
    override func phoneNumber() -> String? {
        var phoneNumber:String?
        if self.data == nil{
            
        }else{
            if self.data!.isMember(of: NormalModel.self){
                let normalModel = self.data! as! NormalModel
                phoneNumber = normalModel.phoneNumber
            }else if self.data!.isMember(of: SpecialModel.self){
                let specialModel = self.data! as! SpecialModel
                phoneNumber = specialModel.phoneNumber
            }else{
                phoneNumber = nil
            }
        }
        
        return  phoneNumber
    }
    
    
    
}
