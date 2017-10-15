//
//  ViewController.swift
//  SVProgressApp
//
//  Created by 0xack13 on 10/15/17.
//  Copyright © 2017 0xack13. All rights reserved.
//

import UIKit
import SVProgressHUD


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SVProgressHUD.show(withStatus: "I'm waiting for sometime!")
        DispatchQueue.global(qos: .userInitiated).async {
            for _ in 0...1000000 {
                print("Hi")
            }
            DispatchQueue.main.async {
                SVProgressHUD.dismiss()
                print("I left the loop and the new thread as well!")
            }
        }
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

