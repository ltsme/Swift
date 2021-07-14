//
//  ViewController.swift
//  Computer
//
//  Created by Biso on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfSize: UITextField!
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfBag: UITextField!
    @IBOutlet weak var tfColor: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }//viewDidLoad
    
    @IBAction func btnOK(_ sender: UIButton) {
        var name: String = "맥북프로"
        var size: Int = 16
        var weight: Double = 2.56
        var bag: Bool = false
        var color: Character = "S"

        tfName.text = name
        tfSize.text = String(size)
        tfWeight.text = String(weight)
        tfBag.text = String(bag)
        tfColor.text = String(color)
    }
    
    
    @IBAction func btnClear(_ sender: UIButton) {
        tfName.text = ""
        tfSize.text = ""
        tfWeight.text?.removeAll()
        tfBag.text?.removeAll()
        tfColor.text?.removeAll()
    }
    

}

