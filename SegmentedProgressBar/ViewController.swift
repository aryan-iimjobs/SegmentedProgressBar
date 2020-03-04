//
//  ViewController.swift
//  SegmentedProgressBar
//
//  Created by iim jobs on 03/03/20.
//  Copyright © 2020 iim jobs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SegmentedProgressBarDelegate{
    
    @IBOutlet weak var demoButton: UIButton!
    
    @IBAction func buttonClick(_ sender: Any) {
        progressBar.skip()
    }
    
    var arrayCount = 5
    
    
    func segmentedProgressBarChangedIndex(index: Int) {
        print("ProgressBar index changed")
    }
    
    func segmentedProgressBarFinished() {
        print("Progress Bar finished")
    }
    
    var progressBar: MyProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("##viewDIdLoad")
        // Do any additional setup after loading the view.
        
        progressBar = MyProgressView(arrayStories: arrayCount)
        
        progressBar.frame = CGRect(x: 0, y: 50, width: view.frame.width, height: 20)
        
        progressBar.delegate = self
        progressBar.animate(index: 0)
        view.addSubview(progressBar)
    }
}

