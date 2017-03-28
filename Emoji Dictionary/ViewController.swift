//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Nannapaneni, Vijay X [Levi, Ray & Shoup Inc Contractor for Sprint] on 2/15/17.
//  Copyright © 2017 Crap App. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    
    var emojisArray : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
        emojisArray = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojisArray.count;
    
    }
    
    
    
    
    // The below func is for Creating the tableView and adding an Array into TableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let emojicell = UITableViewCell()
        let emoji = emojisArray[indexPath.row]
        emojicell.textLabel?.text = emoji.stringEmoji
        return emojicell
    }
    
    
    
    
    
    
    // The below func is to move from one viewcontroller to other its called segue (seg-way)
    // emoji will have the indexPath of emojisArray
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojisArray[indexPath.row]
        
    // setting the sender from emojisArray by indexPath
        
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    
    // prepare segue is one which link to appropriate sender
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // print(sender)
        // this is connection for DefnitionVC and passing the sender to it
        let destSEGVC = segue.destination as!
        DefinitionForViewController
        
        destSEGVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.birthYear = 1999
        emoji1.stringEmoji = "😇"
        emoji1.category = "Simley"
        emoji1.description = "Angels Smile"
        
        let emoji2 = Emoji()
        emoji2.birthYear = 1998
        emoji2.stringEmoji = "😊"
        emoji2.category = "Simley"
        emoji2.description = "Always Smile"
        
        let emoji3 = Emoji()
        emoji3.birthYear = 2000
        emoji3.stringEmoji = "🤓"
        emoji3.category = "Simley"
        emoji3.description = "Nerdyy Smile!!"
        
        let emoji4 = Emoji()
        emoji4.birthYear = 2001
        emoji4.stringEmoji = "😎"
        emoji4.category = "Simley"
        emoji4.description = "Cool Bro!!"
        
        let emoji5 = Emoji()
        emoji5.birthYear = 2010
        emoji5.stringEmoji = "🙏🏻"
        emoji5.category = "Hands"
        emoji5.description = "Namste Guru"
        
        let emoji6 = Emoji()
        emoji6.birthYear = 2009
        emoji6.stringEmoji = "👍"
        emoji6.category = "Thumb"
        emoji6.description = "Thumbs UP!!"
        
        let emoji7 = Emoji()
        emoji7.birthYear = 2008
        emoji7.stringEmoji = "💏"
        emoji7.category = "Love"
        emoji7.description = "Lovely!!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
        
    }


}

