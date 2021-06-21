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
        NameUI.placeholder = "Họ và tên"
        phoneNumberUI.placeholder = "Số điện thoại "
        NameUI.keyboardType = .namePhonePad
        phoneNumberUI.keyboardType = .numberPad
        NameUI.borderStyle = .roundedRect
        phoneNumberUI.borderStyle = .roundedRect
//        BackButton.backgroundColor = UIColor(red: 0.00, green: 0.45, blue: 0.38, alpha: 1.00)
        RegisterButton.backgroundColor = UIColor(red: 0.00, green: 0.45, blue: 0.38, alpha: 1.00)
        RegisterButton.setTitle("Đăng kí", for: .normal)
        RegisterButton.setTitleColor(.white, for: .normal)
        BackButton.setImage(UIImage(named: "left-arrow"), for: .normal)
        BackButton.setTitle("", for: .normal)

    }
    @IBAction func RegisterPress(_ sender: Any) {
        let mainVC = MainViewController()

        guard let phoneText = phoneNumberUI.text, let nameText = NameUI.text else { return }

        mainVC.name = nameText
        mainVC.phone = phoneText
        mainVC.modalPresentationStyle = .fullScreen
       
        self.present(mainVC, animated: true, completion: nil)
    }
    @IBAction func BackPress(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
