//
//  ViewController.swift
//  ButtonName
//
//  Created by Biso on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMain: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: UIButton) {
        tfMain.text?.append(" 양서린")
       
    }
    
}

