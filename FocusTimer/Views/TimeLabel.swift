//
//  TimeLabel.swift
//  FocusTimer
//
//  Created by George Higbie on 12/21/20.
//

import SwiftUI

struct TimeLabel: View {
    
    @StateObject var focusTimer: FocusTimer = FocusTimer()
    
    var remainingTime: String { String(Int(focusTimer.timeRemaining))}
    let completedIcon: String = "checkmark.circle.fill"
    
    var body: some View {
        ZStack{
            Text(remainingTime)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width: 100, height: 100, alignment:.center)
                .foregroundColor(Color(.systemGray))
                .onTapGesture(perform: focusTimer.runFocusTimer)
                .onLongPressGesture(perform:
                    focusTimer.reset)
//            Image(systemName: completedIcon)
//                .font(.largeTitle)
//                .frame(width: 100, height: 100, alignment: .center)
//                .foregroundColor(Color(.systemGreen))
        }
    }
}

