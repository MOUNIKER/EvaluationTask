//
//  SignUpViewController.swift
//  EvaluationTask
//
//  Created by Siva Mouniker  on 19/05/23.
//



import UIKit
import SkyFloatingLabelTextField
var usernames: [String] = ["mou","pandu"]
var passwords: [String] = ["123","123"]

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: SkyFloatingLabelTextFieldWithIcon!
    @IBOutlet weak var emailTextField: SkyFloatingLabelTextFieldWithIcon!
    @IBOutlet weak var passwordTextField: SkyFloatingLabelTextFieldWithIcon!
    @IBOutlet weak var reenterPasswordTextField: SkyFloatingLabelTextFieldWithIcon!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        
        
        guard let name = nameTextField.text, !name.isEmpty else {
            showAlert(message: "Please enter your name")
            return
        }
        
        guard let email = emailTextField.text, !email.isEmpty else {
            showAlert(message: "Please enter your email")
            return
        }
        
        guard let password = passwordTextField.text, !password.isEmpty else {
            showAlert(message: "Please enter a password")
            return
        }
        
        guard let reenterPassword = reenterPasswordTextField.text, !reenterPassword.isEmpty else {
            showAlert(message: "Please re-enter the password")
            return
        }
        
        if (password == reenterPassword) {
            // Passwords match, proceed with sign up
            usernames.append(name)
            passwords.append(password)
            showAlert(message: "Sign up successful")
        } else {
            // Passwords don't match, show an error message
            showAlert(message: "Passwords do not match")
        }
        
        nameTextField.text = ""
        emailTextField.text = ""
        passwordTextField.text = ""
        reenterPasswordTextField.text = ""
        
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Status", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    
}

