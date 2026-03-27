import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            Tab("Home", systemImage: "house.fill") {
                NavigationStack{
                    Home()
                }
            }
            Tab("Library", systemImage: "music.pages.fill") {
                NavigationStack{
                    Library()
                }
            }
            Tab("Profile", systemImage: "person.circle.fill") {
                NavigationStack{
                    Profile()
                }
            }
        }
    }
}
#Preview {
    TabBar()
}
