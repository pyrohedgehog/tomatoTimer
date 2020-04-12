//
//  MainViewController.swift
//  tomatoTimer
//
//  Created by jonah wilmsmeyer on 2020-04-12.
//  Copyright © 2020 jonah wilmsmeyer. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var tomatos: [TomatoCell] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tomatos = loadArray()
     
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func loadArray() ->[TomatoCell]{
        //TODO load cells/save them(future me problem)
        return [TomatoCell("Hello"),TomatoCell("world")]
    }
}
extension MainViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tomatos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tomato = tomatos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TomatoCell") as! CellController
        
        cell.setText(tomato)
        
        return cell
        
    }
}
