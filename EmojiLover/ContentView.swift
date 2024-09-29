//
//  ContentView.swift
//  EmojiLover
//
//  Created by L M on 30/08/24.
//

import SwiftUI

enum Emoji: String, CaseIterable { //string reprezentacio | caseiterable: protocol
    case 😂,🫠,💙,👀
}

struct ContentView: View {
    @State var selection: Emoji = .😂 //state -> (view) ui update-elodik ha ez valtozik
    
    var body: some View {
        NavigationView {
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150)) //nagy emojik
                
		//osszes opcio az enumbol
                Picker("Select Emoji", selection: $selection){ // biding
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented) //(.) ->default , itt: slider
            }
            .navigationTitle("Emoji Lovers!") //title
            .padding() //space a picker és a kepernyo szele kozott
        }
    }
}

struct ContentView_Previews: PreviewProvider { //perview miatt kell
    static var previews: some View {
        ContentView()
    }
}
