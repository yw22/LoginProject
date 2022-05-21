//
//  ViewController.swift
//  LoginProject
//
//  Created by 김영욱 on 2022/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    let emailTextFieldView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
        
    }


    
    func makeUI() {
        emailTextFieldView.backgroundColor = .darkGray
        view.addSubview(emailTextFieldView)
        
        emailTextFieldView.translatesAutoresizingMaskIntoConstraints = false //
        
        // 왼쪽
        emailTextFieldView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        // 오른쪽
        emailTextFieldView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        // 위
        emailTextFieldView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        // 높이
        emailTextFieldView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}

