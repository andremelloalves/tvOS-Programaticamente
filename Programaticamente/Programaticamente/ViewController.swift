//
//  ViewController.swift
//  Programaticamente
//
//  Created by André Mello Alves on 28/09/18.
//  Copyright © 2018 André Mello Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        setup()
    }

    func setup() {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 100, width: 240, height: 64)
        button.setTitle("A", for: .normal)
        view.addSubview(button)
        
        let button2 = CustomButton(frame: CGRect(x: 440, y: 100, width: 240, height: 64))
        button2.setTitle("B", for: .normal)
        button2.addTarget(self, action: #selector(acao), for: .primaryActionTriggered)
        view.addSubview(button2)
        
        let button3 = CustomButton(frame: CGRect(x: 780, y: 100, width: 240, height: 64))
        button3.setTitle("C", for: .normal)
        view.addSubview(button3)
    }
    
    @objc func acao() {
        print("Oi")
    }

}

