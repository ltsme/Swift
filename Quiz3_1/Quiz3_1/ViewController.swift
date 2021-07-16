//
//  ViewController.swift
//  Quiz3_1
//
//  Created by Biso on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNum1: UITextField!
    @IBOutlet weak var lblNum2: UITextField!
    @IBOutlet weak var lblResult: UITextField!
    
    @IBOutlet weak var lblNotice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNotice.text = ""
    }

    @IBAction func btnAction(_ sender: UIButton) {
        let num1 = Int(lblNum1.text!) ?? 1
        let num2 = Int(lblNum2.text!) ?? 1
        if num1 == 1 {
            lblNum1.becomeFirstResponder()
            lblNotice.text = "빈칸이 있습니다."
        }else if num2 == 1 {
            lblNum2.becomeFirstResponder()
            lblNotice.text = "빈칸이 있습니다."
        }else {
            if checkEven(number: num1),checkEven(number: num2) == true {
                lblResult.text = String(num1+num2)
                lblNotice.text = "계산이 완료되었습니다."
            }else {
                lblNotice.text = "홀수는 계산할 수 없습니다."
            }
        }
    }

    func checkEven(number: Int) -> Bool {
        if number % 2 == 0 {
            return true
        }else {
            return false
        }
    }
}

