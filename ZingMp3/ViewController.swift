//
//  ViewController.swift
//  ZingMp3
//
//  Created by iOS Student on 2/16/17.
//  Copyright © 2017 NKT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var text2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        logo!.alpha = 0
        text!.alpha = 0
        text2!.alpha = 0
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.logo!.alpha = 1
            }, completion: { (finished) in
                UIView.animate(withDuration: 2, animations: {
                    self.text!.center = CGPoint(x: self.logo!.center.x, y: 100)
                    self.text!.alpha = 1
                    },completion: { (finished) in
                        UIView.animate(withDuration: 2, animations: {
                            self.text2!.center = CGPoint(x: self.logo!.center.x, y: 500)
                            self.text2!.alpha = 1
                        })
                    }

                )
            }
            
        )
    }

}

