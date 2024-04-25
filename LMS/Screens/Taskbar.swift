//
//  Taskbar.swift
//  LMS
//
//  Created by shivanshu on 23/04/24.
//

import SwiftUI

struct Taskbar: View {
    var body: some View {
        HStack {
            
            Image(systemName: "person.3.fill")
                .font(.system(size: 24))
            
            Spacer()
            
            Image(systemName: "calendar.badge.clock")
                .font(.system(size: 24))
            
            Spacer()
            
            Image(systemName: "antenna.radiowaves.left.and.right")
                .font(.system(size: 24))
            Spacer()
            Image(systemName: "hand.raised.fill")
                       .font(.system(size: 24))
                       
        }
        .padding()
        .background(Color.gray.opacity(0.2))
    }
}

struct Taskbar_Previews: PreviewProvider {
    static var previews: some View {
        Taskbar()
    }
}
