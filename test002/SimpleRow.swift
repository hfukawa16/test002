//
//  SwiftUIView.swift
//  test002
//
//  Created by user on 2022/01/08.
//

import SwiftUI

struct SimpleRow: View {
    var production: Production
    var body: some View {
        // 水平方向に並べる
        HStack {
            // 商品画像
            production.imageName

            // 商品名
            Text(production.name).padding(10)

            // スペース
            Spacer()

            // 価格
            Text("$ \(production.price)")
        }
        .padding(30)
    }
}


struct SimpleList: View {
    let productions: [Production] = [
        Production(id: 1,
                   name: "Trash",
                   imageName: Image(systemName: "trash"),
                   price: 100),
        Production(id: 2,
                   name: "Star Key ring/n ffff",
                   imageName: Image(systemName: "trash"),
                   price: 300),
        Production(id: 3,
                   name: "Book",
                   imageName: Image(systemName: "trash"),
                   price: 300),
    ]

    var body: some View {
        List (productions) { production in
            SimpleRow(production: production)
        }
    }
}
//プレビュー機能
struct SimpleList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SimpleList()
        }
    }
}
