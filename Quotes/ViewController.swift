//
//  ViewController.swift
//  Quotes
//


import UIKit

class ViewController: UIViewController {
    
    var quotes = Quotes()
    
    @IBOutlet weak var quoteLable: UILabel!
    
    @IBAction func inspireMeDidTap(sender: UIButton) {
        let quote = quotes.randomQuote()
        quoteLable.text = quote
        
        let image = pickRandomImage()
        backgroundImageView.image = image
        
        _ = pickRandomColor()
        sender.backgroundColor = pickRandomColor()
    }
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    func pickRandomImage() -> UIImage{
        let imageCount = 6              // 0 -> 5
        let randomNumber = Int(arc4random()) % imageCount + 1
        
        if let image = UIImage(named: "image\(randomNumber)"){
        return image
        }else{
            return UIImage(named: "image1")!
        }
    }
    
    
    func pickRandomColor() -> UIColor{
        let random = Int(arc4random()) % 5  //0 -> 4
        switch random{
        case 0: return UIColor(red: 211/255.0, green: 86/225.0, blue: 87/255.0, alpha: 0.9)
        case 1: return UIColor(red: 71/255.0, green: 178/225.0, blue: 137/255.0, alpha: 0.9)
        case 2: return UIColor(red: 229/255.0, green: 177/225.0, blue: 93/255.0, alpha: 0.9)
        case 3: return UIColor(red: 92/255.0, green: 163/225.0, blue: 178/255.0, alpha: 0.9)
        case 4: return UIColor(red: 38/255.0, green: 38/225.0, blue: 38/255.0, alpha: 0.9)
        default: return UIColor(red: 56/255.0, green: 72/225.0, blue: 72/255.0, alpha: 0.9)
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

