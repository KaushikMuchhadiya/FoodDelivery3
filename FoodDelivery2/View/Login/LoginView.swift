import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var mainVM = MainViewModel.shared
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background Image
                Image("bottom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenHeight)
                    .ignoresSafeArea()
                
                VStack {
                    // Logo Image
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.top, 120)
                    
                    Spacer(minLength: 20)
                    
                    // Main Content VStack
                    VStack(alignment: .leading, spacing: 15) {
                        // Title
                        Text("Login")
                            .foregroundColor(.black)
                            .font(.customfont(.semibold, fontSize: 35))
                        
                        // Subtitle
                        Text("Enter your credentials to continue")
                            .foregroundColor(.secondaryText)
                            .font(.customfont(.semibold, fontSize: 16))
                        
                        // Email TextField
                        LineTextField(
                            title: "Email",
                            placholder: "Enter your email address",
                            txt: $mainVM.txtEmail,
                            keyboardType: .emailAddress
                        )
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                        
                        // Password SecureField
                        LineSecureField(
                            title: "Password",
                            placholder: "Enter your password",
                            txt: $mainVM.txtPassword,
                            isShowPassword: $mainVM.isShowPassword
                        )
                        .padding(.horizontal, 20)
                        .padding(.bottom, 30)
                        
                        // Forgot Password Link
                        Button {
                            // Handle forgot password action
                        } label: {
                            Text("Forgot Password?")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundColor(.primaryText)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                        .padding(.bottom, 25)
                        
                        // Login Button
                        Button(action: {
                            // Handle login action
                        }) {
                            Text("Log In")
                                .font(.customfont(.semibold, fontSize: 18))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(Color.primaryApp)
                                .cornerRadius(25)
                                .padding(.horizontal, 20)
                        }
                        .padding(.top, 10)
                        
                        // Don't have an account? Sign Up Section
                        HStack {
                            Text("Don't have an account?")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundColor(.secondaryText)
                            
                            NavigationLink(destination: SignUpView()) {
                                Text("Sign Up")
                                    .font(.customfont(.semibold, fontSize: 14))
                                    .foregroundColor(.primaryApp)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 20)
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 160)
                    
                    Spacer() // Push content up if there's extra space
                }
            }
            .navigationBarHidden(true) // Hide the navigation bar on this view
        }
    }
}

struct SignUpView: View {
    var body: some View {
        VStack {
            Text("Sign Up View")
                .font(.largeTitle)
                .padding()
            
            // Add your sign-up form and content here
        }
        .navigationTitle("Sign Up") // Optional: Add a title for the navigation bar
    }
}

#Preview {
    LoginView()
}
