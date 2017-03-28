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
    
    //making it an object to accept th incomign Emoji object
    
    var emoji = Emoji()

    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //self.view.backgroundColor = UIColor.black
        //emojiDefLabel.textColor = UIColor.white
        
        emojiLabel.text = emoji.stringEmoji
        emojiDefLabel.text = emoji.description
        birthYearLabel.text = "BirthYear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
