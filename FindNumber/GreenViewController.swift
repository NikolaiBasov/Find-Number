//
//  GreenViewController.swift
//  FindNumber
//
//  Created by User on 30.06.2021.
//

import UIKit

class GreenViewController: UIViewController {
    
    var textForLabel = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goToRoot(_ sender: UIButton) {
        //self.navigationController?.popToRootViewController(animated: true)
        if let viewControllers = self.navigationController?.viewControllers {
            for vc in viewControllers {
                if vc is YellowViewController {
                    self.navigationController?.popToViewController(vc, animated: true)
                }
            }
        }
        
    }
    
}
