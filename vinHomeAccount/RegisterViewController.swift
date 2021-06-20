//
//  RegisterViewController.swift
//  vinHomeAccount
//
//  Created by Apple on 20/06/2021.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var NameUI: UITextField!
    @IBOutlet weak var phoneNumberUI: UITextField!
    @IBOutlet weak var BackButton: UIButton!
    @IBOutlet weak var RegisterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameUI.placeholder = " Họ và tên"
        phoneNumberUI.placeholder = "Số điện thoại "
        NameUI.keyboardType = .namePhonePad
        phoneNumberUI.keyboardType = .numberPad
        NameUI.borderStyle = .roundedRect
        phoneNumberUI.borderStyle = .roundedRect
        BackButton.backgroundColor = UIColor(red: 0.00, green: 0.45, blue: 0.38, alpha: 1.00)
        RegisterButton.backgroundColor = UIColor(red: 0.00, green: 0.45, blue: 0.38, alpha: 1.00)
    }
    @IBAction func RegisterPress(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginVC = storyboard.instantiateViewController(identifier: "LoginViewController") as LoginViewController
        
        LoginVC.modalPresentationStyle = .fullScreen
        
        
        self.present(LoginVC, animated: true, completion: nil)
    }
    @IBAction func BackPress(_ sender: Any) {
        self.present(LoginVC, animated: true, completion: nil)
    }
    
}
