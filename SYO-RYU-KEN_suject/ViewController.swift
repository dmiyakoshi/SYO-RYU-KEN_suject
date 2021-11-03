//
//  ViewController.swift
//  SYO-RYU-KEN_suject
//
//  Created by 宮越大輝 on 2021/11/03.
//

import UIKit

class ViewController: UIViewController {

    func displayImage() {
            let image = UIImage(named: "attak1")
            imageView.image = image
        }
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImage()
    }

    @IBAction func button(_ sender: Any) {
        var imageListArray :Array<UIImage> = []
        
        for number in 1...20 {
            imageListArray.append( UIImage(named: "attak\(number)")!)
        }
        
        imageView.animationImages = imageListArray
        imageView.animationDuration = 3
        imageView.animationRepeatCount = 1
        
        imageView.startAnimating()
        
    }
}

