//
//  Identifiable.swift
//  test002
//
//  Created by user on 2022/01/08.
//

import SwiftUI
struct Production: Identifiable {
    // ユニークID
    let id: Int

    // 商品名
    var name: String

    // 商品画像
    var imageName: Image
    
    var price: Int
}
