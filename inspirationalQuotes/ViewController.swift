//
//  ViewController.swift
//  inspirationalQuotes
//
//  Created by John Pill on 07/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var addQuoteTextfield: UITextField!
    @IBOutlet weak var warningLabel: UILabel!           // Warning label.
    
    var quotes = [
      "Stay Hungry. Stay Foolish. Steve Jobs",
      "Good Artists Copy, Great Artists Steal. Pablo Picasso",
      "Argue with idiots, and you become an idiot. Paul Graham",
      "I raise up my voice—not so I can shout but so that those without a voice can be heard. Malala Yousafzai",
      "Be yourself; everyone else is already taken. Oscar Wilde",
      "Have no fear of perfection, you'll never reach it. Marie Curie",
      "Simplicity is the ultimate sophistication. Leonardo Da Vinci",
      "Success is only meaningful and enjoyable if it feels like your own. Michelle Obama"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func quoteButtonPressed(_ sender: Any) {
        
        warningLabel.text = ""      // For Extension
        
        let randomNumber =  Int.random(in: 0..<quotes.count)
        quoteLabel.text = quotes[randomNumber]
    }
    
    
    // Extension activity below:
    @IBAction func addQuoteTextfield(_ sender: Any) {
        
        if addQuoteTextfield.text == ""  {
            warningLabel.text = "Please enter a quote!"
        } else {
            quotes.append(addQuoteTextfield.text ?? "")
            warningLabel.text = "Quote added!"
        }
        
    }
    
}

