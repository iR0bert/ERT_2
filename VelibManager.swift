//
//  VelibData.swift
//  Exchange Rates Tool
//
//  Created by iRobert on 07/02/2022.
//

import Foundation
public var currency = ""
public var code = ""
public var mid = 0.0
public var effectiveDate = ""
public var no = ""
public var value_no = 0
public var type1 = ""
struct VelibManager {
let velibURL = "https://api.nbp.pl/api/exchangerates/tables/a/?format=json"
    func fetchVelib(){
        if let url = URL(string: velibURL) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    if let velib = self.parseJSON(velibData: safeData) {
                        currency = velib[0].rates[value_no].currency
                        effectiveDate = velib[0].effectiveDate
                        code = velib[0].rates[value_no].code
                        no = velib[0].no
                        mid = velib[0].rates[value_no].mid
                    }
                }
            }
            task.resume()
        }
        }
        func parseJSON (velibData: Data) -> [Dataset]? {
            let decoder = JSONDecoder()
            do{
                let decodedData = try decoder.decode([Dataset].self, from: velibData)
                return decodedData
            } catch {
                print (error)
                return nil
    }
    }
    }
