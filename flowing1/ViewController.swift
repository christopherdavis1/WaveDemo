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

    @IBOutlet weak var waveView: UIView!
    
    @IBAction func WaveButton(_ sender: UIButton) {
        if waveHasStarted == false {
            print("Start the wave with a press.")
            startWave = true
            waveHasStarted = true
            waveHasBeenStopped = false
        } else {
            print("Stop the wave with a press.")
            startWave = false
            waveHasStarted = false
            waveHasBeenStopped = true
        }
        
    }
    
    var waveHasStarted = false
    var startWave = false
    var waveHasBeenStopped = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        WaveAnimation1()
        WaveAnimation2()
        WaveAnimation3()
    }
    
    
    
    func WaveAnimation1() {

        let wave = BAFluidView(frame: self.view.frame, startElevation: 0.02)!

        wave.maxAmplitude = 4
        wave.minAmplitude = 0
        wave.amplitudeIncrement = 4
        wave.fillDuration = 30
        wave.fillRepeatCount = 1
        wave.fill(to: 0.99)
        wave.strokeColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0)
        wave.fillColor = UIColor.init(red: 0, green: 0, blue: 255, alpha: 0.2)
        wave.startAnimation()
        wave.fillAutoReverse = false


//        if startWave == false {
//            print("Start that wave animation")
//            wave.fill(to: 0.95)
//            wave.fillAutoReverse = false
//            wave.startAnimation()
//        } else {
//            print("Stop that wave animation")
//            wave.stopAnimation()
//            wave.keepStationary()
//        }

        waveView.addSubview(wave)

    }
    
    func WaveAnimation2() {
        
        let wave2 = BAFluidView(frame: self.view.frame, startElevation: 0.025)!
        
        wave2.maxAmplitude = 12
        wave2.minAmplitude = 2
        wave2.amplitudeIncrement = 10
        wave2.fillDuration = 30
        wave2.fillRepeatCount = 1
        wave2.fill(to: 0.96)
        wave2.strokeColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0)
        wave2.fillColor = UIColor.init(red: 0, green: 0, blue: 255, alpha: 0.5)
        wave2.startAnimation()
        wave2.fillAutoReverse = false
        
        
//        if startWave == false {
//            print("Start that wave animation")
//            wave2.fill(to: 0.98)
//            wave2.fillAutoReverse = false
//            wave2.startAnimation()
//        } else {
//            print("Stop that wave animation")
//            wave2.stopAnimation()
//            wave2.keepStationary()
//        }
        
        waveView.addSubview(wave2)
        
    }
    
    func WaveAnimation3() {
        
        let wave3 = BAFluidView(frame: self.view.frame, startElevation: 0.018)!
        
        wave3.maxAmplitude = 16
        wave3.minAmplitude = 4
        wave3.amplitudeIncrement = 18
        wave3.fillDuration = 30
        wave3.fillRepeatCount = 1
        wave3.fill(to: 0.95)
        wave3.strokeColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0)
        wave3.fillColor = UIColor.init(red: 0, green: 0, blue: 255, alpha: 0.15)
        wave3.startAnimation()
        wave3.fillAutoReverse = false
        
        waveView.addSubview(wave3)
        
    }
    
    
}
