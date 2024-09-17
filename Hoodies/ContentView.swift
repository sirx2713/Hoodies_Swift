//
//  ContentView.swift
//  Hoodies
//
//  Created by Tafadzwa Alexander Razaro on 2024/09/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchHoodie: String = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(Color("ColorBG"))
                .ignoresSafeArea()
            ScrollView{
                VStack {
                    HStack {
                        VStack(alignment: .leading){
                            Text("Hi Alexander")
                                .foregroundStyle(Color.black)
                            Text("What is your outfit Today?")
                                .foregroundStyle(Color.black)
                                .font(.system(size: 20, weight: .bold))
                        }
                        Spacer()
                        ZStack {
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(Color.white)
                            Image(systemName: "pin.fill")
                                .foregroundStyle(Color.black)
                        }
                    }
                    .padding(.bottom, 30)
                    Spacer()
                    
                    TextField("Search", text: $searchHoodie)
                        .padding()
                        .border(Color.black, width: 1)
                        .padding(.bottom, 30)
                    ZStack{
                        Rectangle()
                            .frame(width: 375, height:  250)
                            .cornerRadius(60)
                        HStack{
                            VStack(alignment: .leading){
                                Text("Last discount")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 20, weight: .bold))
                                Text("up to 70%")
                                    .foregroundStyle(Color.green)
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.bottom)
                                Text("show Now & Get Free\nshipping to your House")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 12, weight: .light))
                            }.padding(.bottom,20)
                            Image("green")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 200)
                        }
                    }
                    
                }.padding(.horizontal, 20)
            }
        }

    }
}

#Preview {
    ContentView()
}
