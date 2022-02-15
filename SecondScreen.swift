//
//  SecondScreen.swift
//  Exchange Rates Tool
//
//  Created by iRobert on 09/02/2022.
//

import UIKit
import Foundation
var velibButton = VelibManager()
class SecondScreen: UIViewController {
    

    @IBAction func BackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func CHF_button(_ sender: Any) {
        value_no = 9
        velibButton.fetchVelib()
        Second_Screen_currency_type.text = "Waluta: \(currency)(\(code))\nNotowanie:\(no)\nData:\(effectiveDate)\nKurs:\(mid)\n"
        
    }
    
    @IBAction func USD_button(_ sender: Any) {
        value_no = 1
        velibButton.fetchVelib()
        Second_Screen_currency_type.text = "Waluta: \(currency)(\(code))\nNotowanie:\(no)\nData:\(effectiveDate)\nKurs:\(mid)\n"
        
    }
    
    @IBAction func CZK_button(_ sender: Any) {
        value_no = 13
        velibButton.fetchVelib()
        Second_Screen_currency_type.text = "Waluta: \(currency)(\(code))\nNotowanie:\(no)\nData:\(effectiveDate)\nKurs:\(mid)\n"
        
    }
    
    @IBAction func EU_button(_ sender: Any) {
        value_no = 7
        velibButton.fetchVelib()
        Second_Screen_currency_type.text = "Waluta: \(currency)(\(code))\nNotowanie:\(no)\nData:\(effectiveDate)\nKurs:\(mid)\n"
    }
    
    @IBOutlet weak var Second_Screen_currency_type: UILabel!
}
