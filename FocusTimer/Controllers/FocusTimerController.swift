//
//  FocusTimerController.swift
//  FocusTimer
//
//  Created by George Higbie on 12/28/20.
//

import SwiftUI

class FocusTimer: ObservableObject {
    
    @Published var timeStart: Float = 0
    @Published var timeRemaining: Float = 0
    
    var timer: Timer?
    
    func runFocusTimer(){
        print("Timer Activated")
        timeStart = 25
        timeRemaining = 25
        
        print("Time start is \(timeStart)")
        print("Time remaining is \(timeRemaining)")
    }
    
    func reset(){
        print("Timer Reset")
        timeStart = 0
        timeRemaining = 0
        
        print("Time start is \(timeStart)")
        print("Time remaining is \(timeRemaining)")
    }
    
    func initializeTimer(){
        timeStart = 25
        timeRemaining = 25
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){
            timer in self.runTimerActions()
        }
    }
    
    func runTimerActions(){
        reduceTime()
        checkRemaingTime()
    }
    
    func reduceTime(){
        timeRemaining -= 1
    }
    
    func checkRemainingTime(){
        print("Time remaining is \(timeRemaining)")
    }

}
