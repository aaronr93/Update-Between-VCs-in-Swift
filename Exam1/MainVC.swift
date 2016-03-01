//
//  MainVC.swift
//  Exam1
//
//  Created by Aaron Rosenberger on 2/16/16.
//  Copyright © 2016 Aaron Rosenberger. All rights reserved.
//

import UIKit

class MainVC: UIViewController, ChildDelegate {
    
    @IBOutlet weak var textLabel: UILabel!

    @IBAction func buttonPressed(sender: UIButton) {
        performSegueWithIdentifier("mySegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dest = segue.destinationViewController as! UpdateVC
        
        dest.delegate = self
    }
    
    func childDone(vc: UpdateVC) {
        if vc.shouldAppend {
            textLabel.text = textLabel.text! + vc.textToSend!
        } else {
            textLabel.text = vc.textToSend
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }

}
