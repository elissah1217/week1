//
//  FavoriteViewController.swift
//  week1
//
//  Created by Hsin Yi Huang on 5/8/15.
//  Copyright (c) 2015 Hsin Yi Huang. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {
   
    @IBOutlet weak var favoriteImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defs = NSUserDefaults.standardUserDefaults();
        var didFavorite = defs.boolForKey("didFavorite");
        println("Favorite =\(didFavorite)");
        
        if(didFavorite){
            favoriteImageView.alpha = 1
        }
        else{
            favoriteImageView.alpha = 0
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
