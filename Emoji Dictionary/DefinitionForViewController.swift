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
        
        self.view.backgroundColor = UIColor.black
        emojiDefLabel.textColor = UIColor.white
        
        emojiLabel.text = emoji
        
        if emoji == "😇"{
            emojiDefLabel.text = "Angels"
        } else if emoji == "😎" {
            emojiDefLabel.text = "Cool Bro!!!!"
        } else if emoji == "😊"{
            emojiDefLabel.text = "Smile Everyday"
        } else if emoji == "🤓"{
            emojiDefLabel.text = "Nerdy!!"
        } else if emoji == "👍" {
            emojiDefLabel.text = "Thumps UP"
        } else if emoji == "🙏🏻" {
            emojiDefLabel.text = "Namaste Guru"
        } else if emoji == "💏" {
            emojiDefLabel.text = "Love Yourself"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
