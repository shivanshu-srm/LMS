//
//  Account Screen.swift
//  LMS
//
//  Created by shivanshu on 23/04/24.
//


import SwiftUI

struct Account_Screen: View {
    
    // Define primaryPink color constant
    let primaryPink = Color(red: 0.9882352941176471, green: 0.7294117647058823, blue: 0.6784313725490196)
    
    @State private var isDarkModeEnabled = false
    
    var body: some View {
        // Account
        
        NavigationView{
            ZStack {
                Color(red: 0.8941176533699036, green: 0.5215686559677124, blue: 0.529411792755127)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Text("Account")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.white)
                    ZStack{
                        // Frame 44
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(primaryPink)
                            .frame(width: 340, height: 116)
                        VStack(spacing: 10) {
                            HStack {
                                Image(systemName: "person.circle.fill")
                                    .font(.system(size: 46))
                                    .foregroundColor(.white)
                                    .offset(x:-10)
                                
                                // Naina Talwar
                                Text("Naina Talwar \n nainatalwar@gmail.com")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(Color.white)
                            }
                            .offset(x:-60)
                            Rectangle()
                                .foregroundColor(Color.white.opacity(0.5))
                                .frame(width:340,height: 1)
                            
                            
                            
                            HStack {
                                // Profile
                                
                                NavigationLink(destination: Profile_Screen()){
                                    
                                    Text("Profile")
                                        .font(.custom("Poppins SemiBold", size: 18))
                                        .foregroundColor(Color.white)
                                        .offset(x:30,y:-3)
                                    
                                    
                                    Spacer() // Pushes the next view to the right
                                    
                                    // Right arrow
                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 20))
                                        .foregroundColor(.white)
                                        .offset(x:-30)
                                }
                            }
                            
                        }
                        .padding(15) //
                    }
                    
                    // Frames 46
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(primaryPink)
                            .frame(width: 340, height: 74)
                        HStack{
                            //Dark Mode
                            Text("Dark Mode").font(.custom("Poppins SemiBold", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .padding(.leading,45)
                            
                            Spacer()
                            
                            Toggle(isOn: $isDarkModeEnabled) {
                                Text("") // Empty text, you can remove this line if not needed
                            }
                            .padding(.trailing, 50)
                        }
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(primaryPink)
                            .frame(width: 340, height: 74)
                        
                        HStack{
                            //Dark Mode
                            
                            NavigationLink(destination: NotificationsView()){
                                Text("Notifications").font(.custom("Poppins SemiBold", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .padding(.leading,45)
                                
                                
                                Spacer()
                                
                                //Off
                                
                                
                                
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                        }
                        .padding(.trailing, 45)
                        
                        
                    }
                    
                    //Manage Notification Settin...
                    Text("Manage Notification Settings for Reminders, Alerts, Suggestions, Community Updates").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(primaryPink)
                            .frame(width: 340, height: 74)
                        
                        HStack{
                            //Dark Mode
                            NavigationLink(destination: GenreView()){
                                Text("Subscriptions").font(.custom("Poppins SemiBold", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .padding(.leading,45)
                                
                                Spacer()
                                
                                //Off
                                Text("Off").font(.custom("Poppins Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                
                                
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                            }
                            
                            
                            
                            
                        }
                        
                        .padding(.trailing, 45)
                        
                        
                        
                        
                    }
                    
                    //Manage Subscriptions relat...
                    Text("Manage Subscriptions related to Community Clubs, Limited Access books").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding(.horizontal, 29)
                    //Manage Subscriptions relat...
                    
                    
                    Spacer() // Pushes the content to the top
                }
                .padding(.top, 30) // Adds padding to the top of VStack
            }
        }
    }
}

struct Account_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Account_Screen()
    }
}

