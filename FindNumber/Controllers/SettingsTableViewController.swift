//
//  SettingsTableViewController.swift
//  FindNumber
//
//  Created by User on 01.07.2021.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var switchTimer: UISwitch!
    @IBOutlet weak var timeGameLabel: UILabel!
    
    //MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadSettings()
    }
    
    //MARK: - IBAction
    @IBAction func resetSettings(_ sender: UIButton) {
        Settings.shared.resetSettings()
        loadSettings()
    }
    @IBAction func changeTimerState(_ sender: UISwitch) {
        Settings.shared.currentSettings.timeState = sender.isOn
    }
    
    // MARK: - Methods
    func loadSettings() {
        timeGameLabel.text =  "\(Settings.shared.currentSettings.timeForGame) sek"
        switchTimer.isOn = Settings.shared.currentSettings.timeState
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "selectTimeVC":
            if let vc = segue.destination as? SelectTimeViewController {
                vc.data = [10,20,30,40,50,60,70,80,90,100,110,120]
            }
        default:
            break
        }
    }
}
