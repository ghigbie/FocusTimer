//
//  ContentView.swift
//  FocusTimer
//
//  Created by George Higbie on 12/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(){
            TimeBar()
            TimeLabel()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemGray4))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
