//
//  ViewController.swift
//  NumberRollTest
//
//  Created by Travis Ma on 8/27/15.
//  Copyright (c) 2015 IMSHealth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var label0: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    var labels = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var f = scrollView.frame
        scrollView.contentSize = f.size
        f.size.height = 40
        scrollView.frame = f
        labels = [label0, label1, label2, label3, label4, label5, label6, label7, label8, label9]
    }

    @IBAction func btnRandomTap(sender: AnyObject) {
        let r = Int(arc4random_uniform(10))
        let label = labels[r]
        scrollView.scrollRectToVisible(label.frame, animated: true)
    }

}

