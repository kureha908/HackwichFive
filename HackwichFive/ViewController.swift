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
    var currentValue: Int = 0
    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is:\(slider.value) ")
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        let message = "The value is: \(currentValue) "
        //1. create alert view
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        //2.Button that user taps to dissmiss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        //3. add the button to view
        alert.addAction(action)
        
        //4. Present alertview on the screen
        present(alert, animated: true, completion: nil)
    
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

