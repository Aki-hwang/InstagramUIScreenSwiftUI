//
//  ContentView.swift
//  InstagramUIScreenSwiftUI
//
//  Created by Chuljin Hwang on 2022/02/24.
//

import SwiftUI
extension Image{
    func myImageModifier() -> some View{
        self
            .resizable()
            .scaledToFit()
            .frame(width: 64, height: 64)
            .cornerRadius(64)
            .overlay(
                Capsule().stroke(LinearGradient(gradient: .init(colors: [Color.red, Color.yellow]), startPoint: .topTrailing, endPoint: .bottomLeading),lineWidth: 5)
            )
            .padding(.horizontal,5)
    }
    func myBookmarkModifier() -> some View{
        self
            .resizable()
            .scaledToFit()
            .frame(width: 32, height: 32)
            .cornerRadius(32)
            .overlay(
                Capsule().stroke(LinearGradient(gradient: .init(colors: [Color.red, Color.yellow]), startPoint: .topTrailing, endPoint: .bottomLeading),lineWidth: 3)
            )
            .padding(.horizontal,5)
        
    }
}

struct ContentView: View {
    private var MenuView : some View {
        HStack{
            Text("Instagram")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "plus.app")
                .padding(.horizontal,5)
            Image(systemName: "heart")
                .padding(.horizontal,5)
            Image(systemName: "paperplane")
                .padding(.horizontal,5)
        }
        .font(.system(size:30))
        .padding(.bottom, -10)
    }
    private var FirstTabViewTop : some View{

            ScrollView(.horizontal, showsIndicators: false ){
                HStack {
                    VStack {
                        Image("1")
                            .myImageModifier()
                            .overlay(
                                Image(systemName: "plus.circle.fill")
                                    .renderingMode(.original)
                                    .font((.system(size: 20)))
                                    .background(
                                        Capsule().stroke(Color.black, lineWidth: 3))
                                , alignment: .bottomTrailing
                        )
                        Text("My Story")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                    
                    VStack {
                        Image("2")
                            .myImageModifier()
                        Text("Jessica")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                    VStack {
                        Image("3")
                            .myImageModifier()
                        Text("July")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                    VStack {
                        Image("4")
                            .myImageModifier()
                        Text("Maui")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                    VStack {
                        Image("5")
                            .myImageModifier()
                        Text("John")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                }//HSTACK
                .padding(.horizontal)
                .padding(.top)
                Divider()
                    .background(Color.white)
            }
        }

    private var FirstTabViewBottom : some View {
        ScrollView(.vertical, showsIndicators: false){
            
            VStack {
                HStack {
                    VStack {
                        Image("3")
                            .myBookmarkModifier()
                    }
                    VStack(alignment: .leading, spacing: 0) {
                        Text("#harneyadsons")
                            .fontWeight(.semibold)
                        Text("nycand_official")
                            .font(.system(.footnote, design: .rounded))
                    }
                    Spacer()
                    Image(systemName: "ellipsis")
                        .font(.system(size:28))
                }//HSTACK
                
                Image("Feed-Image2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: 300)
                    
                HStack {
                    Image(systemName: "heart")
                        .padding(.horizontal,5)
                    Image(systemName: "message")
                        .padding(.horizontal,5)
                    Image(systemName: "paperplane")
                        .padding(.horizontal,5)
                    Spacer()
                    Image(systemName: "bookmark")
                        .padding(.horizontal,5)
                }
                
                .font(.system(size:25))
                HStack() {
                    Text("Like")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                    Text("867")
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.top, 10)
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ")
                    .frame(maxWidth:.infinity, alignment:.leading)
                    .multilineTextAlignment(.leading)
                Text("2022.10.9")
                    .foregroundColor(.gray)
                    .frame(maxWidth:.infinity, alignment:.leading)
                    .padding(.top,5)
            } // VSTACK
            .padding(.top)
        }
        
    }
    

    private var SecondTabView : some View{
        Text("2nd hello")
    }
    
    var body: some View {
       
            TabView {
                VStack{
                    MenuView
                    FirstTabViewTop
                    FirstTabViewBottom
                    Divider()
//                        .background(Color.gray)
                }
               
                    .badge(10)
                    .tabItem {
                        Image(systemName: "house.fill")
                        
                    }
                SecondTabView
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        
                    }
                Text("3 Tab")
                    .tabItem {
                        Image(systemName: "play.rectangle")
                      
                    }
                Text("4 Tab")
                    .tabItem {
                        Image(systemName: "cart")
                       
                    }
                Text("5 Tab")
                    .tabItem {
                        Image(systemName: "person.circle")
                        
                    }
            }
            .font(.headline)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
