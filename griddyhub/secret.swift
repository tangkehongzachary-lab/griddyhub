import SwiftUI

struct SignView: View {
    @State private var inputText: String = ""
    var body: some View {
        VStack{
        Text("Enter Display Name (Can Change Any Time)")
        TextField("Display Name", text: $inputText)
            .padding()
        NavigationStack {
            NavigationLink {
                               ContentView()
                           } label: {
                               Text("Register")
                           }
                       }
            .navigationTitle("Home View")
                   }
               }
           }

            
        
#Preview {
    SignView()
}
