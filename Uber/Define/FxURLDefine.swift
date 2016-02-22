//
//  FxURLDefine.swift
//  Uber
//
//  Created by MoHuilin on 16/2/20.
//  Copyright © 2016年 MoHuilin. All rights reserved.
//

import Foundation

func serverAddress() ->String
{
    var address = "http:127.0.0.1"
    #if AppStore
        address = "https:www.uber.com"
    #else
    #endif
    
    return address
}