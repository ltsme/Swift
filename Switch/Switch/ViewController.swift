//
//  ViewController.swift
//  Switch
//
//  Created by Biso on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblKorean: UITextField!
    @IBOutlet weak var lblMath: UITextField!
    @IBOutlet weak var lblEnglish: UITextField!
    
    @IBOutlet weak var lblText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.text=""
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalc(_ sender: Any) {
        let koreanNum:Int = Int(lblKorean.text!) ?? 0
        let mathNum:Int = Int(lblMath.text!) ?? 0
        let englishNum:Int = Int(lblEnglish.text!) ?? 0
        
        if numCheck(koreanNum) == false || numCheck(mathNum) == false || numCheck(englishNum) == false  {
            lblText.text = "점수는 0~100 입니다."
        }else {
            let avg = Double(koreanNum+mathNum+englishNum)/3.0
            displayText(avg)
        }
    }
    
    func numCheck(_ num:Int) -> Bool {
        return num > 100 ? false :
        num < 0 ? false : true
    }
    func displayText(_ avg:Double) {
        var grade: String
        
        grade = avg >= 90 ? "수" :
            avg >= 80 ? "우" :
            avg >= 70 ? "미" :
            avg >= 60 ? "양" : "가"
        lblText.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 \(grade) 입니다."
    }
}

