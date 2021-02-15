//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "2B59CDEB-5FAD-47AF-99B5-D2D8B0BADA2F"
    var delegate: CoinManagerDelegate?
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String) {
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let safeError = error {
                    print(safeError)
                    return
                }
                
                if let safeData = data {
                    let coinModel = parseJson(jsonData: safeData)
                    delegate?.didUpdateCoin(coinModel: coinModel!)
                }
            }
            task.resume()
        }
    }
    
    func parseJson(jsonData: Data) -> CoinModel? {
        let decoder = JSONDecoder()
        do {
            print(jsonData)
            let decodedData = try decoder.decode(CoinData.self, from: jsonData)
            let lastPrice = decodedData.rate
            return CoinModel(lastPrice: lastPrice)
        } catch {
            delegate?.showErrorMessage(error: error)
            return nil
        }
    }
}

protocol CoinManagerDelegate {
    func didUpdateCoin(coinModel: CoinModel)
    func showErrorMessage(error: Error)
}
