//
//  ViewController.swift
//  解鎖畫面練習＿20201227
//
//  Created by Vivi Lee on 2020/12/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passcodeImage1: UIImageView!
    @IBOutlet weak var passcodeImage2: UIImageView!
    @IBOutlet weak var passcodeImage3: UIImageView!
    @IBOutlet weak var passcodeImage4: UIImageView!
    
    @IBOutlet weak var typeAndResultLabel: UILabel!
    var corectpasscode = "0528"
    var typepasscode = ""
//    let typeImageName = ["favorite1", "favorite1", "favorite1", "favorite1"]
//
    @IBOutlet weak var typePasscodeImage: UIImageView!
    
    func passwordImage() {
        let passcodeCount = typepasscode.count
        
        switch passcodeCount{
        case 1:
            passcodeImage1.image = UIImage(named: "favorite")
            passcodeImage2.image = UIImage(named: "favorite1")
            passcodeImage3.image = UIImage(named: "favorite1")
            passcodeImage4.image = UIImage(named: "favorite1")
            
        case 2:
            passcodeImage1.image = UIImage(named: "favorite")
            passcodeImage2.image = UIImage(named: "favorite")
            passcodeImage3.image = UIImage(named: "favorite1")
            passcodeImage4.image = UIImage(named: "favorite1")
            
        case 3:
            passcodeImage1.image = UIImage(named: "favorite")
            passcodeImage2.image = UIImage(named: "favorite")
            passcodeImage3.image = UIImage(named: "favorite")
            passcodeImage4.image = UIImage(named: "favorite1")
          
        case 4:
            passcodeImage1.image = UIImage(named: "favorite")
            passcodeImage2.image = UIImage(named: "favorite")
            passcodeImage3.image = UIImage(named: "favorite")
            passcodeImage4.image = UIImage(named: "favorite")
            
        default:
            passcodeImage1.image = UIImage(named: "favorite1")
            passcodeImage2.image = UIImage(named: "favorite1")
            passcodeImage3.image = UIImage(named: "favorite1")
            passcodeImage4.image = UIImage(named: "favorite1")
        }
        
    }
    func keyInPassword(keyIn: String){
        if 0...3 ~= typepasscode.count{
            typepasscode += keyIn
        }
        
        if typepasscode.count == 4 {
            if typepasscode == corectpasscode{
                typeAndResultLabel.text = "Yes,I do.💕"
            }else{
                typeAndResultLabel.text = "You break my heart!💔"
            }
        }
       passwordImage()
    }
    func restart(){
        typepasscode = ""
        clearNumber()
        passwordImage()
        typeAndResultLabel.text = "Enter your promise. "

    }
    func clearNumber(){
        passcodeImage1.image = UIImage(named: "favorite1")
        passcodeImage2.image = UIImage(named: "favorite1")
        passcodeImage3.image = UIImage(named: "favorite1")
        passcodeImage4.image = UIImage(named: "favorite1")
        typeAndResultLabel.text = "Enter your promise. "
       }

    @IBAction func numberBtn(_ sender: UIButton) {
        keyInPassword(keyIn: String(sender.tag))
    }
    
    @IBAction func deleteBtn(_ sender: UIButton) {
        if 1...3 ~= typepasscode.count {
            typepasscode.removeLast()
        }
        passwordImage()
    }

    @IBAction func reloadBtn(_ sender: UIButton) {
        restart()
    }
    
override func viewDidLoad() {
    super.viewDidLoad()
    passwordImage()
}

}
