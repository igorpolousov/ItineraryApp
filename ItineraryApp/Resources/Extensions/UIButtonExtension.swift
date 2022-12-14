//
//  UIButtonExtension.swift
//  ItineraryApp
//
//  Created by Igor Polousov on 03.10.2022.
//

import UIKit

extension UIButton {
    func floatingActionButtonDesign() {
        self.backgroundColor = Theme.tintColor
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
    }
}
