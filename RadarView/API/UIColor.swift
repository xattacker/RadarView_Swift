//
//  UIColor.swift
//  UtilToolKit
//
//  Created by tao on 2016/7/19.
//  Copyright © 2016年 xattacker. All rights reserved.
//

import UIKit


public extension UIColor
{
    public func toRGBValue() -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        if let rgb = self.cgColor.components
        {
            let size = self.cgColor.numberOfComponents
            
            if size == 2
            {
                // white
                r = rgb[0]
                g = rgb[0]
                b = rgb[0]
                
                a = rgb[1]
            }
            else
            {
                r = rgb[0]
                g = rgb[1]
                b = rgb[2]
                
                a = rgb[3]
            }
        }
        
        return (r, g, b, a)
    }
    
    public var alpha: CGFloat
    {
        let rgb = self.toRGBValue()
        return rgb.alpha
    }
}
