//
//  ViewController.swift
//  LiveSplashDemo
//
//  Created by Himanshu Sharma on 05/09/23.
//

import UIKit
import LiveSplash
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let splash = LiveSplash(size: self.view.frame, image: UIImage(named: "demoLiveSplash")!)
        splash.startAnimation(delayInSec:15.0)
        splash.addBlur(blurMode: .light)
        self.view.addSubview(splash.animatedView())
        self.view.sendSubviewToBack(splash.animatedView())
        
    }


}

