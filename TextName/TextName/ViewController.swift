//
//  ViewController.swift
//  TextName
//
//  Created by Biso on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfText: UILabel!
    @IBOutlet weak var etName: UITextField!
    @IBOutlet weak var tfMassage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfMassage.text = "환영 합니다!"
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClear(_ sender: UIButton) {
        tfText.text = "Welcome!"
        tfMassage.text = "화면 초기상태입니다."
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        
        
//        if etName.text?.count == 0 {
//            tfMassage.text = "텍스트를 입력하세요!"
//        }
        if etName.text?.isEmpty == true {
            tfMassage.text = "텍스트를 입력하세요!"
        }
        else {
            tfText.text?.append(etName.text!)
            tfMassage.text = "텍스트를 추가했습니다."
        }
       
    }
}

