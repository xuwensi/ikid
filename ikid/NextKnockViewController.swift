//
//  NextKnockViewController.swift
//  ikid
//
//  Created by Wensi Xu on 5/2/22.
//

import UIKit

class NextKnockViewController: UIViewController {

    let punchline : [String] = ["Dejav who?", "Knock! Knock!"]
    
    var count = 0
    
    @IBOutlet weak var punchlineLabel: UILabel!
    
    @IBOutlet weak   var nextBtn: UIButton!
    
    @IBAction func exitKnockJoke(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func nextPunchline(_ sender: Any) {
        if count < punchline.count{
            punchlineLabel.text = punchline[count]
            count += 1
            if count == punchline.count {
                nextBtn.isHidden = true
            }
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
