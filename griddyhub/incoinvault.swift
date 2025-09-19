//
//  incoinvault.swift
//  griddyhub
//
//  Created by Rayson Ng on 19/9/25.
//

import SwiftUI

struct incoinvault: View {
    var body: some View {
        NavigationStack{
            Text("Mrs Ross(accomplish), \"I was just trying to help my student\"")
            Text("Then who is the culprit??")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding(10)
                .background(Color.black)
                .cornerRadius(15)
                .italic()
            
            NavigationLink("This was found on Mrs ross's phone(click to see)",destination:NextPage())
            
            
        }
        
    }
    struct NextPage: View {
        var body: some View {
            Text("A encrypted message?")
            Text("\n\n")
        }
        
    }
}
#Preview{
    incoinvault()
}
