//
//  LoginViewController.swift
//  vinHomeAccount
//
//  Created by Duong Le on 20/06/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var phoneTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPressMain(_ sender: UIButton) {

        let mainVC = MainViewController()
        

        guard let phoneText = phoneTextField.text else { return }
        

        mainVC.phone = phoneText
        mainVC.modalPresentationStyle = .fullScreen
       
        self.present(mainVC, animated: true, completion: nil)
        
    }
    
    @IBAction func onPressRegister(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let registerVC = storyboard.instantiateViewController(identifier: "RegisterViewController") as RegisterViewController
        
    
        registerVC.modalPresentationStyle = .fullScreen
        
       
        self.present(registerVC, animated: true, completion: nil)
    }
    
    @IBAction func BackPress(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
