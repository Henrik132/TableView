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
    
    }
