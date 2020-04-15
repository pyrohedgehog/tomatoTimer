//
//  MainViewController.swift
//  tomatoTimer
//
//  Created by jonah wilmsmeyer on 2020-04-12.
//  Copyright © 2020 jonah wilmsmeyer. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{//, AppendViewControllerProtocol {
    var tomatos: [TomatoCell] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("main view loaded")
        
        tomatos = loadArray()

        // finish setting things up
        buildAppendButton()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func buildAppendButton() {
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(AppendButton))
//        self.navigationController?.navigationItem.rightBarButtonItem = button //doesnt display button when used.
        self.navigationItem.rightBarButtonItem = button
    }
    
    
    func loadArray() ->[TomatoCell]{
        //TODO: load cells/save them(future me problem)
        return [TomatoCell("Hello"),TomatoCell("world")]
    }
    
    func didPressCreate() {
        print("I'll get right on that")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    //MARK: handlers
    @IBAction func AppendButton(_ sender: Any) {
       
//        let appendViewController = AppendViewController()
//        appendViewController.delegate = self;
//        self.navigationController?.pushViewController(appendViewController, animated: true)
//
        self.performSegue(withIdentifier: "AppendTransition", sender: self)
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
