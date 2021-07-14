//
//  ViewController.swift
//  Quiz02
//
//  Created by Biso on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var etNum1: UITextField!
    @IBOutlet weak var etNum2: UITextField!
    @IBOutlet weak var tfTest: UILabel!
    
    @IBOutlet weak var etAdd: UITextField!
    @IBOutlet weak var etMin: UITextField!
    @IBOutlet weak var etMul: UITextField!
    @IBOutlet weak var etDiv: UITextField!
    @IBOutlet weak var etDiv2: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfTest.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func calcAction(_ sender: UIButton) {
        
        
        if etNum1.text?.isEmpty == true || etNum2.text?.isEmpty == true {
            tfTest.text = "숫자를 확인하세요!"
        }else {
            let num1 = Int(etNum1.text!)!
            let num2 = Int(etNum2.text!)!
            
            etAdd.text = "\(num1 + num2)"
            etMin.text = "\(num1 - num2)"
            etMul.text = "\(num1 * num2)"
            etDiv.text = "\(num1 / num2)"
            etDiv2.text = "\(num1 % num2)"
            tfTest.text = "계산 되었습니다!"
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    
}

