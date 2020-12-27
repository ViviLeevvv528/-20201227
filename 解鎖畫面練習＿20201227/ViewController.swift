//
//  ViewController.swift
//  解鎖畫面練習＿20201227
//
//  Created by Vivi Lee on 2020/12/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passcodeImage: UIImageView!
    var corectpasscode = "0528"
    var typerpasscode = ""
    let typeImageName = ["favorite", "favorite", "favorite", "favorite"]
    
    @IBOutlet weak var typePasscodeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func numberBtn(_ sender: UIButton) {
    }
    
}

