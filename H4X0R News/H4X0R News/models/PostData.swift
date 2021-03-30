//
//  PostData.swift
//  H4X0R News
//
//  Created by 강래민 on 2021/03/31.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    // Computed property
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String? // Api 호출 해보면, null 인경우가 있음 -> decoder 에러 -> nullable 하게 변경
}
