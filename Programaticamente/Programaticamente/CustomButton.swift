//
//  CustomButton.swift
//  Programaticamente
//
//  Created by André Mello Alves on 01/10/18.
//  Copyright © 2018 André Mello Alves. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        self.backgroundColor = .gray
        self.layer.cornerRadius = 10
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if self.isFocused {
            UIView.animate(withDuration: 0.25) {
                self.backgroundColor = .black
                self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            }
        } else {
            UIView.animate(withDuration: 0.25) {
                self.backgroundColor = .gray
                self.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
        }
    }
    
    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        UIView.animate(withDuration: 0.25) {
            self.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
    }
    
    override func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        UIView.animate(withDuration: 0.25) {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
    }
    
    override func pressesCancelled(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        UIView.animate(withDuration: 0.25) {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
    }
    
}
