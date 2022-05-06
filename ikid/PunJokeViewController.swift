//
//  PunJokeViewController.swift
//  ikid
//
//  Created by Wensi Xu on 4/29/22.
//

import UIKit

class PunJokeViewController: UIViewController {
    
    let punJoke : [String] = ["How do you follow Will Smith in the snow?", "What do you call a computer that sings?"]
    
    let punPunchline : [String] = ["You follow the fresh prints.", "A-Dell!"]
    
    var counter = 0
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var punLabel: UILabel!
    
    @IBAction func nextPun(_ sender: Any) {
        counter += 1
        punLabel.text = punJoke[counter]
        nextBtn.isEnabled = false
        UIView.transition(with: punLabel, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
    
    @IBAction func backHome(_ sender: Any) {
        counter = 0
        punLabel.text = punJoke[counter]
        nextBtn.isEnabled = true
        UIView.transition(with: punLabel, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier
        {
        case Optional("showPunPunchLine"):
            let nextPunVC = segue.destination as! NextPunViewController
            nextPunVC.punchline = punPunchline[counter]
            break;
        default:
            print("segue identifier error")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
