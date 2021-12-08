//
//  ViewController.swift
//  AgingPeople
//
//  Created by Linah abdulaziz on 04/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabelview: UITableView!
    
    var people = ["George","Betty","Fran","Joe","Helda","Winifred","Zed","Sara","Jeffy","Abragam","Anna","Melinda"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelview.dataSource = self
    }


}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelview.dequeueReusableCell(withIdentifier: "my cell", for: indexPath)
        
        cell.textLabel?.text = people[indexPath.row]
        cell.detailTextLabel?.text = "\(Int.random(in: 5...95)) years ald"
        
        
        return cell
    }
    
    
}

