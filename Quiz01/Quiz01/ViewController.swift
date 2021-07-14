//
//  ViewController.swift
//  Quiz01
//
//  Created by Biso on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMain: UILabel!
    var count:Int = 0
    var name:String = " 양서린"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: UIButton) {
        
        if count % 2 == 0 {
            tfMain.text?.append("\(name)")
        }else {
            tfMain.text = ("Welcome!")
        }
        count += 1
//        if  tfMain.text == "Welcome!" {
//            tfMain.text?.append(" 양서린")
//        }else {
//            tfMain.text = ("Welcome!")
//        }
    }
    
}

