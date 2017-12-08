//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Nicholas Szeto on 12/7/17.
//  Copyright © 2017 Nicholas Szeto. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        SegmentedControllerForDefaultTip.selectedSegmentIndex = defaults.integer(forKey: "DefaultTipValue")
        
//        SegmentedControllerNumberOfPeopleToSplit.selectedSegmentIndex = defaults.integer(forKey: "DefaultNumberOfPeopleToSplit")
        
    }
    
    @IBOutlet weak var SegmentedControllerForDefaultTip: UISegmentedControl!
    
//    @IBOutlet weak var SegmentedControllerNumberOfPeopleToSplit: UISegmentedControl!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTipSegmentedControllerValueChange(_ sender: Any) {
        
        let defaults = UserDefaults.standard
    defaults.set(SegmentedControllerForDefaultTip.selectedSegmentIndex, forKey:"DefaultTipValue" )
        
        defaults.synchronize()
        
    }
    
//    @IBAction func onSplitSegmentControllerValueChange(_ sender: Any) {
//        let defaults = UserDefaults.standard
//    defaults.set(SegmentedControllerNumberOfPeopleToSplit.selectedSegmentIndex, forKey: "DefaultNumberOfPeopleToSplit")
//
//        defaults.synchronize()
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
