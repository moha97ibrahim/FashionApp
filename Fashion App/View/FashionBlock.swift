//
//  FashionBlock.swift
//  Fashion App
//
//  Created by Mohammed Ibrahim on 6/7/21.
//

import SwiftUI



struct FashionBlock: View {
    @State var isRecommended : Bool = true
    @State var isNewModels : Bool = false
    @State var is2021Show : Bool = false
    @State private var movieController = MovieController()
    var body: some View {
        NavigationView {
            
            ZStack(alignment:.top){
                ScrollView{
                    VStack(){
                        HStack{
                            Text("Fashion Weak")
                                .bold()
                                .font(.largeTitle)
                                .foregroundColor(.purple)
                            Spacer()
                        }
                        .padding(.leading)
                        
                        HStack{
                            Text("2021 Fashion show in Paris")
                                .font(.subheadline)
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.leading)
                        
                        HStack{
                            Text("Explore")
                                .bold()
                                .font(.title)
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.leading)
                        .padding(.top,25)
                        
                        HStack{
                            Text("Recommended")
                                .font(.footnote)
                                .foregroundColor(isRecommended ? .purple : .black)
                                .onTapGesture(perform: {
                                    self.isRecommended = true
                                    self.isNewModels = false
                                    self.is2021Show = false
                                })
                                .onAppear{
                                    if(isRecommended){
                                        
                                    }
                                }
                            Spacer()
                            Text("New Models")
                                .font(.footnote)
                                .foregroundColor(isNewModels ? .purple : .black)
                                .onTapGesture(perform: {
                                    self.isRecommended = false
                                    self.isNewModels = true
                                    self.is2021Show = false
                                })
                            Spacer()
                            Text("2021 Show")
                                .font(.footnote)
                                .foregroundColor(is2021Show ? .purple : .black)
                                .onTapGesture(perform: {
                                    self.isRecommended = false
                                    self.isNewModels = false
                                    self.is2021Show = true
                                })
                        }
                        .padding(15)
                        ScrollView(.horizontal) {
                            HStack{
                                ForEach(isRecommended ?  movieController.modelData : isNewModels ? movieController.NewData : movieController.Data2021 ){item in
                                    
                                    NavigationLink(destination: ArtistProfile(item: ArtistModel(id: UUID(), name: item.name, city: item.city, image: item.image))) {
                                        ArtistItemView(item: item)
                                            .frame( height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .padding(20)
                                    }
                                    .transition(.opacity)
                                    .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                                    
                                    
                                }
                            }
                        }
                        
                        Image("picland")
                            .resizable()
                            .interpolation(.none)
                            .frame(height:200)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                            .padding(20)
                            .shadow(color: Color.green.opacity(0.3), radius: 25, x: -20.0, y: 20.0)
                            .shadow(color: Color.purple.opacity(0.3), radius: 25, x: 20.0, y: 20.0)
                        
                    }
                }
            }
            .navigationBarHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
            .navigationBarItems(leading:
                                    VStack(alignment: .leading){
                                        Capsule()
                                            .frame(width: 30, height: 3)
                                            .animation(.easeInOut)
                                        Capsule()
                                            .frame(width: 20, height: 3)
                                            .animation(.easeInOut)
                                    }
                                , trailing: Image(systemName: "magnifyingglass" )
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .animation(.linear(duration: 1)))
            
        }
        .animation(.easeIn(duration: 0.6))
        
    }
}

struct FashionBlock_Previews: PreviewProvider {
    static var previews: some View {
        FashionBlock()
    }
}






