//
//  FirstViewController.swift
//  test
//
//  Created by Jakob Nilsson on 2018-05-17.
//  Copyright © 2018 Jakob Nilsson. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var ticker_1: UIButton!
    
    @IBOutlet weak var ticker_2: UIButton!
    
    @IBOutlet weak var ticker_3: UIButton!
    
    @IBOutlet weak var ticker_4: UIButton!
    
    @IBOutlet weak var ticker_5: UIButton!
    
    @IBOutlet weak var ticker_6: UIButton!
    
    @IBOutlet weak var ticker_7: UIButton!
    
    @IBOutlet weak var ticker_8: UIButton!
    
    @IBOutlet weak var ticker_9: UIButton!
    
    @IBOutlet weak var ticker_10: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ticker_1.setTitle(ticker1, for: .normal)
        ticker_2.setTitle(ticker2, for: .normal)
        ticker_3.setTitle(ticker3, for: .normal)
        ticker_4.setTitle(ticker4, for: .normal)
        ticker_5.setTitle(ticker5, for: .normal)
        ticker_6.setTitle(ticker6, for: .normal)
        ticker_7.setTitle(ticker7, for: .normal)
        ticker_8.setTitle(ticker8, for: .normal)
        ticker_9.setTitle(ticker9, for: .normal)
        ticker_10.setTitle(ticker10, for: .normal)
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
