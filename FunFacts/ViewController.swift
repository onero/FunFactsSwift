//
//  ViewController.swift
//  FunFacts
//
//  Created by Admin on 28/05/2017.
//  Copyright © 2017 Adamino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IB = Interface builder
    // Weak = Memory managemenT
    // ! = Optional -> can be nil
    @IBOutlet weak var funFactLabel: UILabel!
	
		@IBOutlet weak var funFactButtoun: UIButton!
    
    let factModel = FactModel()
	
	  let colorModel = ColorModel()
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factModel.facts[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	  @IBAction func showFact() {
			funFactLabel.text = factModel.randomFact()
			let randomColor = colorModel.randomColor()
			view.backgroundColor = randomColor
			funFactButtoun.tintColor = randomColor
		}

	

}

