//
//  ArtistModel.swift
//  Fashion App
//
//  Created by Mohammed Ibrahim on 6/7/21.
//

import Foundation

struct ArtistModel : Identifiable,Hashable{
    var id = UUID()
    var name : String
    var city : String 
    var image : String
}
