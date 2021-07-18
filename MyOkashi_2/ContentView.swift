//
//  ContentView.swift
//  MyOkashi_2
//
//  Created by administrator on 2021/07/18.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var okashiDataList = OkashiData()
    @State var inputText = ""
    
    var body: some View {
    
        VStack {
            TextField("キーワードを入力してください",text: $inputText,onCommit:{
                okashiDataList.serchOkashi(keyword: inputText)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
