//
//  QuoteViewController.swift
//  QuotesApp
//
//  Created by Developer-Fha on 8/15/2560 BE.
//  Copyright © 2560 devfha. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController
{
    @IBOutlet weak var quotesContentLabel: UILabel!
    @IBOutlet weak var quoteNameLabel: UILabel!
    @IBOutlet weak var quoteImageView: UIImageView!
    @IBOutlet weak var nextQuoteBtn: UIButton!
    
    var quote: QuotesAll = QuotesAll()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let starterImage = UIImage(named: "thumb_steve")
        //quoteImageView.image = starterImage
       
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    @IBAction func nextQuoteButtonDidTap(_ sender: Any)
    {
        let nextQuestion = quote.getNextQuestion()
        let nextName = quote.getNextAuthor()
        let questionImage = quote.getQuoteImageName()
        let image = UIImage(named: questionImage)
        
        quotesContentLabel.text = nextQuestion
        quoteNameLabel.text = nextName
        quoteImageView.image = image
    }
    
    


}
