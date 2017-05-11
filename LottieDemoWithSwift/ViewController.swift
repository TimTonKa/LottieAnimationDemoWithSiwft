//
//  ViewController.swift
//  LottieDemoWithSwift
//
//  Created by 1134 on 2017/5/11.
//  Copyright © 2017年 1134. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    let animationView = LOTAnimationView(name: "settingAnimation")!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //if let animationView = LOTAnimationView(name: "settingAnimation"){
            animationView.frame = CGRect(x: 0, y: 0, width: 400,height: 400)
            animationView.center = self.view.center
            animationView.contentMode = .scaleAspectFit
            
            //是否循環
            animationView.loopAnimation = true
            
            animationView.animationSpeed = 0.5
            
            view.addSubview(animationView)
            
            animationView.play()
            
        //}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func animationBtnPressed(_ sender: UIButton) {
        if (animationView.isAnimationPlaying) {
            animationView.pause()
        } else {
            animationView.play()
        }
    }
}

