//
//  SpecificsViewController.swift
//  MoneyTracker
//
//  Created by sushen satturu on 1/7/18.
//  Copyright © 2018 Sushen Satturu. All rights reserved.
//

import UIKit

class SpecificsViewController: UIViewController {
    
    // MARK: - user interface variables
    
    @IBOutlet var accountLables: [UILabel]!
    @IBOutlet var moneyLables: [UILabel]!
    
    
    
    @IBOutlet var progressBars: [UIView]!
    @IBOutlet weak var progressBarBackground: UIView!
    @IBOutlet var progressBarWidthArray: [NSLayoutConstraint]!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //set initial values of accounts
        accountLables[0].text = "CAH"
        accountLables[1].text = "USD"
        accountLables[2].text = "CSH"
        accountLables[3].text = "ACC"
        
        
        
        for item in 0...progressBars.count {
            progressBarWidthArray[item].constant = 0
            //setWidthOfBar(sectionNo: item, setWidth: 0)
        }
        
       
        
        
        //self.view.layoutIfNeeded()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func accountButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToChangeScreen", sender: self)
        
        
    }
    
    
    //MARK: - preparing for segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToChangeScreen") {
            //set up preperation here
            
            let changeScreenViewController = segue.destination //...
            
            
        }
    }
    
    
    
    
    // set width of the progress bar for a particular section
    func setWidthOfBar(sectionNo : Int, setWidth : Double) {
        
        //section numbers start from 1 to end
        progressBarWidthArray[sectionNo - 1].constant = CGFloat(setWidth)
        self.view.layoutIfNeeded()
        
    }
    
    func setMoneyLable(sectionNo : Int, amount : Int) {
        if(sectionNo >= 1 && sectionNo <= 4) {
        let moneyLable = moneyLables[sectionNo - 1]
        
        moneyLable.text = "$\(amount)"
            
        }
        
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
