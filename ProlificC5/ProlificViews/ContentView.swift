//
//  ContentView.swift
//  ProlificC5
//
//  Created by Omar Davidson II on 3/19/23.
//

import SwiftUI

struct ContentView: View {
    
    var taskViewModle: [TaskCardModel] = [
    
        TaskCardModel(cardTitle: "improve resume", cardNotes: "google resume helpers", date: .now, time: .current, taskStatus: .completed),
        TaskCardModel(cardTitle: "", cardNotes: "", date: .now, time: .current, taskStatus: .inProgress),
        TaskCardModel(cardTitle: "", cardNotes: "", date: .now, time: .current, taskStatus: .upComing)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    ForEach(taskViewModle) { task in
                        VStack(spacing: 15) {
                            // cardTitle
                            HStack(alignment: .top, spacing: 80) {
                                VStack(alignment: .leading, spacing: 5) {
                                    
                                    // task title
                                    Text(task.cardTitle)
                                        .font(.title3)
                                    // task subnotes
                                    Text(task.cardNotes)
                                        .foregroundColor(Color(uiColor: .systemGray3))
                                }
                                
//                                // progress dial
//                                Circle()
//                                    .frame(width: 60, height: 60)
                            }
                            .padding(.vertical, 25)
                            .padding(.horizontal, 3)
                            
                            Divider()
                            
                            // task date, time and type
                            HStack(spacing: 20) {
                              //  Text(task.date) 
                                Text("\(task.date)")
                                Text("|")
                               // Text(task.time)
                                Text("\(task.time)")
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
                        .offset(x:0, y: -15)
                }
            }
//            .padding()
            .navigationTitle("Welcome, User!")
            .toolbar {
                Image(systemName: "plus.circle")
                    .fontWeight(.semibold)
                Image(systemName: "magnifyingglass")
                    .fontWeight(.semibold)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
