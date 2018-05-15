//
//  BestBembelViewController.swift
//  BestBembel
//
//  Created by Sebastian Bachmann on 15.05.18.
//  Copyright © 2018 Sebastian Bachmann. All rights reserved.
//

import UIKit

class BestBembelViewController: UIViewController {
    
    var bestbembelview = BestBembelView()
    
    //MARK: View Cycle
    override func loadView() {
        view = bestbembelview
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Best Bembel"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
