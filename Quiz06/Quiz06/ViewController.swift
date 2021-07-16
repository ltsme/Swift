//
//  ViewController.swift
//  Quiz06
//
//  Created by Biso on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {
    
    var numImage: Int = 0
    var imageName = ["cat1.jpeg", "cat2.png", "cat3.png", "cat4.png", "cat5.png", "cat6.png", "cat7.png"]

    @IBOutlet weak var lblFileName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        changImg()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnNext(_ sender: UIButton) {
        numImage += 1
        if numImage > imageName.count - 1 {
            numImage = 0
        }
        changImg()
    }
    
    @IBAction func btnPrev(_ sender: UIButton) {
        numImage -= 1
        if numImage < 0 {
            numImage = imageName.count - 1
        }
        changImg()
    }
    
    func changImg() {
        lblFileName.text = imageName[numImage]
        imageView.image = UIImage(named: imageName[numImage])
    }
    
    
}

