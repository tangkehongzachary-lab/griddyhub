import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var thing = 0
    
    var body: some View {
        TabView {
            NavigationStack {
                homepage()
                    .navigationTitle("Homepage")
                    .navigationBarBackButtonHidden(true)
            }
            .tabItem {
                Label("Homepage", systemImage: "house.fill")
            }
            
            NavigationStack {
                sussyfile()
                    .navigationTitle("sussyfile.app")
            }
            .tabItem {
                Label("sussyfile.app", systemImage: "folder.fill")
            }
            
            NavigationStack {
                ContactView()
                    .navigationTitle("Contacts")
            }
            .tabItem {
                Label("Contacts", systemImage: "tray")
            }
        }
    }
}

#Preview {
    ContentView()
}
