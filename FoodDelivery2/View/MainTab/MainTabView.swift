import SwiftUI

struct MainTabView: View {
    var body: some View {
        ZStack{
            HStack{
                TabButton(title: "Shop", icon: "storefront", isSelect: true) {
                    print("Shop tapped")
                }
                TabButton(title: "Explor", icon: "magnifyingglass", isSelect: true) {
                    print("Shop tapped")
                }
                TabButton(title: "Cart", icon: "cart", isSelect: true) {
                    print("Shop tapped")
                }
                TabButton(title: "Favorite", icon: "heart", isSelect: true) {
                    print("Shop tapped")
                }
                TabButton(title: "Account", icon: "person", isSelect: true) {
                    print("Shop tapped")
                }
            }
            .padding(.horizontal,15)
            .padding(.top,700)
            .background(Color.white)
            .cornerRadius(19)
            
            
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        
    }
}
#Preview {
    MainTabView()
}
