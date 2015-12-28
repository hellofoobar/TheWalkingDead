//
//  ViewController.swift
//  TheWalkingDead
//
//  Created by yolo on 2015-12-27.
//  Copyright © 2015 foobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 240
    let HEIGHT: CGFloat = 397
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH - 60 + ((WIDTH + 120) * CGFloat(x)), 285, WIDTH, HEIGHT)
        }
        scrollView.contentSize = CGSizeMake((WIDTH + 120) * 5, scrollView.frame.size.height)
    }
}

