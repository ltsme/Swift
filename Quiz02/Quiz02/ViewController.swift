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
        tfTest.text = "숫자만 입력하세요!"
        readOnly()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcAction(_ sender: UIButton) {
        // Optional 제거
        guard let strNum1 = etNum1.text else { return }
        guard let strNum2 = etNum2.text else { return }
        
        if strNum1.isEmpty == true {
            tfTest.text = "첫 번째 숫자를 입력하세요!"
            etNum1.becomeFirstResponder() //Forcus 이동
        }else if strNum2.isEmpty == true {
            tfTest.text = "두 번째 숫자를 입력하세요!"
            etNum2.becomeFirstResponder()
        }else {
            let num1 = Int(strNum1)!
            let num2 = Int(strNum2)!
            calculation(num1, num2)

        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // 계산 함수 under bar가 있으면 func를 사용할 때 함수 타입 명이 보이지 않음
    func calculation(_ num1: Int,_ num2: Int) {
        etAdd.text = "\(num1 + num2)"
        etMin.text = "\(num1 - num2)"
        etMul.text = "\(num1 * num2)"
        if num2 == 0 {
            etDiv.text = "계산불가"
            etDiv2.text = "계산불가"
        }else {
            etDiv.text = "\(num1 / num2)"
            etDiv2.text = "\(num1 % num2)"
        }
        tfTest.text = "계산이 완료 되었습니다!"
        self.view.endEditing(true)
    }
    
    // 계산 결과값 read only로 처리
    func readOnly() {
        etAdd.isUserInteractionEnabled = false // ReadOnly
        etMin.isUserInteractionEnabled = false
        etMul.isUserInteractionEnabled = false
        etDiv.isUserInteractionEnabled = false
        etDiv2.isUserInteractionEnabled = false
    }
}

