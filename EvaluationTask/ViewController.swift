//
//  ViewController.swift
//  EvaluationTask
//
//  Created by Siva Mouniker  on 19/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func loginButtonTapped(_ sender: Any) {
       
        
        guard let username = usernameTextField.text, !username.isEmpty else {
                    showAlert(message: "Please enter a username")
                    return
                }
                
                guard let password = passwordTextField.text, !password.isEmpty else {
                    showAlert(message: "Please enter a password")
                    return
                }
        
        
        usernameTextField.text = ""
        passwordTextField.text = ""
        if let index = usernames.firstIndex(of: username) {
                    if passwords[index] == password {
                       // navigateToUserDetails(username: username, phone: phones[index])
                       let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SucessfulSignInViewController") as? SucessfulSignInViewController
                                //present(secondVC, animated: true)
                              self.navigationController?.pushViewController(secondVC!, animated: false)
                    } else {
                        showAlert(message: "Invalid username or password")
                    }
                } else {
                    showAlert(message: "Invalid username or password")
                }
        
     

        
        
    }
    
    
    @IBAction func createButtonTapped(_ sender: Any) {
        
        
        let signUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController
                //present(secondVC, animated: true)
                self.navigationController?.pushViewController(signUpVC!, animated: false)
        
    }
    
    
    
    @IBAction func ForgotButtonTapped(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as? ForgotPasswordViewController
                       //present(secondVC, animated: true)
                       self.navigationController?.pushViewController(forgotPassword!, animated: false)
        
    }
    
   
    
    func showAlert(message: String) {
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        
        
        }
    
    

    
    
    

    
    

}

