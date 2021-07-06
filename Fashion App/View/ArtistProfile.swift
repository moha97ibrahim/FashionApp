//
//  ArtistProfile.swift
//  Fashion App
//
//  Created by Mohammed Ibrahim on 6/7/21.
//

import SwiftUI

struct ArtistProfile: View {
    @Environment(\.presentationMode) var presentationMode
    var item : ArtistModel
    var body: some View {
        ZStack{
            VStack(alignment:.leading){
                Spacer()
                VStack{
                    VStack{
                        Image(systemName: "text.bubble" )
                            .resizable()
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .animation(.linear(duration: 1))
                            .onAppear{
                                print(item)
                            }
                        
                        Text("3")
                            .foregroundColor(.white)
                    }
                    .padding()
                    VStack{
                        Image(systemName: "heart" )
                            .resizable()
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .animation(.linear(duration: 1))
                        Text("579")
                            .foregroundColor(.white)
                    }
                    .padding()
                    VStack{
                        Image(systemName: "clock" )
                            .resizable()
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .animation(.linear(duration: 1))
                        Text("18")
                            .foregroundColor(.white)
                    }
                    .padding()
                }
              
                VStack(alignment:.leading){
                    Text(item.name)
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.leading)
                        .padding(.bottom,5)
                    Text("\(item.name) is an \(item.city) model with impressive portfolio and was best model in 2018. She is famous because of her different colour style  ")
                        .padding(.leading)
                        .foregroundColor(.white)
                }
                
                
               
            }
            
        }
        .background(
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack(alignment: .center){
                            Image(systemName: "chevron.left" )
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .animation(.linear(duration: 1))
                        }
                },trailing:
                
                    Image(systemName: "person.badge.plus" )
                        .resizable()
                        .foregroundColor(.white)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .animation(.linear(duration: 1))
               )

    }
}

struct ArtistProfile_Previews: PreviewProvider {
    static var previews: some View {
        ArtistProfile(item: ArtistModel(id: UUID(), name: "N/A", city: "N/A", image: "N/A"))
    }
}
