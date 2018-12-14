//
//  SecondViewController.swift
//  test
//
//  Created by Jakob Nilsson on 2018-05-15.
//  Copyright © 2018 Jakob Nilsson. All rights reserved.
//

import UIKit
import WebKit

var web = "https://di.se"
var link1 = ""
var link2 = ""

let nyheter = "https://www.di.se/bors/aktier/" + ticker3 + "/nyheter/"


class SecondViewController: UIViewController{
    
    @IBOutlet weak var NavBar: UINavigationItem!
    
    // Values of the share.
    // Up value.
    @IBOutlet weak var up: UILabel!

    // Same value.
    @IBOutlet weak var same: UILabel!
    
    // Down value.
    @IBOutlet weak var down: UILabel!
    
    
    
    // First article
    @IBOutlet weak var first_head: UIButton!
    
    @IBOutlet weak var first_bread: UITextView!
    
    @IBAction func first_art(_ sender: Any) {
        if let url = URL(string: web+link1){
            UIApplication.shared.open(url)
        }
    }
    
    
    // Second article
    @IBOutlet weak var sec_head: UIButton!
    
    @IBOutlet weak var sec_bread: UITextView!
    
    @IBAction func sec_art(_ sender: Any) {
        if let url = URL(string: web+link2){
            UIApplication.shared.open(url)
        }
    }
    
    
    // Imported graph for the share from WebPage
    @IBOutlet weak var WebPage: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NavBar.title = ticker3
        
        up.text = "x %"
        
        same.text = "y %"
        
        down.text = "z %"
        
        
        // Get graph from an URL
        let url = URL(string: "https://drive.google.com/uc?export=download&id=1arDyQeLU3uCxo9PVkTP2EHctPfxE0nju")
        WebPage.load(URLRequest(url:url!))
        
        if let myURL = NSURL(string: nyheter) {
            do {
                let nyheterHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                
                
                // First article.
                let news_nr = "1"
                let str1 = "<section class=\"di_teaser__body\" data-teaser-index=\"" + news_nr + "\">"
                let str2 = "\" target=\"_self\">"
                let head_str_1 = "<h1 class=\"di_teaser__heading\">"
                let head_str_2 = "</h1>"
                let bread_str_1 = "<p class=\"di_teaser__text\" >"
                
                let first_ny_1 = nyheterHTML.range(of: str1).upperBound
                let nyheter_ny = nyheterHTML.substring(from: first_ny_1)
                let nyheter = nyheter_ny as NSString
                let ind = nyheter.range(of: str2).lowerBound
                let nyheter_alla = nyheter.substring(to: ind)
                
                let head = nyheter_alla as NSString
                let head_1 = head.range(of: head_str_1).upperBound
                let head_2 = head.range(of: head_str_2).lowerBound
                let head_text = head.substring(with: NSMakeRange(head_1, head_2-head_1))
                
                first_head.setTitle(head_text, for: .normal)
                
                let ind2 = head.range(of: bread_str_1).lowerBound
                let bread = nyheter.substring(from: ind2)
                let bread_ = bread as NSString
                let index = bread_.range(of: str2).lowerBound
                let breadish = bread_.substring(to: index)
                let breadish_ = breadish as NSString
                let bread_1 = breadish_.range(of: bread_str_1).upperBound
                let bread_2 = breadish_.range(of: "</p>").lowerBound
                
                first_bread.text = breadish_.substring(with: NSMakeRange(bread_1, bread_2-bread_1))
                
                // Link to first article at di.se
                let link_str_1 = "<a href=\""
                let linkref = breadish as NSString
                let ind_link = linkref.range(of: link_str_1).upperBound
                link1 = linkref.substring(from: ind_link)
                
                
                
                
            } catch {
                print(error)
            }
            
        }
        
        if let myURL = NSURL(string: nyheter) {
            do {
                let nyheterHTML = try NSString(contentsOf: myURL as URL, encoding: String.Encoding.utf8.rawValue)
                
                // Second article.
                let news_nr = "2"
                let str1 = "<section class=\"di_teaser__body\" data-teaser-index=\"" + news_nr + "\">"
                let str2 = "\" target=\"_self\">"
                let head_str_1 = "<h1 class=\"di_teaser__heading\">"
                let head_str_2 = "</h1>"
                let bread_str_1 = "<p class=\"di_teaser__text\" >"
                
                let first_ny_1 = nyheterHTML.range(of: str1).upperBound
                let nyheter_ny = nyheterHTML.substring(from: first_ny_1)
                let nyheter = nyheter_ny as NSString
                let ind = nyheter.range(of: str2).lowerBound
                let nyheter_alla = nyheter.substring(to: ind)
                
                let head = nyheter_alla as NSString
                let head_1 = head.range(of: head_str_1).upperBound
                let head_2 = head.range(of: head_str_2).lowerBound
                let head_text = head.substring(with: NSMakeRange(head_1, head_2-head_1))
                
                sec_head.setTitle(head_text, for: .normal)
                
                let ind2 = head.range(of: bread_str_1).lowerBound
                let bread = nyheter.substring(from: ind2)
                let bread_ = bread as NSString
                let index = bread_.range(of: str2).lowerBound
                let breadish = bread_.substring(to: index)
                let breadish_ = breadish as NSString
                let bread_1 = breadish_.range(of: bread_str_1).upperBound
                let bread_2 = breadish_.range(of: "</p>").lowerBound
                
                sec_bread.text = breadish_.substring(with: NSMakeRange(bread_1, bread_2-bread_1))
                
                
                // Link to second article at di.se
                let link_str_1 = "<a href=\""
                let linkref = breadish as NSString
                let ind_link = linkref.range(of: link_str_1).upperBound
                link2 = linkref.substring(from: ind_link)
                
                
                
                
                
                
            } catch {
                print(error)
            }
            
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
