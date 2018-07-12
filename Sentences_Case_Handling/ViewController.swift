//
//  ViewController.swift
//  Sentences_Case_Handling
//
//  Created by admin on 12/07/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tempStr = "ramjan Ambir sayyad"
        
        print(tempStr.capitalized)
        print(tempStr.uppercased())
        print(tempStr.lowercased())
        print(tempStr.capitalizingFirstLetter())

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst().lowercased()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}

