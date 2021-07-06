//
//  MovieController.swift
//  Fashion App
//
//  Created by Mohammed Ibrahim on 6/7/21.
//

import Foundation

class MovieController : ObservableObject  {
    @Published var modelData  = [ArtistModel(id: UUID(), name: "Kate William", city: "London", image: "pic1"),
                                 ArtistModel(id: UUID(), name: "Jhon", city: "Italy", image: "pic4"),
                                 ArtistModel(id: UUID(), name: "Isabelle", city: "Parris", image: "pic2"),
                                 ArtistModel(id: UUID(), name: "Willie", city: "Spain", image: "pic3"),
                                 ArtistModel(id: UUID(), name: "Charlotte", city: "Parris", image: "pic5")]
    @Published var NewData  = [  ArtistModel(id: UUID(), name: "Jhon", city: "Italy", image: "pic4"),
                                 ArtistModel(id: UUID(), name: "Isabelle", city: "Parris", image: "pic2"),
                                 ArtistModel(id: UUID(), name: "Willie", city: "Spain", image: "pic3"),
                                 ArtistModel(id: UUID(), name: "Kate William", city: "London", image: "pic1"),
                                 ArtistModel(id: UUID(), name: "Charlotte", city: "Parris", image: "pic5")]
    @Published var Data2021  = [ ArtistModel(id: UUID(), name: "Willie", city: "Spain", image: "pic3"),
                                 ArtistModel(id: UUID(), name: "Charlotte", city: "Parris", image: "pic5"),
                                 ArtistModel(id: UUID(), name: "Kate William", city: "London", image: "pic1"),
                                 ArtistModel(id: UUID(), name: "Jhon", city: "Italy", image: "pic4"),
                                 ArtistModel(id: UUID(), name: "Isabelle", city: "Parris", image: "pic2")
                                 ]
    
    func getIndex(item: ArtistModel) -> Int{
        return self.modelData.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
    }
}
