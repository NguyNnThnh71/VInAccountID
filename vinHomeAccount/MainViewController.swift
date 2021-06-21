//
//  MainViewController.swift
//  vinHomeAccount
//
//  Created by Trang Huyền on 6/20/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTxt: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var addressTxt: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var BackButton: UIButton!

    var phone: String!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Họ & tên"
        birthdayTxt.placeholder = "Ngày sinh"
        addressTxt.placeholder = "Địa chỉ"
        phoneTextField.placeholder = "Số điện thoại"
        emailTextField.placeholder = "Email"
        
        nameTextField.text = name
        phoneTextField.text = phone
        birthdayTxt.text = "20/06/2020"
        addressTxt.text = "48 Tố Hữu"
        emailTextField.text = "abc@gmail.com"
        
        btnSave.setTitle("Lưu", for: .normal)
        btnSave.backgroundColor = UIColor(red: 0.00, green: 0.45, blue: 0.38, alpha: 1.00)
        btnSave.setTitleColor(.white, for: .normal)
        
        BackButton.setImage(UIImage(named: "left-arrow"), for: .normal)
        BackButton.setTitle("", for: .normal)
        
       
    }
    
    @IBAction func BackPress(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func onPressMain(_ sender: Any) {
    }
}
