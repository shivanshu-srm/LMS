//
//  NotificationsView.swift
//  LMS
//
//  Created by shivanshu on 23/04/24.
//

import SwiftUI

struct NotificationsView: View {
    @State private var remindersEnabled = false
    @State private var alertsEnabled = false
    @State private var suggestionsEnabled = false
    @State private var communityUpdatesEnabled = false
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 30) {
                Text("Notifications")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 13)
                    .offset(y:70)
                
                VStack(spacing: 16) {
                    NotificationToggleView(
                        title: "Reminders",
                        description: "Receive Reminders related to actions like approaching due date, Library Event or reservation schedule",
                        isOn: $remindersEnabled
                    )
                    NotificationToggleView(
                        title: "Alerts",
                        description: "Receive Alerts for New Arrivals, Holidays, Off timings",
                        isOn: $alertsEnabled
                    )
                    NotificationToggleView(
                        title: "Suggestions",
                        description: "Receive Suggestions based on past borrowing data and preferences",
                        isOn: $suggestionsEnabled
                    )
                    NotificationToggleView(
                        title: "Community Updates",
                        description: "Receive notifications on Member Interactions, book club discussions and other community updates",
                        isOn: $communityUpdatesEnabled
                    )
                }
                .padding(.top, 63)
                .padding(.horizontal, 20)
                
                Spacer()
            }
            .background(Color(red: 228 / 255, green: 133 / 255, blue: 135 / 255))
            .edgesIgnoringSafeArea(.all)
        }
    }
}
struct NotificationToggleView: View {
    let title: String
    let description: String
    @Binding var isOn: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Toggle(isOn: $isOn) {
                Text(title)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)
            }
            .toggleStyle(SwitchToggleStyle(tint: isOn ? Color.green : Color(red: 233 / 255, green: 233 / 255, blue: 234 / 255))) // Change tint color to green when on

        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(red: 252 / 255, green: 186 / 255, blue: 173 / 255))
        .cornerRadius(20)
        
        Text(description)
            .font(.system(size: 14, weight: .regular))
            .foregroundColor(.white)
            .padding(.horizontal)
            .fixedSize(horizontal: false, vertical: true)
            .padding(.top, -10)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    NotificationsView()
}
