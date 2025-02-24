

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        ZStack{
            ScrollView{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 27)
                
                
                VStack{
                    
                    SearchTextField(searchText: .constant(""), placeholder: "Search products")
                        .padding()
                    
                    
                    
                    Image("banner_top")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal,15)
                    
                   
                    SectionTitleAll(title: "Best Selling"){
                        
                    }
     
                    
                }
                
                
            }
        }
    }
}
    
    #Preview{
        HomeView()
    }

