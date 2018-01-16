//
//  AnimationViewController.swift
//  GlynkProject
//
//  Created by Pro Retina on 16/01/18.
//  Copyright © 2018 Pro Retina. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    var views = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //var view = UIView(CGRect(x:0, y: 200, width: UIScreen.main.bounds.width, 0));
        
        let screenSize: CGRect = UIScreen.main.bounds
        views = UIView(frame: CGRect(x: 0, y:screenSize.height, width: screenSize.width, height: 300))
        self.view.addSubview(views)
        views.backgroundColor = UIColor.black
       
        
    }
    
    
    @IBAction func animateButtonTapped(_ sender: Any) {
        
        UIView.animate(withDuration: 0.5, animations: {
            self.views.frame.origin.y -= 300
        })
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
