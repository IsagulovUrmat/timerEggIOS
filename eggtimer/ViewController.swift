//
//  ViewController.swift
//  eggtimer
//
//  Created by Isagulov urmat on 19/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelEgg: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var soft: UIImageView!
    @IBOutlet weak var hard: UIImageView!
    @IBOutlet weak var medium: UIImageView!
    
    var counter: Int = 0
    var timer = Timer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelEgg.isHidden = true
        let softGesture = UITapGestureRecognizer(target: self, action: #selector(softClick))
        let mediumGesture = UITapGestureRecognizer(target: self, action: #selector(mediumClick))
        let hardGesture = UITapGestureRecognizer(target: self, action: #selector(hardClick))

        soft.addGestureRecognizer(softGesture)

        soft.isUserInteractionEnabled = true
        
        hard.addGestureRecognizer(hardGesture)
        
        hard.isUserInteractionEnabled = true
        
        medium.addGestureRecognizer(mediumGesture)
        
        medium.isUserInteractionEnabled = true
        
        
        
    }
    
    
    @objc func softClick(){
        labelEgg.isHidden = true
        slider.maximumValue = 10
        counter = Int(slider.maximumValue)
        slider.value = 10
        slider.minimumValue = 0
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(makeStepBack), userInfo: nil, repeats: true)
        }
    
    @objc func mediumClick(){
        labelEgg.isHidden = true
        slider.maximumValue = 15
        counter = Int(slider.maximumValue)
        slider.value = 15
        slider.minimumValue = 0
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(makeStepBack), userInfo: nil, repeats: true)
        }
        
    @objc func hardClick(){
        labelEgg.isHidden = true
        slider.maximumValue = 20
        counter = Int(slider.maximumValue)
        slider.value = 20
        slider.minimumValue = 0
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(makeStepBack), userInfo: nil, repeats: true)
        }
        
    
    @objc func makeStepBack(){
        counter -= 1
        slider.value = Float(counter)
        print(slider.value)
        if counter < 0{
            labelEgg.isHidden = false
            timer.invalidate()
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        
        counter = Int(sender.maximumValue)
        
    }
    
 
    

}

