//
//  NyckeltalViewController.swift
//  test
//
//  Created by Jakob Nilsson on 2018-05-21.
//  Copyright © 2018 Jakob Nilsson. All rights reserved.
//

import UIKit

let website = "https://www.di.se/bors/aktier/" + ticker3

class NyckeltalViewController: UIViewController {

    @IBOutlet weak var Ticker: UILabel!
    
    @IBOutlet weak var Ps: UILabel!
    
    @IBOutlet weak var Omsattning: UILabel!
    
    @IBOutlet weak var Antal: UILabel!
    
    @IBOutlet weak var Pe: UILabel!
    
    @IBOutlet weak var Vinst: UILabel!
    
    @IBOutlet weak var Peget: UILabel!
    
    @IBOutlet weak var Utdelning: UILabel!
    
    @IBOutlet weak var dir: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myURL = NSURL(string: website) {
            do {
                let websiteHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                let first = websiteHTML.range(of: ">Ticker</div>").upperBound
                let last = websiteHTML.range(of: ">Antal aktier</div>").lowerBound
                let ticker = websiteHTML.substring(with: NSMakeRange(first+60, last-first-193))
                Ticker.text = ticker
                
            } catch {
                print(error)
            }
            
        }
        
        if let myURL = NSURL(string: website) {
            do {
                let websiteHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                let first = websiteHTML.range(of: ">P/s-tal</div>").upperBound
                let last = websiteHTML.range(of: ">P/e-tal</div>").lowerBound
                let ps = websiteHTML.substring(with: NSMakeRange(first+75, last-first-143))
                Ps.text = ps
                
            } catch {
                print(error)
            }
            
        }
        
        if let myURL = NSURL(string: website) {
            do {
                let websiteHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                let first = websiteHTML.range(of: ">Omsättning/aktie</div>").upperBound
                let last = websiteHTML.range(of: ">Vinst/aktie</div>").lowerBound
                let oms = websiteHTML.substring(with: NSMakeRange(first+75, last-first-142))
                Omsattning.text = oms
                
            } catch {
                print(error)
            }
            
        }
        
        if let myURL = NSURL(string: website) {
            do {
                let websiteHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                let first = websiteHTML.range(of: ">Antal aktier</div>").upperBound
                let last = websiteHTML.range(of: ">Börslista</div>").lowerBound
                let antalaktier = websiteHTML.substring(with: NSMakeRange(first+75, last-first-142))
                let rep = antalaktier.replacingOccurrences(of: "&#160;", with: " ")
                Antal.text = rep
                
            } catch {
                print(error)
            }
            
        }
        
        
        
        if let myURL = NSURL(string: website) {
            do {
                let websiteHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                let first = websiteHTML.range(of: ">P/e-tal</div>").upperBound
                let last = websiteHTML.range(of: ">P/eget kapital</div>").lowerBound
                let pe = websiteHTML.substring(with: NSMakeRange(first+75, last-first-142))
                Pe.text = pe
                
            } catch {
                print(error)
            }
            
        }
        
        if let myURL = NSURL(string: website) {
            do {
                let websiteHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                let first = websiteHTML.range(of: ">Vinst/aktie</div>").upperBound
                let last = websiteHTML.range(of: ">Utdelning/aktie</div>").lowerBound
                let vinst = websiteHTML.substring(with: NSMakeRange(first+75, last-first-142))
                Vinst.text = vinst
                
            } catch {
                print(error)
            }
            
        }
        
        
        if let myURL = NSURL(string: website) {
            do {
                let websiteHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                let first = websiteHTML.range(of: ">P/eget kapital</div>").upperBound
                let last = websiteHTML.range(of: ">Eget kapital/aktie</div>").lowerBound
                let eget = websiteHTML.substring(with: NSMakeRange(first+75, last-first-142))
                Peget.text = eget
                
            } catch {
                print(error)
            }
            
        }
        
        if let myURL = NSURL(string: website) {
            do {
                let websiteHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                let first = websiteHTML.range(of: ">Utdelning/aktie</div>").upperBound
                let last = websiteHTML.range(of: ">Direktavkastning</div>").lowerBound
                let ut = websiteHTML.substring(with: NSMakeRange(first+75, last-first-142))
                Utdelning.text = ut
                
            } catch {
                print(error)
            }
            
        }
        
        if let myURL = NSURL(string: website) {
            do {
                let websiteHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                let first = websiteHTML.range(of: ">Direktavkastning</div>").upperBound
                let last = websiteHTML.range(of: "<div class=\"di_stock-widgets__footer\">").lowerBound
                let d = websiteHTML.substring(with: NSMakeRange(first+75, last-first-46))
                dir.text = d
                
            } catch {
                print(error)
            }
            
        }
        
        

        // Do any additional setup after loading the view.
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
