//
//  UpdateVC.swift
//  Exam1
//
//  Created by Aaron Rosenberger on 2/16/16.
//  Copyright © 2016 Aaron Rosenberger. All rights reserved.
//

import UIKit

protocol ChildDelegate {
    func childDone(vc: UpdateVC)
}

class UpdateVC: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    var delegate: ChildDelegate!
    var textToSend: String?
    var shouldAppend: Bool = false

    @IBAction func appendPressed(sender: UIButton) {
        textToSend = textField.text
        shouldAppend = true
        delegate.childDone(self)
    }
    
    @IBAction func replacePressed(sender: UIButton) {
        textToSend = textField.text
        shouldAppend = false
        delegate.childDone(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
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
