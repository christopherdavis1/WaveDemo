//
//  ViewController.swift
//  flowing1
//
//  Created by Christopher Davis on 10/16/18.
//  Copyright © 2018 Christopher Davis. All rights reserved.
//

import UIKit
import BAFluidView

class ViewController: UIViewController {

    
    // MARK: - Outlets:
    @IBOutlet weak var waveView: UIView!
    @IBOutlet weak var waveButtonOutlet: UIView!
    
    
    // MARK: - Actions:
    @IBAction func WaveButton(_ sender: UIButton) {
        if waveHasStarted == false {
            startWave()
            waveHasStarted = true
        } else {
            stopWave()
            waveHasStarted = false
        }
        
    }
    
    
    // MARK: - The magic:
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Bring the button to the front & style it a bit.
        view.bringSubviewToFront(waveButtonOutlet)
        waveButtonOutlet.layer.cornerRadius = 40
        waveButtonOutlet.layer.masksToBounds = true
        
        // Show the wave on the page:
        waveView.addSubview(bottomFluidView)
        waveView.addSubview(middleFluidView)
        waveView.addSubview(topFluidView)
    }
    
    
    // MARK: - Functions:
    func startWave() {
        // Start moving the wave.
        print("The waves have started.")
        bottomFluidView.startAnimation()
        middleFluidView.startAnimation()
        topFluidView.startAnimation()
    }
    
    
    func stopWave() {
        // Stop moving the wave.
        print("The waves have stopped.")
        bottomFluidView.stopAnimation()
        middleFluidView.stopAnimation()
        topFluidView.stopAnimation()
    }
    
    
    
    // MARK: - VARIABLES:
    var waveHasStarted = false
    var waveHasBeenStopped = true
    
    // Bottom wave locations:
    var bottomWaveFillToHopeful: NSNumber = 0.96
    var bottomWaveFillToStopped: NSNumber = 0.00
    
    // Middle wave locations:
    var middleWaveFillToHopeful: NSNumber = 0.96
    var middleWaveFillToStopped: NSNumber = 0.00
    
    // Top wave locations:
    var topWaveFillToHopeful: NSNumber = 0.95
    var topWaveFillToStopped: NSNumber = 0.00
    
    
    lazy var bottomFluidView: BAFluidView = {
        let wave = BAFluidView(frame: self.view.frame, startElevation: 0.02)!
        
        wave.strokeColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0)
        wave.fillColor = UIColor.init(red: 0, green: 0, blue: 255, alpha: 0.2)
        wave.maxAmplitude = 4
        wave.minAmplitude = 0
        wave.amplitudeIncrement = 4
        wave.fillDuration = 10.0
        wave.fillAutoReverse = false
        wave.fillRepeatCount = 1
        wave.fill(to: bottomWaveFillToHopeful)
        
        return wave
    }()
    
    lazy var middleFluidView: BAFluidView = {
        let wave = BAFluidView(frame: self.view.frame, startElevation: 0.025)!
        
        wave.strokeColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0)
        wave.fillColor = UIColor.init(red: 0, green: 0, blue: 255, alpha: 0.5)
        wave.maxAmplitude = 12
        wave.minAmplitude = 2
        wave.amplitudeIncrement = 10
        wave.fillDuration = 10.0
        wave.fillAutoReverse = false
        wave.fillRepeatCount = 1
        wave.fill(to: middleWaveFillToHopeful)
        
        return wave
    }()
    
    lazy var topFluidView: BAFluidView = {
        let wave = BAFluidView(frame: self.view.frame, startElevation: 0.018)!

        wave.strokeColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0)
        wave.fillColor = UIColor.init(red: 0, green: 0, blue: 255, alpha: 0.15)
        wave.maxAmplitude = 16
        wave.minAmplitude = 4
        wave.amplitudeIncrement = 18
        wave.fillDuration = 10.0
        wave.fillAutoReverse = false
        wave.fillRepeatCount = 1
        wave.fill(to: topWaveFillToHopeful)
        
        return wave
    }()
    
    
    
    
    // MARK: 👇 closing bracket
}
