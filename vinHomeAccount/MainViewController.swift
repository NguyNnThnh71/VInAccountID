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
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Họ & tên"
        birthdayTxt.placeholder = "Ngày sinh"
        addressTxt.placeholder = "Địa chỉ"
        phoneTextField.placeholder = "Số điện thoại"
        emailTextField.placeholder = "Email"
        
        btnSave.setTitle("Lưu", for: .normal)
        btnSave.backgroundColor = UIColor(red: 0.00, green: 0.45, blue: 0.38, alpha: 1.00)
        

       
    }

    @IBAction func onPressMain(_ sender: Any) {
    }
}
