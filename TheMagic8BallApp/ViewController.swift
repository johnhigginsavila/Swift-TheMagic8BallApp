//
//  ViewController.swift
//  TheMagic8BallApp
//
//  Created by John Higgins M. Avila on 12/04/2018.
//  Copyright © 2018 John Higgins M. Avila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answers: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var answerIndex: Int = 0
    @IBOutlet weak var magic8BallImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getAnswer () {
        answerIndex = Int(arc4random_uniform(5))
        magic8BallImage.image = UIImage(named: answers[answerIndex])
    }

    @IBAction func askButtonPress(_ sender: Any) {
        getAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        getAnswer()
    }
}

