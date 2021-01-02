//
//  ViewController.swift
//  解鎖畫面練習＿20201227
//
//  Created by Vivi Lee on 2020/12/27.
//

import UIKit

class ViewController: UIViewController {
//    定義四張密碼圖
    @IBOutlet weak var passcodeImage1: UIImageView!
    @IBOutlet weak var passcodeImage2: UIImageView!
    @IBOutlet weak var passcodeImage3: UIImageView!
    @IBOutlet weak var passcodeImage4: UIImageView!
//    定義label
    @IBOutlet weak var typeAndResultLabel: UILabel!
//    定義密碼
    var corectpasscode = "0528"
    var typepasscode = ""
    
//設定密碼輸入的圖片動作
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
//    設定輸入密碼的結果反應
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
//    設定重新開始動作
    func restart(){
        typepasscode = ""
        clearNumber()
        passwordImage()
        typeAndResultLabel.text = "Enter your promise. "

    }
//    設定清除密碼動作
    func clearNumber(){
        passcodeImage1.image = UIImage(named: "favorite1")
        passcodeImage2.image = UIImage(named: "favorite1")
        passcodeImage3.image = UIImage(named: "favorite1")
        passcodeImage4.image = UIImage(named: "favorite1")
        typeAndResultLabel.text = "Enter your promise. "
       }
//輸入密碼function
    @IBAction func numberBtn(_ sender: UIButton) {
        keyInPassword(keyIn: String(sender.tag))
    }
//刪除密碼function
    @IBAction func deleteBtn(_ sender: UIButton) {
        if 1...3 ~= typepasscode.count {
            typepasscode.removeLast()
        }
        passwordImage()
    }
//重新輸入function
    @IBAction func reloadBtn(_ sender: UIButton) {
        restart()
    }
    
override func viewDidLoad() {
    super.viewDidLoad()
    passwordImage()
}

}
