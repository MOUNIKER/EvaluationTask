//
//  ForgotPasswordViewController.swift
//  EvaluationTask
//
//  Created by Siva Mouniker  on 19/05/23.
//

import UIKit
import SkyFloatingLabelTextField

class ForgotPasswordViewController: UIViewController {

    
    @IBOutlet weak var usernameTextField: SkyFloatingLabelTextFieldWithIcon!
    
    @IBOutlet weak var newPasswordTextField: SkyFloatingLabelTextFieldWithIcon!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func resetPasswordButtonTapped(_ sender: Any) {
        
        
                
        guard let username = usernameTextField.text, !username.isEmpty else {
                    showAlert(message: "Please enter a username")
                    return
                }
        
        guard let newPassword = newPasswordTextField.text, !newPassword.isEmpty else {
                    showAlert(message: "Please enter a new password")
                    return
                }
        
        
        if let index = usernames.firstIndex(of: username) {
                   // Update the password in the array or perform the necessary logic
                   passwords[index] = newPassword
                   
                   showAlert(message: "Password reset successful")
               } else {
                   showAlert(message: "Invalid username")
               }
        
        usernameTextField.text = ""
        newPasswordTextField.text = ""
        
    }
    
    func showAlert(message: String) {
            let alert = UIAlertController(title: "Status", message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    
    
    
    
}
