//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by ChenZengzhan on 2017-07-14.
//  Copyright © 2017 MalcolmChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mybutton: UIButton!
    
    @IBOutlet weak var maintitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mybutton.setTitleColor(.red, for: .normal)
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        maintitle.text="this project rocks!"
    }

}

