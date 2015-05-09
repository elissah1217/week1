//
//  SignInViewController2.swift
//  week1
//
//  Created by Hsin Yi Huang on 5/8/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class SignInViewController2: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var troubleView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backButtonPressed(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    
    @IBAction func onEditChange(sender: AnyObject) {
        if(!emailField.text.isEmpty && !passwordField.text.isEmpty){
            signInButton.enabled = true
        }
        else{
            signInButton.enabled = false
        }
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func troubleButtonPressed(sender: AnyObject) {
        view.endEditing(true)
        UIView.animateWithDuration(0.5, animations: {
            self.troubleView.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
        })
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: {
            self.troubleView.frame = CGRect(x: 0, y: 568, width: 320, height: 568)
        })
    }

}
