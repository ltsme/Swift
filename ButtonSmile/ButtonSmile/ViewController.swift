//
//  ViewController.swift
//  ButtonSmile
//
//  Created by Biso on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfSmile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSmile(_ sender: UIButton) {
        tfSmile.text?.append("""
            🥰
        """)
    }
    
}

