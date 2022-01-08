//
//  DataKinmu.swift
//  test002
//
//  Created by user on 2022/01/08.
//

import Foundation
import SwiftUI
struct DataKinmu: Identifiable {
    let id: Int
    var _token : String
    var button : String
    var dateStr : String
    var postUrl : String
    var datas : [DayData]
}

struct DayData :Identifiable{
    let id:Int
    var day :String
    var datas :[Data]
    var koutuuhiDatas : [KoutuuhiData]
}

struct KoutuuhiData: Identifiable {
    let id: Int
    var datas: [Data]
}

struct Data: Identifiable {
    let id: Int
    var key: String
    var value : String
}

