//
//  ViewController.swift
//  EmojiList
//
//  Created by Biso on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {
    
    var emojinum : Int = 0



    @IBOutlet weak var lblEmoji: UILabel!
    var emojiList = ["🥰", "😘", "🤣", "😇", "😌", "🥳"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblEmoji.text = "\(emojiList[0])"
        // Do any additional setup after loading the view.
    }

    @IBAction func btnNext(_ sender: UIButton) {
        if emojinum < 5 {
            lblEmoji.text = "\(emojiList[emojinum+1])"
            emojinum += 1
        } else {
            emojinum = 0
            lblEmoji.text = "\(emojiList[emojinum])"
        }
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        if emojinum > 0 {
            lblEmoji.text = "\(emojiList[emojinum-1])"
            emojinum -= 1
        } else {
            emojinum = 5
            lblEmoji.text = "\(emojiList[emojinum])"
        }
    }



    
}

