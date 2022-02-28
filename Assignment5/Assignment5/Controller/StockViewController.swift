//
//  StockViewController.swift
//  Assignment5
//
//  Created by Chandnani, Harsh on 2/27/22.
//

import UIKit
import SwiftyJSON
import SwiftSpinner
import Alamofire

class StockViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol: UITextField!
    @IBOutlet weak var lblStockPrice: UILabel!
    @IBOutlet weak var lblStockDCF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getStockPrice(_ sender: Any) {
        
        guard let symbol = txtStockSymbol.text?.uppercased() else {
                   return
               }
               
               let url = "\(shortQuoteKey)\(symbol.uppercased())?apikey=\(apiKey)"
               
               
               SwiftSpinner.show("Getting Stock Cash Flow for \(symbol)")
               
               AF.request(url).response { response in
                   SwiftSpinner.hide(nil)
                   
                   if response.error != nil {
                       print(response.error!)
                       return
                   }
                   
                   let stocks = JSON(response.data!).array
                   
                   guard let stock = stocks!.first else {
                       return
                   }
                   
                   
                   let cashflow = DiscountedCashFlow()
                   cashflow.symbol = stock["symbol"].stringValue
                   cashflow.date = stock["date"].stringValue
                   cashflow.stockPrice = stock["Stock Price"].floatValue
                   cashflow.dcf = stock["dcf"].floatValue
                   
                   self.lblStockPrice.text = "\(cashflow.symbol) : \(cashflow.stockPrice) $"
               }
    }
    
    
    @IBAction func getDiscountedCashFlowValue(_ sender: Any) {
        
        guard let symbol = txtStockSymbol.text?.uppercased() else {
                   return
               }
               
                   
               let url = "\(shortQuoteKey)\(symbol.uppercased())?apikey=\(apiKey)"
               
               
               SwiftSpinner.show("Getting Stock Cash Flow for \(symbol)")
               
               AF.request(url).response { response in
                   SwiftSpinner.hide(nil)
                   
                   if response.error != nil {
                       print(response.error!)
                       return
                   }
                   
                   let stocks = JSON(response.data!).array
                   
                   guard let stock = stocks!.first else {
                       return
                   }
                   
                   let cashflow = DiscountedCashFlow()
                   cashflow.symbol = stock["symbol"].stringValue
                   cashflow.date = stock["date"].stringValue
                   cashflow.stockPrice = stock["Stock Price"].floatValue
                   cashflow.dcf = stock["dcf"].floatValue
                   
                   self.lblStockDCF.text = "\(cashflow.symbol) : \(cashflow.dcf) $"
        
               }
    }
    
}
