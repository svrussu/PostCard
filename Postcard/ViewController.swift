//
//  ViewController.swift
//  Postcard
//
//  Created by Sergey Russu on 10/29/14.
//  Copyright (c) 2014 Sergey Russu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var messageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //here is a little comment to test commits
        messageLabel.text = nameTextField.text + " " + messageTextField.text;
        messageLabel.hidden = false;
        messageTextField.resignFirstResponder();
        nameTextField.resignFirstResponder();
        messageButton.setTitle("Message Sent", forState: UIControlState.Normal);
        //messageButton.setTitle: "Mail Sent", forState: UIControlState.Normal)
    }

}

