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
            NavigationLink("back",destination:sussyfile())
            Text("Ms Ross(accomplice), \"someone framed me i didn't have this on my phone! 👁️👄👁️\"")
            Text("Then who is the culprit??")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding(10)
                .background(Color.black)
                .cornerRadius(15)
                .italic()
            
            NavigationLink("This was found on Ms Ross's phone(click to see)",destination:NextPage())
            
          
            
            
        }
        
    }
    struct NextPage: View {
        var body: some View {
            Text("myxdohd (go figure idk)")
            Text("\n\n")
        }
        
    }
}
#Preview{
    incoinvault()
}
