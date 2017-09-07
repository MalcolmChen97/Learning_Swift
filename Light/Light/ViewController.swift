//
//  ViewController.swift
//  Light
//
//  Created by ChenZengzhan on 2017-09-06.
//  Copyright © 2017 MalcolmChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lighton =  true
    @IBOutlet weak var colorChange: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updatelight()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lighton = !lighton
        updatelight()
    }
    
    func updatelight(){
        if(lighton){
            view.backgroundColor = .white
            colorChange.setTitle("Off", for: .normal)
           
        }else{
            view.backgroundColor = .black
            colorChange.setTitle("On", for: .normal)
        }
    }
}

