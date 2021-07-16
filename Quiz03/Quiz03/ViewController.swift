//
//  ViewController.swift
//  Quiz03
//
//  Created by Biso on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etNum: UITextField!
    @IBOutlet weak var tfNotice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        checkFirst()
    }
    
    @IBAction func editAction(_ sender: UITextField) {
        checkFirst()
    }
    
    func checkFirst() {
        let num1 = checkNil(str: etNum.text!)
        if num1 == 0 {
            tfNotice.text = "판별할 숫자를 입력해주세요!"
        }else {
            let returnString = checkNum(num1)
            tfNotice.text = returnString
        }
        /*
        var message: String
        let checkNumber = Int(etNum.text!) ?? 0
        if checkNumber % 2 == 0 {
            message = "짝수"
        }else {
            message = "홀수"
        }
        tfNotice.text = "입력하신 숫자는 \(message)입니다."
        */
        
        
        /*
        if etNum.text?.isEmpty == true {
            tfNotice.text = "판별할 숫자를 입력해주세요!"
        }else {
            guard let strNum1 = etNum.text else { return }
            let num1:Int = Int(strNum1)!
            checkNum(num1)
        }
        */
        
    }
    
    func checkNil(str: String!) -> Int {
        let check = str.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty{
            return 0
        }else {
            return Int(check)!
        }
    }
    
    func checkNum(_ num1 :Int) -> String {
        if num1%2 == 0 {
            return "짝수입니다."
        }else {
            return "홀수입니다."
        }
    }
    
}

