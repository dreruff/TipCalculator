//
//  ViewController.swift
//  TipCalculator
//
//  Created by Greg Ruffin on 12/12/16.
//  Copyright © 2016 Greg Ruffin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let name = UserDefaults.standard.object(forKey: "myName") as? String {
            nameLabel.text = name
        }
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentage = [0.18, 0.20, 0.25]
        
        let bill = Double(billField.text!) ?? 0.0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        switch tipControl.selectedSegmentIndex {
            case 0:
                self.view.backgroundColor = UIColor.red
            case 1:
                self.view.backgroundColor = UIColor.yellow
            case 2:
                self.view.backgroundColor = UIColor.green
            default:
                self.view.backgroundColor = UIColor.white
        }
        
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
    }
    
    

}

