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
                    HStack {
                        Spacer() // Center the logo horizontally
                        Image("color_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50) // Adjust size as needed
                        Spacer() // Center the logo horizontally
                    }
                    .padding(.top, 60) // Padding from top to keep the logo at the top
                    
                    Spacer(minLength: 40) // Adds space between the logo and next content
                    
                    // Main Content VStack
                    VStack(alignment: .leading, spacing: 15) {
                        // Title
                        Text("Login")
                            .foregroundColor(.black)
                            .font(.customfont(.semibold, fontSize: 30))
                        
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
                        .padding(.top, 20)
                      
                        // Password SecureField
                        LineSecureField(
                            title: "Password",
                            placholder: "Enter your password",
                            txt: $mainVM.txtPassword,
                            isShowPassword: $mainVM.isShowPassword
                        )
                        .padding(.horizontal, 20)
                        .padding(.top,20)
                      
                        
                        // Forgot Password Link
                        HStack {
                            Spacer()
                            Button {
                                // Handle forgot password action
                            } label: {
                                Text("Forgot Password?")
                                    .font(.customfont(.medium, fontSize: 14))
                                    .foregroundColor(.primaryText)
                            }
                        }
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
                    .padding(.bottom, 80)
                    
                    Spacer() // Push content up if there's extra space
                }
                VStack {
                    HStack {
                        BackButton {
                            SignInView()
                        }
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.top, 60)
                .padding(.horizontal, 20)
            
            
            }
            .navigationBarHidden(true) // Hide the navigation bar on this view
            .navigationBarBackButtonHidden(true) // Remove the back button
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
