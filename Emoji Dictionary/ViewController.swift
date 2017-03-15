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
    
    
    var emojisArray = ["😇","😊","🤓","😎","🙏🏻","👍","💏"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojisArray.count;
    
    }
    
    // The below func is for Creating the tableView and adding an Array into TableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        print(indexPath.row)
        let emojicell = UITableViewCell()
        emojicell.textLabel?.text = emojisArray[indexPath.row]
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
        
        destSEGVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

