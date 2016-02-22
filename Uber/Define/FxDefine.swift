//
//  FxDefine.swift
//  Uber
//
//  Created by MoHuilin on 16/2/20.
//  Copyright © 2016年 MoHuilin. All rights reserved.
//

import Foundation
import UIKit

//常量和OC中的宏一样
let LoadingTip = "加载中..."
let ScreenHeight = UIScreen.mainScreen().bounds.size.height
let ScreenWidth = UIScreen.mainScreen().bounds.size.width
let iOS7:Float = 7.0
let iOS8:Float = 8.0
let iOS9:Float = 9.0
let isRetain = UIScreen.mainScreen().scale >= 2.0

func FxLog(message :String,function:String = __FUNCTION__)
{
    #if DEBUG
        print("Log:\(message), function:\(function)")
    #else
    
    #endif
}

func isIphone5() ->Bool
{
    #if os(iOS)
        FxLog("iOS")
    #else
    #endif
    if ScreenHeight == 568.0{
        return true
    } else{
        return false
    }
}

func isIphone6() ->Bool
{
    #if os(iOS)
        FxLog("iOS")
    #else
    #endif
    if ScreenHeight == 667.0{
        return true
    } else{
        return false
    }
}

func isIphone6P() ->Bool
{
    #if os(iOS)
        FxLog("iOS")
    #else
    #endif
    if ScreenHeight == 736.0{
        return true
    } else{
        return false
    }
}

