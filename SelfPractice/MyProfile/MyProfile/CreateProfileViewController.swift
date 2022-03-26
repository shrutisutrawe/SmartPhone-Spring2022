//
//  CreateProfileViewController.swift
//  MyProfile
//
//  Created by Chandnani, Harsh on 2/21/22.
//

import UIKit

protocol sendNameAndAboutMeDelegate {
    func setNameAndAboutMe(fullName: String, aboutMe: String)
    func setWelcomeText(welcomeText : String)
}

class CreateProfileViewController: UIViewController {

    var fullName : String?
    var aboutMe : String?
    var sendNameAndAboutMeDelegate : sendNameAndAboutMeDelegate?
    
    @IBOutlet weak var txtFullName: UITextField!
    
    @IBOutlet weak var txtAboutMe: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button.backgroundColor = UIColor(red: 0.298, green: 0.4392, blue: 1, alpha: 1.0);
        button.layer.borderWidth = 1;
        button.layer.borderColor = UIColor.blue.cgColor;
        
        guard let fullName = fullName else{
            return
        }

        guard let aboutMe = aboutMe else {
            return
        }
        
        txtFullName.text = fullName
        txtAboutMe.text = aboutMe
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveProfile(_ sender: Any) {
        guard let name = txtFullName.text, !name.isEmpty else {
            lblMessage.text = "Please Enter Name"
            return
        }

        guard let about = txtAboutMe.text, !about.isEmpty else {
            lblMessage.text = "Please write about you"
            return
        }
        
        sendNameAndAboutMeDelegate?.setNameAndAboutMe(fullName: name, aboutMe: about)
        sendNameAndAboutMeDelegate?.setWelcomeText(welcomeText: "\(name) Your Profile")
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    


}
