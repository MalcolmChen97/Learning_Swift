//
//  ViewController.swift
//  Apple Pie
//
//  Created by ChenZengzhan on 2017-09-19.
//  Copyright © 2017 MalcolmChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TreeImage: UIImageView!
    @IBOutlet weak var CorrectWordLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet var LetterButtons: [UIButton]!
    
    var mywords = ["xixi","haha","heihei"]
    let incorrectNumber = 3
    var total_win = 0{
        didSet{
            updateUI()
        }
    }
    var total_lose = 0{
        didSet{
            updateUI()
        }
    }
    var currentgame:game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newRound()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        sender.isEnabled=false
        let letterString=sender.title(for: .normal)!
        let letter=Character(letterString.lowercased())
        currentgame.playerGuess(char: letter)
        updateGameState()
    }
    
    func newRound(){
        if !mywords.isEmpty{
            let new = mywords.removeFirst()
            currentgame=game(word:new,remainingIncorrect:incorrectNumber,guessLetters:[])
            updateUI()
            enableButtons(true)
        }else{
            enableButtons(false)
        }
    }
    
    func enableButtons(_ haha:Bool){
        for eachbutton in LetterButtons{
            eachbutton.isEnabled=haha
        }
    }
    
    func updateGameState(){
        if currentgame.remainingIncorrect==0{
            total_lose+=1
            newRound()
        }else if currentgame.word==currentgame.resultWord{
            total_win+=1
            newRound()
        }else{
            updateUI()
        }
    
    
    
    }
    
    func updateUI(){
        var haha = [String]()
        for h in currentgame.resultWord.characters{
            haha.append(String(h))
        }
        
        CorrectWordLabel.text = haha.joined(separator: " ")
        ScoreLabel.text="win : \(total_win)  lose : \(total_lose)"
        TreeImage.image=UIImage(named: "tree\(currentgame.remainingIncorrect)")
    }

}

