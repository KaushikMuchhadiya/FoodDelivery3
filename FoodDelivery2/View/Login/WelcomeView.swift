
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(width: .screenWidth, height: .screenHeight)
                
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80,height: 60)
                    .padding(.bottom,10)
                    
                Text("Welcome\n to our Store")
                    .foregroundColor(.white)
                    .font(.customfont(.semibold, fontSize: 50))
                    .multilineTextAlignment(.center)
                    
                Text("Get your groceries fast")
                    .font(.customfont(.medium ,fontSize: 20))
                    .foregroundColor(.white.opacity(0.6))
                    .multilineTextAlignment(.center)
                    .padding(.bottom ,25)
            
                NavigationLink{
                   SignInView()
                    
                } label: {
               
                    
                    Text("Get Started")
                           .font(.customfont(.semibold, fontSize: 18))
                           .foregroundColor(.white)
                           .multilineTextAlignment(.center)
                           .frame(minWidth: 0, maxWidth:.infinity, minHeight: 60,maxHeight: 60)
                           .background(Color.primaryApp)
                           .cornerRadius(20)
                           .padding(.bottom,5)
                           
                    
                }
                
                
             Spacer()
                    .frame(height: 75)
                
            }
            .padding(.horizontal,20)
            
        }
       .navigationTitle("")
       .navigationBarHidden(true)
       .navigationBarBackButtonHidden(true)
       .ignoresSafeArea()
    }
}

#Preview {
    NavigationView{
        WelcomeView()
    }
}
