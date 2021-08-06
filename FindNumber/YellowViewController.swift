//
//  YellowViewController.swift
//  FindNumber
//
//  Created by User on 30.06.2021.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func goToBlueController(_ sender: UIButton) {
        performSegue(withIdentifier: "goToBlue", sender: "Test string")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goToBlue":
            if let blueVC = segue.destination as? BlueViewController {
                if let string = sender as? String {
                    blueVC.textForLabel = string
                }
            }
        default:
            break
        }
    }
}
