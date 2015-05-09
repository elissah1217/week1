//
//  CreateAccountViewController2.swift
//  week1
//
//  Created by Hsin Yi Huang on 5/8/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class CreateAccountViewController2: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var termsView: UIView!
    
    
    @IBOutlet weak var passwordImageView1: UIImageView!
    
    @IBOutlet weak var passwordImageView2: UIImageView!
    
    @IBOutlet weak var passwordImageView3: UIImageView!
    
    @IBOutlet weak var passwordImageView4: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
         view.endEditing(true)
    }

    @IBAction func backButtonPressed(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    
    @IBAction func onEditChange(sender: AnyObject) {
        
        if(!firstNameField.text.isEmpty && !lastNameField.text.isEmpty && !emailField.text.isEmpty && !passwordField.text.isEmpty){
            createButton.enabled = true
        }
        else{
            createButton.enabled = false
        }
        
        
        //showing password strength
        
        //clear all strength view off the screen first
        passwordImageView1.alpha = 0
        passwordImageView2.alpha = 0
        passwordImageView3.alpha = 0
        passwordImageView4.alpha = 0
        if (passwordField.text.isEmpty){
            //do nothing
        }
        else if(countElements(passwordField.text)<=3){
            passwordImageView1.alpha = 1
        }
        else if(countElements(passwordField.text)<=6){
            passwordImageView2.alpha = 1
        }
        else if(countElements(passwordField.text)<=9){
            passwordImageView3.alpha = 1
        }
        else if(countElements(passwordField.text)>9){
            passwordImageView4.alpha = 1
        }
    }
    
    
    @IBAction func createButtonPressed(sender: AnyObject) {
        println("buttonpressed")
        view.endEditing(true)
        UIView.animateWithDuration(0.5, animations: {
            self.termsView.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
        })
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
