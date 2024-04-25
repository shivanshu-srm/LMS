////
////  Profile Screen.swift
////  LMS
////
////  Created by shivanshu on 23/04/24.
////

import SwiftUI

struct Profile_Screen: View {
    
    // Define primaryPink color constant
    let primaryPink = Color(red: 0.9882352941176471, green: 0.7294117647058823, blue: 0.6784313725490196)
    
    var body: some View {
        // Profile
        ZStack {
            Color(red: 0.8941176533699036, green: 0.5215686559677124, blue: 0.529411792755127)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Profile")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color.white)
                    .offset(y:-10)
                
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 74))
                    .foregroundColor(.white)
             

                           
                           
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(primaryPink)
                    .frame(width: 340, height: 210)
                    .overlay(
                        VStack(spacing: 30) {
                            ProfileField(title: "Name", value: "Naina Talwar", isLastField: false)
                            ProfileField(title: "Date of Birth", value: "31/10/2003", isLastField: false)
                            ProfileField(title: "Mobile", value: "9876543210", isLastField: false)
                            ProfileField(title: "Email", value: "nainatalwar@gmail.com", isLastField: true)
                        }
                    )
                
                Spacer() // Pushes the content to the top
            }
            .padding(.top, 30) // Adds padding to the top of VStack
        }
    }
}

struct ProfileField: View {
    let title: String
    let value: String
    let isLastField: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(title)
                    .font(.custom("Poppins SemiBold", size: 18))
                    .foregroundColor(Color.white)
                Spacer()
                Text(value)
                    .font(.custom("Poppins Regular", size: 18))
                    .foregroundColor(Color.white)
                    .padding(.leading, 20)
            }
            .padding(.horizontal, 20)
            if !isLastField {
                Rectangle()
                    .foregroundColor(Color.white.opacity(0.5))
                    .frame(width:340,height: 1)
                    .offset(y:12)
            }
        }
    }
}

struct Profile_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Profile_Screen()
    }
}
