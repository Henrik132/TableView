//
//  ViewController.swift
//  TableViewGit
//
//  Created by Henrik Lüdemann / BBS2H20A on 09.11.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!

        var games = ["Far Cry", "hduashu", "jsioffjsd", "fids", "djaij"]
    
        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self


        navigationItem.rightBarButtonItem = editButtonItem
        
        title = "Games"

        myTableView.tableFooterView = UIView()
        
        
        
    }
        
    override func setEditing(_ editing: Bool, animated: Bool) {
        print("Set Editing")
        
        super.setEditing(isEditing, animated: true)
        myTableView.setEditing(!myTableView.isEditing, animated: true)
    }
    
    
}


    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return games.count
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let myCell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            
            myCell.textLabel?.text = games[indexPath.row]
            
            return myCell
        }
        
        
    }

    extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
            return true
        }
        func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
            let selectedGame = [sourceIndexPath.row]
            
            games.remove(at: sourceIndexPath.row)
            
            games.insert(<#T##newElement: String##String#>, at: <#T##Int#>)
            
            
        }
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            
            if editingStyle == .delete {
                games.remove(at: indexPath.row)
            
                myTableView.deleteRows(at: [indexPath], with: .automatic)
            
            
            
            }
        }
        
    }
