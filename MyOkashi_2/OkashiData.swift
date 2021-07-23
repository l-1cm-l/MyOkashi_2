//
//  OkashiData.swift
//  MyOkashi_2
//
//  Created by administrator on 2021/07/18.
//

import Foundation

class OkashiData: ObservableObject{
    func serchOkashi(keyword: String){
        print(keyword)
        
        guard let keyword_encode = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else{
            return
        }
        
        
        guard let req_url = URL(string: "https://sysbird/toriko/api/?apikey=guest?format=json&keyword=\(keyword_encode)%max=10&order=r")
        else{
            return
        }
        print(req_url)
    }
}
