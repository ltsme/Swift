//
//  ViewController.swift
//  Quiz04
//
//  Created by Biso on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {
    
    var subjects = ["국어","영어","수학","요약"]
    var scores: [Int] = []
    var now = 0

    @IBOutlet weak var lblSubject: UILabel!
    @IBOutlet weak var etScore: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clear()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: UIButton) {
//        let tot:Int
        switch now {
        case 0...1:
            appendScore()
        case 2:
            appendScore()
            let totNavg = calcAction(korean: scores[0], english: scores[1], math: scores[2])
            etScore.isHidden = true
            lblResult.text = makeText(tot: totNavg.0, avg: totNavg.1)
        default:
            clear()
        }
    }
    
    
    func appendScore() {
        let score:Int = Int(etScore.text!) ?? 0
        scores.append(score)
        now += 1
        lblSubject.text = "\(subjects[now])점수"
        etScore.text=""
    }
    
    func clear() {
        now = 0
        lblSubject.text = "\(subjects[now])점수"
        scores.removeAll()
        etScore.isHidden = false
        etScore.text=""
        lblResult.text=""
    }
    
    func makeText(tot: Int, avg: Double) -> String {
        var textM: String = "총점은 \(tot)\n평균은 \(String(format: "%.2f", avg))"
        for i in 0..<subjects.count-1 {
            textM = textM + "\n\(subjects[i])점수는 \(scores[i])으로 평균보다 \(Double(scores[i]) > avg ? "높습" : "낮습")니다."
        }
        return textM
    }
    
    func calcAction(korean:Int, english:Int, math:Int) -> (Int, Double)  {
        let tot: Int
        let avg: Double

        tot = korean+english+math
        avg = Double(tot)/3.0
        
        return (tot, avg)
    }
    
}

