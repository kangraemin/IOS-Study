//
//  CoinData.swift
//  ByteCoin
//
//  Created by 강래민 on 2021/02/16.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData: Decodable{
    let time: String
    let asset_id_base: String
    let asset_id_quote: String
    let rate: Float
}
