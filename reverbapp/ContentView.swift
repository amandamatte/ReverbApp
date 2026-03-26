import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            // Chama a tela principal com o nome atualizado
            Home()
            
            // Coloca a barra flutuante por cima
            FloatingTabBar()
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
