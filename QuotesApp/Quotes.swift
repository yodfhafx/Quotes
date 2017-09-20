//
//  Quotes.swift
//  QuotesApp
//
//  Created by Developer-Fha on 8/15/2560 BE.
//  Copyright © 2560 devfha. All rights reserved.
//

import Foundation

class QuotesAll
{
    var quotes: [String] = [ "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.", "No matter how small you start, start something that matters.", "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."
    ]
    
    var authors: [String] = ["Steve Jobs", "Brendon Burchard", "Theodore Roosevelt"]
    
    var quoteImageNames: [String] = ["thumb_steve", "thumb_brendon", "thumb_theodore"]
    
    var currentQuoteIndex: Int = 0
    
    var currentAuthorIndex: Int = 0
    
    func getNextQuestion() -> String {
        
        if currentQuoteIndex == (quotes.count - 1){
            currentQuoteIndex = 0
        } else {
            currentQuoteIndex += 1
        }
        
        return quotes[currentQuoteIndex]
    }
    
    func getNextAuthor() -> String {
        
        if currentAuthorIndex == (authors.count - 1){
            currentAuthorIndex = 0
        } else {
            currentAuthorIndex += 1
        }
        
        return authors[currentAuthorIndex]
    }
    
    func getQuoteImageName() -> String {
        
        return self.quoteImageNames[currentQuoteIndex]
    }
    
}
