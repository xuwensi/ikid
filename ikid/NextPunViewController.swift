//
//  NextPunViewController.swift
//  ikid
//
//  Created by Wensi Xu on 4/30/22.
//

import UIKit

class NextPunViewController: UIViewController {
    
    var punchline = ""
    
    @IBOutlet weak var punchlineLabel: UILabel!
    
    @IBAction func exitPunJoke(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        modalTransitionStyle = .flipHorizontal
        punchlineLabel.text = punchline
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
