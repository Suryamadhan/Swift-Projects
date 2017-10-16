//
//  ViewController.swift
//  HelloSwift
//
//  Created by Surya  Madhan on 10/15/17.
//  Copyright © 2017 SM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloButton: UIButton!
    @IBAction func showAlert(_ sender: Any){
        var alert = UIAlertController(title: "Hello!", message: "Hello world!", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        self.helloButton.setTitle("Test!", for: UIControlState.normal)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

