//
//  ViewController.swift
//  kckvjfvff
//
//  Created by NINKAL GUPTA on 01/04/20.
//  Copyright © 2020 NINKAL GUPTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn1111: UIButton!
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func btn111Action(_ sender: Any) {
   let VC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecViewControler") as!  SecViewControler
        VC.searchType = "btn"
      self.navigationController?.pushViewController(VC, animated: true)
    }
    @IBAction func btnAction(_ sender: Any) {
  let VC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecViewControler") as!  SecViewControler
        VC.searchType = "btn1111" 
      self.navigationController?.pushViewController(VC, animated: true)
    
    
    }



}

