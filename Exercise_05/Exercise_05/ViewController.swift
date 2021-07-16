//
//  ViewController.swift
//  Exercise_05
//
//  Created by Biso on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var InputNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: UIButton) {
        var numList: [Int] = []
        var tot:Int = 0
        let strNum:String = InputNumber.text!
    
        for i in 0..<strNum.count {
            numList.append(Int(String(strNum[strNum.index(strNum.startIndex, offsetBy: i)]))!)
            tot += numList[i]
        }
        lblResult.text = "\(tot)"
    }
    
}

