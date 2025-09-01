import SwiftUI
import SwiftData

struct TabberView: View {
    @State private var thing = 0
    var body: some View {
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
            }
        }
    }
}
    #Preview {
        TabberView()
    }
