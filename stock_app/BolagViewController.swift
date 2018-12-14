//
//  BolagViewController.swift
//  test
//
//  Created by Jakob Nilsson on 2018-05-18.
//  Copyright © 2018 Jakob Nilsson. All rights reserved.
//

import UIKit

let myURLString = "https://www.di.se/bors/aktier/" + ticker3

class BolagViewController: UIViewController {

    @IBOutlet weak var info: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myURL = NSURL(string: myURLString) {
            do {
                let myHTMLString = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                
                // Description of share.
                let first = myHTMLString.range(of: "<p>").lowerBound
                let last = myHTMLString.range(of: "</p>").lowerBound
                info.text = myHTMLString.substring(with: NSMakeRange(first+3, last-first-3))
                
                
            } catch {
                print(error)
            }

        // Do any additional setup after loading the view.
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
