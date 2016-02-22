//
//  FxGlobal.swift
//  Uber
//
//  Created by MoHuilin on 16/2/20.
//  Copyright © 2016年 MoHuilin. All rights reserved.
//

import Foundation
import UIKit

let version = UIDevice.currentDevice().systemVersion as NSString

func isSystemiOS8() ->Bool
{
//    NSProcessInfo
    if version.floatValue - iOS8 < 1.0{
        return true
    }
    return false
}

func isSystemiOS9() ->Bool
{
    if version.floatValue - iOS9 < 1.0{
        return true
    }
    return false
}

func isSystemiOS7() ->Bool
{
    if version.floatValue - iOS7 < 1.0{
        return true
    }
    
    return false
}
