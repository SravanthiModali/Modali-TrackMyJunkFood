//
//  ReportViewController.swift
//  Modali-TrackMyJunkFood
//
//  Created by Modali,Naga Sravanthi on 3/7/18.
//  Copyright © 2018 Modali,Naga Sravanthi. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.myModel.loadData()
        reportTV.text = AppDelegate.myModel.combinedReport()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetBTN(_ sender: UIButton) {
      AppDelegate.myModel.reset()
    }
    
    @IBOutlet weak var reportTV: UITextView!
    
    @IBAction func unwindToPrevious(segue: UIStoryboardSegue){
        
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
