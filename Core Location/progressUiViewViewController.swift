//
//  progressUiViewViewController.swift
//  Core Location
//
//  Created by Vineeth Xavier on 3/17/18.
//  Copyright © 2018 Vineeth Xavier. All rights reserved.
//

import UIKit

class progressUiViewViewController: UIViewController {
    var randomPercentage = arc4random_uniform(100)
    @IBOutlet weak var downloadProgressLabel: UILabel!
    @IBOutlet weak var defaultProgressBar: UIProgressView!
    @IBOutlet weak var progrssBarView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        showStatus()
 
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }//to change the color in battery pannel
    @IBAction func RandomPercentGenerator(_ sender: UIButton) {
        randomPercentage = arc4random_uniform(100)
        print(randomPercentage)
        viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        showStatus()
    }
    override func viewDidLayoutSubviews() {
        showStatus()
    }
    func showStatus(){
        
        
        progrssBarView.frame.size.width = (view.frame.size.width/100)*CGFloat(randomPercentage)
        
        let progressValue = Float(randomPercentage)
        self.defaultProgressBar.progress = progressValue/100
        // defaultProgressBar.progress = Float(5)
        
        self.downloadProgressLabel.text = "\(Int(progressValue))"
    }

}
