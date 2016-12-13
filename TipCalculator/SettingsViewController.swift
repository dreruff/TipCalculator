//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Greg Ruffin on 12/12/16.
//  Copyright © 2016 Greg Ruffin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var inputLabel: UITextField!
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSubmit(_ sender: AnyObject) {
        defaults.set(inputLabel.text, forKey: "myName")
        defaults.synchronize()
        
        inputLabel.text = ""
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
