//
//  ViewController.swift
//  Zari2
//
//  Created by Altina Spahija on 7/26/1396 AP.
//  Copyright © 1396 Altina Spahija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var zaret = ["zari1","zari2","zari3","zari4","zari5","zari6"]
    @IBOutlet weak var LeftImage: UIImageView!
    @IBOutlet weak var RightImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        // Do any additional setup after loading the view, typically from a nib.
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "background.png")?.draw(in: self.view.bounds)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        
        UIGraphicsEndImageContext()
        
        self.view.backgroundColor = UIColor(patternImage: image)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
      if motion == .motionShake { luaj()   }
    }
    @IBAction func ButtonTapped(_ sender: UIButton) {
    luaj()
    }
    func luaj()
    {
        let numri1 = Int(arc4random_uniform(5)) + 1
        let numri2 =
            Int(arc4random_uniform(5)) + 1
        LeftImage.image = UIImage(named: zaret[numri1])
        RightImage.image = UIImage(named: zaret[numri2])
    }
    
}

