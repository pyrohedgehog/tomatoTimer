//
//  AddViewController.swift
//  tomatoTimer
//
//  Created by jonah wilmsmeyer on 2020-04-13.
//  Copyright © 2020 jonah wilmsmeyer. All rights reserved.
//

import UIKit

//protocol AppendViewControllerProtocol {
//    func didPressCreate()
//}

class AppendViewController: UIViewController {
    
//    var delegate: AppendViewControllerProtocol?
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    @IBAction func createButton(_ sender: UIButton) {
        print("creat button clicked")
//        if let delegate = delegate {
//            delegate.didPressCreate()
//        }
//        self.navigationController?.popViewController(animated: true)
        
        if let view = sender.superview {
            view.removeFromSuperview()
            view.superview?.bringSubviewToFront(view)
//            UIView.animate(withDuration: 0.25, animations: { () -> Void in
//                view.isHidden = true
//            }, completion: { (success) -> Void in
//                print("yo")
//                view.removeFromSuperview()
//            })
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("appending view has loaded")
//        self.view.backgroundColor = UIColor.orange
        
//        let thisButton = UIButton()
//        self.view.addSubview(thisButton)
//        thisButton.translatesAutoresizingMaskIntoConstraints = false
//        thisButton.setTitle("Create", for: .normal)
//        thisButton.backgroundColor = UIColor.green
//        thisButton.frame = CGRect(x: 30, y: 400, width: 150, height: 44)
//        thisButton.addTarget(self, action: #selector(createButton), for: .touchUpInside)
    }
    
    
    
    

    

}
