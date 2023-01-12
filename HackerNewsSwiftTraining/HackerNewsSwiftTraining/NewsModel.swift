//
//  NewsModel.swift
//  HackerNewsSwiftTraining
//
//  Created by GGS-BKS on 11/01/23.
//

import Foundation

struct NewsModel:Hashable,Codable{
    let hits: [Hits]
}
struct Hits:Hashable, Codable{
    let points: Int?
    let title: String?
    let url: String?
}
