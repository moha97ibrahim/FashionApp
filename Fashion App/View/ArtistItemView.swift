//
//  ArtistItemView.swift
//  Fashion App
//
//  Created by Mohammed Ibrahim on 6/7/21.
//

import SwiftUI

struct ArtistItemView: View {
    var item : ArtistModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                ZStack(alignment: .center){
                    Image(item.image)
                        .resizable()
                        .cornerRadius(30)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                }
                .shadow(color: Color.green.opacity(0.3), radius: 25, x: -20.0, y: 20.0)
                .shadow(color: Color.purple.opacity(0.3), radius: 25, x: 20.0, y: 20.0)
                Text(item.name)
                    .bold()
                    .font(.caption)
                    .foregroundColor(.black)
                    .padding(.leading,20)
                Text(item.city)
                    .font(.caption2)
                    .foregroundColor(.black)
                    .padding(.leading,20)
            }
        }
    }
}

