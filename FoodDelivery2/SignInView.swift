
import SwiftUI

struct SignInView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenWidth)
                    .padding(.bottom,500)
                Spacer()
                VStack{
                    
                    
                    
                    Text("Get your groceries \nwith nectar")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 110)
                        .padding(.bottom, 10)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal, 30)
                        .padding(.top, 150)
                }
                Spacer()
                HStack{
                    NavigationLink{
                        
                    } label: {
                        Text("Continue with SignIn")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 50 )
                            .background(Color(hex: "5383EC"))
                            .cornerRadius(20)
                    }
                    .padding(.horizontal, 1)
                    .padding(.top, 350)
                    
                }
                NavigationLink{
                    
                } label: {
                    Text("Continue with SignIn")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 50 )
                        .background(Color(hex: "5383EC"))
                        .cornerRadius(20)
                }
                .padding(.top, 500)
                Divider()
                    .frame(width: 350)
                    .padding(.top, 580)
                
                VStack{
                    Text("Or connect with social media")
                        .font(.customfont(.semibold, fontSize: 15))
                        .foregroundColor(.textTitle)
                        .multilineTextAlignment(.center)
                        .padding(.top,30)
                        .padding(.bottom,15)
                }
                .padding(.top,650)
                HStack{
                    
                    Image("google")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40,height:40)
                        .padding(.trailing,130)
                }
                        .padding(.top,760)
                HStack{
                    
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40,height:40)
                        .padding(.leading,15)

                }       .padding(.top,760)

                
                
                Image("apple_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height:40)
                    .padding(.leading,140)
                    .padding(.top,757)
                    

            }
                
            }
            .navigationTitle("")
            .ignoresSafeArea()
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
        }
    }
    
    #Preview {
        SignInView()
    }
