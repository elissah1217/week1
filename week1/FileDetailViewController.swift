//
//  FileDetailViewController.swift
//  week1
//
//  Created by Hsin Yi Huang on 5/8/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class FileDetailViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var favoriteButton: UIButton!
  //  var didFavorite:Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuView.frame.origin.y = -214
        backgroundView.alpha = 0
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func favoriteButtonPressed(sender: AnyObject) {
       
        favoriteButton.selected = !favoriteButton.selected
        
        //println(favoriteButton.selected)
        
        //setting the value
        let defs = NSUserDefaults.standardUserDefaults();
        defs.setBool(favoriteButton.selected, forKey: "didFavorite");
        defs.synchronize();
        
        
       
    }
    
    
    @IBAction func invokeMenu(sender: AnyObject) {
        UIView.animateWithDuration(0.3, animations: {
            UIView.animateWithDuration(0.5, animations: {
                self.menuView.frame = CGRect(x: 0, y: 63, width: 320, height: 568)
            })
            self.backgroundView.alpha = 1
        })
    }
    
    @IBAction func dismissMenu(sender: AnyObject) {
        UIView.animateWithDuration(0.3, animations: {
            UIView.animateWithDuration(0.5, animations: {
                self.menuView.frame = CGRect(x: 0, y:-214 , width: 320, height: 568)
            })
            self.backgroundView.alpha = 0
        })
    }

    
    @IBAction func backButtonPressed(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
        
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
