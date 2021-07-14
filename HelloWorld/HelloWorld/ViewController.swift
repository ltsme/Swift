//
//  ViewController.swift
//  HelloWorld
//
//  Created by Biso on 2021/07/14.
//

import UIKit
//                class 상속
class ViewController: UIViewController {
    //@Interface Builder outlet
    //weak(레이아웃 내려가면 메모리에서 삭제) <-> strong(종료해야 메모리에서 삭제)
    @IBOutlet weak var lblHello: UILabel!
    
    override func viewDidLoad() {
        //on creat와 같음
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblHello.text = "Hello World!"
    }


}

