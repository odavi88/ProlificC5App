//
//  NewTaskView.swift
//  ProlificC5
//
//  Created by Omar Davidson II on 3/19/23.
//

import SwiftUI

struct NewTaskView: View {
    
    @State var titleField: String
    @State var locationField: String
    @State private var date = Date()
    
    var body: some View {
        
        VStack(spacing: 10) {
            Text("New Task")
                .font(.largeTitle)
                .fontWeight(.semibold)
            VStack(spacing: 25) {
                TextField("Title", text: $titleField)
                    .font(.title3)
                    .padding(.vertical, 15)
                    .padding(.horizontal)
                    .background(
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .foregroundColor(Color(uiColor: .white))
                            .shadow(radius: 8, x: 2, y: 7)
                    )
                
                TextField("Location", text: $locationField)
                    .font(.title3)
                    .padding(.vertical, 15)
                    .padding(.horizontal)
                    .background(
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .foregroundColor(Color(uiColor: .white))
                            .shadow(radius: 8, x: 2, y: 7)
                    )
            }
            .padding(10)
            
            // date/time picker
            DatePicker(
                "Date/Time", selection: $date, displayedComponents: [.date, .hourAndMinute]
            
            ).datePickerStyle(.graphical)
                .padding()
            
            Spacer()
            
            // "create task" button
            
                Button {
                    //
                } label: {
                    Text("Create Task")
                        .padding(.vertical, 17)
                        .padding(.horizontal, 145)
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 40, style: .continuous)
                                .foregroundColor(.accentColor)
                                .shadow(radius: 8, x: 2, y: 7)
                        )
            }
            

            
        }
        .padding()
        
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(titleField: "", locationField: "")
    }
}
