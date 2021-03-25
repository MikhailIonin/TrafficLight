//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ионин Михаил Викторович on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var trafficLights:[UIView]!
    
    @IBOutlet weak var startButton: UIButton!
    
    var light = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        trafficLights[0].alpha = 0.3
        trafficLights[1].alpha = 0.3
        trafficLights[2].alpha = 0.3
        
        startButton.layer.cornerRadius = 20
        
        
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        startButton.setTitle("Next", for: .normal)
        
        if light == 3 {
            light = 0
            trafficLights[2].alpha = 0.3
        } else if light >= 1 {
            trafficLights[light - 1].alpha = 0.3
        }
        
        trafficLights[light].alpha = 1
        light += 1
    }
    
    
        
}
    




