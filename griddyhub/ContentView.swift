import SwiftUI
import SwiftData



struct ContentView: View {
    @State private var thing = 0
    var body: some View {
        Text("Advertisement Space Up Here")
            .navigationBarBackButtonHidden(true)
        NavigationStack{
            TabView{
                Tab("Recieved", systemImage:
                        "tray.and.arrow.down.fill") {
                    GontentView()
                }
                Tab("Sent", systemImage:
                        "tray.and.arrow.up.fill") {
                    SomethingView()
                }
                Tab("Send", systemImage:
                        "square.and.arrow.up") {
                    SendView()
                }
                Tab("Contacts", systemImage:
                        "tray") {
                    ContactView()
                }
            }
        }
    }
}
    #Preview {
        ContentView()
    }

