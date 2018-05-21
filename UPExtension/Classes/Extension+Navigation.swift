//
//  Extension+Controller.swift
//  Solutio
//
//  Created by Allan Gonzales on 07/09/2017.
//  Copyright © 2017 Developer. All rights reserved.
//


//MARK: - UINavigationBar
public extension UINavigationBar {
    public  func setGradientBackground(colors: [UIColor]) {
        var updatedFrame = bounds
        updatedFrame.size.height += 20
        let gradientLayer = CAGradientLayer(frame: updatedFrame, colors: colors)
        setBackgroundImage(gradientLayer.createGradientImage(), for: UIBarMetrics.default)
    }
}

//MARK: - UINavigationController
public extension UINavigationController {
    public func setNavigationControllerGradientScheme(colors: [UIColor]) {
        self.navigationBar.setGradientBackground(colors: colors)
        self.navigationBar.tintColor = .white
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }
}
