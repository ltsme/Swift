//
//  ViewController.swift
//  Quiz3_2
//
//  Created by Biso on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var etNum1: UITextField!
    @IBOutlet weak var etNum2: UITextField!
    @IBOutlet weak var lblText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: UIButton) {
        numberCheck()
    }
    
    func numberCheck() {
        guard let strNum1 = etNum1.text else { return }
        guard let strNum2 = etNum2.text else { return }
        var num1: Int = Int(strNum1)!
        var num2: Int = Int(strNum2)!
        var saveNum: Int
        
        if num1==num2 {
            lblText.text = "같은 숫자를 입력하지 마세요."
        }else {
            if num1 > num2 {
                saveNum = num1
                num1 = num2
                num2 = saveNum
            }else {
                
            }
            saveNum = 0
            for i in num1...num2{
                saveNum += i
                lblText.text = "\(num1)에서 \(num2)까지 전부 합한 값은 \(saveNum)입니다."
                self.view.endEditing(true)
            }
        
        }
        
       
    }


}

