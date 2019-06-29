//
//  LoginVC.swift
//  InstagramClone
//
//  Created by anna.sibirtseva on 29/06/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    let emailTextField: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Email"
        textField.backgroundColor = UIColor(white: 0, alpha: 0.03)
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.backgroundColor = UIColor(white: 0, alpha: 0.03)
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(emailTextField)
        emailTextField.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 40, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 40)

    }

}
