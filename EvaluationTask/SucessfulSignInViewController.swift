//
//  SecondViewController.swift
//  EvaluationTask
//
//  Created by Siva Mouniker  on 19/05/23.
//



protocol SucessfulSignInViewControllerDelegate {
    func didLogout()
}
import UIKit

class SucessfulSignInViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    //weak var delegate: SucessfulSignInViewControllerDelegate?
        var username: String?
        var phone: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        if let username = username, let phone = phone {
                    nameLabel.text = "Name: \(username)"
                    emailLabel.text = "Email: \(username)@example.com"
                    //phoneLabel.text = "Phone: \(phone)"
                }
        
    }
    
    
}
