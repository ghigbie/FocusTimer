//
//  TimeLabel.swift
//  FocusTimer
//
//  Created by George Higbie on 12/21/20.
//

import SwiftUI

struct TimeLabel: View {
    var body: some View {
        ZStack{
            Text("10")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width: 100, height: 100, alignment:.center)
                .foregroundColor(Color(.systemGray))
        }
    }
}

