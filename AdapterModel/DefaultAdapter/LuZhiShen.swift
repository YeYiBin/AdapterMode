//
//  LuZhiShen.swift
//  AdapterModel
//
//  Created by meitianhui2 on 2017/10/26.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

import UIKit

class LuZhiShen: NSObject,MookRouteProtocol {
    
    func maigre() {
        
    }
    
    func nianJing() {
        
    }
    
    func daZuo() {
        
    }
    
    func zhuangZhong() {
        
    }
    
    func xiWu() {
        print("拳打镇关西;大闹五台山;大闹桃花村;火烧瓦官寺;倒拔垂杨柳")
    }
    
    func getName() -> String {
        return "鲁智深"
    }
}


protocol MookRouteProtocol {
    
    func maigre()
    func nianJing()
    func daZuo()
    func zhuangZhong()
    func xiWu()
    func getName() ->String
}
