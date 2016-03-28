//
//  ViewController.swift
//  myHunch
//
//  Created by Arsames Qajar on 3/25/16.
//  Copyright © 2016 Arsames Qajar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var num1 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
    var num2 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
    
    
    @IBOutlet var userInput: UITextField!
    @IBOutlet var postResp: UILabel!
    @IBOutlet var solveThis: UILabel!
    
    @IBOutlet var gameScore: UILabel!
    
    var count = 0
    
    @IBOutlet var timerLabel: UILabel!
    
    var gameTimer: NSTimer!

    
    var counter = 0
    
    
    
    
    
    
    @IBAction func getResp(sender: AnyObject) {
        
        if(userInput == "" && userInput.text == ""){
            return postResp.text = " NO DONT! "
        }
        
        
        
        
        
        var total : Int

    
        
        total = num1 * num2

        print(userInput)
        
        
        
        if(userInput != "" && userInput.text != ""){
            if(Int(userInput.text!)! == total) {
                postResp.text = "You Rock"
                num1 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
                num2 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
                total = num1 * num2
                print(total)
                
                count+=1
                print(count)
                
                gameScore.text = String(count)
                
                
                
                solveThis.text = "\(num1) * \(num2)"
                
                
                startTimer()
                
                
                
                
                
                
                
                
                return
            } else {
                postResp.text = "Dumbassss"
                
                if(count > 0){
                    startTimer()
                    count-=1
                    gameScore.text = String(count)
                } else {
                    return
                }
                
//                gameScore.text = String(count)
                
                num1 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
                num2 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
                total = num1 * num2
                solveThis.text = "\(num1) * \(num2)"
                
                
                
                
                startTimer()
                
                return
            }
            
        }
        else {
            postResp.text = "Blank :("
            print("blank")
            return
        }
        
        
        
    }
    
    
    func startTimer(){
        
        gameTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(ViewController.runTimedCode), userInfo: nil, repeats: true)
        counter=0
        
    }
    
    
    func runTimedCode() {
        counter = counter+1
        
        timerLabel.text = String(counter)
//        let a = counter+1
//        timerLabel.text = String(a)
        
        
        
        if (timerLabel.text == "10"){
    
        postResp.text = "You are Drumpf."
        num1 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
        num2 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
        
        solveThis.text = "\(num1) * \(num2)"

//        gameTimer.invalidate()
//        counter = 0
            
        timerLabel.text = String(counter)
        
            startTimer()
    
        } else {
            return
            
        }

    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
         num1 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
         num2 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
        
        
        solveThis.text = "\(num1) * \(num2)"
        
        
        startTimer()
        
//        gameTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(ViewController.runTimedCode), userInfo: nil, repeats: true)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//        postResp.text = " "
//        userInput.text = " "
//        solveThis.text = " "

//        let num1 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
//        let num2 = Int(arc4random_uniform(6)) + Int(arc4random_uniform(6))
//
//
//
//
//
//        let total = num1 * num2
//        print(total)
//        solveThis.text = "\(num1) * \(num2)"



//        print(Int(userInput.text!)!)


