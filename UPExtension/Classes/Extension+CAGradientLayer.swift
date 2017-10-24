//
//  Extension+CAGradientLayer.swift
//  Pods
//
//  Created by Mark Angelo Noquera on 25/09/2017.
//
//

import UIKit

//MARK: - CAGradientLayer
public extension CAGradientLayer {
    public convenience init(frame: CGRect, colors: [UIColor]) {
        self.init()
        self.frame = frame
        self.colors = []
        for color in colors {
            self.colors?.append(color.cgColor)
        }
        startPoint = CGPoint(x: 0, y: 1)
        endPoint = CGPoint(x: 0, y: 1)
    }
    
    public func createGradientImage() -> UIImage? {
        
        var image: UIImage? = nil
        autoreleasepool{
            UIGraphicsBeginImageContext(bounds.size)
            if let context = UIGraphicsGetCurrentContext() {
                render(in: context)
                image = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()
            }
        
        }
        
        return image
    }
}
