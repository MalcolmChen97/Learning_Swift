//
//  ViewController.swift
//  CommonInputControls
//
//  Created by ChenZengzhan on 2017-09-13.
//  Copyright © 2017 MalcolmChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var mySwitch: UISwitch!
   
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myButton.addTarget(self, action: #selector(buttonTapped(_:)),
            for: .touchUpInside)
        
    
    }

    @IBAction func touch(_ sender: UITapGestureRecognizer) {
        print(sender.location(in: view))
    }
    @IBAction func buttonTapped(_ sender: Any) {
        print("button was pressed")
        if mySwitch.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
        
        print("The slider is set to \(mySlider.value)")
        
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("on")
        }else{
            print("off")
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text1=sender.text{
            print(text1)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

