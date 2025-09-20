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
            Image("INCoins")
                .frame(width: 150, height: 400)
            Text("Ms Ross(accomplice), \"someone framed me,I didn't do it! I was just trying to help a student! 👁️👄👁️\"")
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
            Text("whats this?")
            Text("\n myxdohd ")
                .font(.largeTitle)
                .fontWeight(.bold)
                .italic()
            
        }
        
    }
}
#Preview{
    incoinvault()
}
