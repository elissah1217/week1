//
//  SignInRootViewController.swift
//  week1
//
//  Created by Hsin Yi Huang on 5/7/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class SignInRootViewController: UIViewController {
    
    var didSignOut:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        if(!didSignOut){
            performSegueWithIdentifier("signInSegue", sender: self)
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
