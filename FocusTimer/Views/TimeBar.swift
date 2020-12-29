//
//  TimeBar.swift
//  FocusTimer
//
//  Created by George Higbie on 12/21/20.
//

import SwiftUI

struct TimeBar: View {
    let width: CGFloat = 5
    let height: CGFloat = 350
    let cornerRadius: CGFloat = 5
    let progresBarHeight: CGFloat = 300
    
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(Color(.systemGray5))
                .frame(width: width, height: height, alignment: .center)
            VStack{
                Spacer()
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(Color(.systemGreen))
                    .frame(width: width, height: progresBarHeight, alignment: .center)
            }
        }.frame(width: width, height: height, alignment: .center)
    }
}


