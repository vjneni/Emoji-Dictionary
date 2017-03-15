//
//  DefinitionForViewController.swift
//  Emoji Dictionary
//
//  Created by Nannapaneni, Vijay  on 3/15/17.
//  Copyright © 2017 Crap App. All rights reserved.
//

import UIKit

class DefinitionForViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefLabel: UILabel!
    var emoji = "No Emoji Now"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        emojiDefLabel.text = "Hello"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
