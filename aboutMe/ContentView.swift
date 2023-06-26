//
//  ContentView.swift
//  aboutMe
//
//  Created by scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    var body: some View {
        ZStack {
            Color(.green) .ignoresSafeArea()
            VStack{
                Text("Who is Archita?")
                    .font(.largeTitle)
                    .foregroundColor(.teal)
                
                Image("IMG_6992")
                    .border(Color.teal, width: 6)
                
            HStack{
                Text("Click")
                    .font(.title2)
                Button("HERE"){
                    self.showDetails = true
                }//end of button
                .font(.subheadline)
                .buttonStyle(.bordered)
                .tint(.purple)
                Text("to find out!!!")
                    .font(.title2)
                
                
            }//end of vstack
        }//end of hstack
    }//end of zstack
        
        
        .sheet(isPresented: $showDetails){
            VStack {
                
                Text("All About Archita:")
                    .font(.largeTitle)
                Button(" <-- Back"){
                    self.showDetails = false
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple)
            
                
                
                VStack{
                    Text("I play soccer")
                    HStack{
                        Image("soccer")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 100.0, height: 100.0)

                    }
                }
                VStack{
                    Text("Baking and playing video games are things I enjoy")
                    HStack{
                        Image("baking")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 100.0, height: 100.0)
                    }
                }
                VStack{
                    Text("I like hanging out with my friends and my sister")
                    HStack{
                        Image("friends")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 100.0, height: 100.0)
                        Image("friends2")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 100.0, height: 100.0)
                        Image("sister")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 100.0, height: 100.0)
                    }
                }
                VStack{
                    Text("I (used to) do bharatnatyam dance")
                    HStack{
                        Image("dance")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 100.0, height: 100.0)
                        
                    }
                }
            }
        }
        
    }//end of body
}//end of struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
