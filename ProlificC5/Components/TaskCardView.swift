//
//  TaskCardView.swift
//  ProlificC5
//
//  Created by Omar Davidson II on 3/19/23.
//

import SwiftUI

struct TaskCardView: View {
    var body: some View {
        
        VStack(spacing: 15) {
            // cardTitle
            HStack(alignment: .top, spacing: 80) {
                VStack(alignment: .leading, spacing: 5) {
                    
                    // task title
                    Text("Buy Gift for Winter's Baby Shower 🍼")
                        .font(.title3)
                    // task subnotes
                    Text("Don't forget...")
                        .foregroundColor(Color(uiColor: .systemGray3))
                }
                
                // progress dial
                Circle()
                    .frame(width: 60, height: 60)
            }
            .padding(.vertical, 25)
            .padding(.horizontal, 3)
            
            Divider()
            
            // task date, time and type
            HStack(spacing: 20) {
                Text("Tuesday")
                Text("|")
                Text("3:15 PM")
                Text("|")
                Text("Task")
            }
            .padding(.bottom)
            .foregroundColor(Color(uiColor: .systemGray3))
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 35, style: .continuous)
            .foregroundColor(.white)
            .shadow(radius: 5)
            .padding(.vertical, 15)
        )
        .padding(.vertical, 20)
        .padding(.horizontal, 19)
        
    }
}

struct TaskCardView_Previews: PreviewProvider {
    static var previews: some View {
        TaskCardView()
    }
}
