//
//  BlueViewController.swift
//  FindNumber
//
//  Created by User on 30.06.2021.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    var textForLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = textForLabel

    }
    
    @IBAction func goToGreenController(_ sender: UIBarButtonItem) {
        let storeboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storeboard.instantiateViewController(withIdentifier: "greenVC") as? GreenViewController {
            vc.textForLabel = "Text String"
            vc.title = "Green"
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}
