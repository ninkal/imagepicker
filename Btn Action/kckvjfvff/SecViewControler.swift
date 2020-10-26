//
//  SecViewControler.swift
//  kckvjfvff
//
//  Created by NINKAL GUPTA on 01/04/20.
//  Copyright © 2020 NINKAL GUPTA. All rights reserved.
//

import UIKit

class SecViewControler: UIViewController {
    var searchType = ""
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn1: UIButton!
    
    override func viewDidLoad() {
   
        if searchType == "btn" {
            btn1.isHidden = false
            btn2.isHidden = true
        }
        else if searchType == "btn1111"{
            btn1.isHidden = true
            btn2.isHidden = false
        }
    }
}
    


