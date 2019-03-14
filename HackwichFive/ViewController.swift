//
//  ViewController.swift
//  HackwichFive
//
//  Created by Kureha Pambid on 3/7/19.
//  Copyright © 2019 Kureha Pambid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    //setting the current view
    var currentValue: Int = 50
    var targetValue : Int = 0
    
    
    
    @IBOutlet var targetLabel: UILabel!
    
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is:\(slider.value) ")
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateTargetLabel()
    }
    
    func updateTargetLabel(){
        targetLabel.text = String(targetValue)
    }
    
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        let message = "The value is: \(currentValue) " + "\nThe target value is:\(targetValue)"
        //1. create alert view
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        //2.Button that user taps to dissmiss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //3. add the button to view
        alert.addAction(action)
        
        //4. Present alertview on the screen
        present(alert, animated: true, completion: nil)
        
        startNewRound()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         currentValue = lroundf(slider.value)
        //call start new
        startNewRound()
        let thumbnailImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        slider.setThumbImage(thumbnailImageNormal, for: .normal)
        
    }


}

