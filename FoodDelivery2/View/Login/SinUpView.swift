import SwiftUI

struct SingUpView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var mainVM = MainViewModel.shared

    var body: some View {
        ZStack {
            // Background Image
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)  // Use .screenHeight for proper height
                .ignoresSafeArea()

            VStack {
                // Logo
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
                    .padding(.top, 50)

                Spacer()

                VStack(alignment: .leading) {
                    // Title
                    Text("Sign Up")
                        .foregroundColor(.black)
                        .font(.customfont(.semibold, fontSize: 35))
                        .padding(.bottom, 10)

                    // Subtitle
                    Text("Enter your credentials to continue")
                        .foregroundColor(.secondaryText)
                        .font(.customfont(.semibold, fontSize: 16))
                        .padding(.bottom, 40)
                }
                .padding(.horizontal, 20)

                // Username TextField
                LineTextField(title: "Username", placholder: "Enter your username", txt: $mainVM.txtUsername)
                    .padding(.bottom, 20)

                // Email TextField
                LineTextField(title: "Email", placholder: "Enter your email address", txt: $mainVM.txtEmail, keyboardType: .emailAddress)
                    .padding(.bottom, 20)

                // Password SecureField
                LineSecureField(title: "Password", placholder: "Enter your password", txt: $mainVM.txtPassword, isShowPassword: $mainVM.isShowPassword)
                    .padding(.bottom, 20)

                // Terms and Privacy
                VStack {
                    HStack {
                        Text("By continuing, you agree to our")
                            .foregroundColor(.secondaryText)
                            .font(.customfont(.semibold, fontSize: 15))

                        Text("Terms of Service")
                            .foregroundColor(.primaryApp)
                            .font(.customfont(.semibold, fontSize: 16))
                            .onTapGesture {
                                // Handle Terms of Service click
                            }
                    }

                    HStack {
                        Text("and")
                            .foregroundColor(.secondaryText)
                            .font(.customfont(.medium, fontSize: 15))

                        Text("Privacy Policy.")
                            .foregroundColor(.primaryApp)
                            .font(.customfont(.semibold, fontSize: 16))
                            .onTapGesture {
                                // Handle Privacy Policy click
                            }
                    }
                }
                .padding(.bottom, 30)

                // Get Started Button
                Button(action: {
                    // Handle Button Action
                }) {
                    Text("Get Started")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color.primaryApp)
                        .cornerRadius(25)
                        .padding(.horizontal, 20)
                }
                .padding(.bottom, 40)
            }
            .padding(.top, 30)
        }
        .navigationBarHidden(true)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SingUpView()
}

