//
//  ViewController.swift
//  UserDefault Sayac Uygulamasi
//
//  Created by Fevzi Can Yılmaz on 29.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let d = UserDefaults.standard
        
        var counter = d.integer(forKey: "Counter")
        
        counter += 1
        d.set(counter,forKey: "Counter")
        
        labelCounter.text = "Counter: \(counter)"
    }


}

