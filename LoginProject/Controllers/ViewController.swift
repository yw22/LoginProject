//
//  ViewController.swift
//  LoginProject
//
//  Created by 김영욱 on 2022/05/21.
//

import UIKit

final class ViewController: UIViewController {
    
    
    private let loginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    
    // MARK: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAddTarget()
    }
    
    func setupAddTarget() {
        loginView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        loginView.passwordResetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
        loginView.passwordSecureButton.addTarget(self, action: #selector(passwordSecureModeSetting), for: .touchUpInside)
    }

    @objc func loginButtonTapped() {
        print("로그인 버튼이 눌렀습니다.")
    }
    
    @objc func resetButtonTapped() {
//        print("리셋버튼이 눌렸습니다")
        
        let alert = UIAlertController(title: "비밀번호 바꾸기", message: "비밀번호를 바꾸시겠습니까?", preferredStyle: .alert)
        
        let success = UIAlertAction(title: "확인", style: .default) { action in
            print("확인버튼이 눌렸습니다.")
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel) { cancel in
            print("취소버튼이 눌렸습니다.")
        }
        
        alert.addAction(success)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @objc func passwordSecureModeSetting() {
        loginView.passwordTextField.isSecureTextEntry.toggle()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

