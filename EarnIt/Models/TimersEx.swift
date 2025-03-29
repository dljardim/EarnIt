/*
 how to break out of timers on a condition
 
 */

import SwiftUI

struct TimersEx: View {
    
    @State private var timerShouldRepeat:Bool = false
    @State private var timeElapsed:Int = 0
    
    // time in seconds
    func startNonRepeatingScheduledTimer(){
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { timer in
            print("Times up - 3 seconds have passed")
        }
    }
    
    func startRepeatingScheduledTimer(){
        timerShouldRepeat = true
        Timer
            .scheduledTimer(
                withTimeInterval: 1.0,
                repeats: timerShouldRepeat) { timer in
                    timeElapsed += 1
                    print("Repeating Timer - Time: \(timeElapsed)")
                    
                    if(Int.random(in: 1...6) == 6){
                        timerShouldRepeat = false
                        timer.invalidate()
                    }
                }
    }
    
    
    var body: some View {
        VStack{
            Button{
                startNonRepeatingScheduledTimer()
            }label:{
                Text("Start Once Timer")
                    .padding()
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .buttonStyle(.borderedProminent)
            
            
            Button{
                startRepeatingScheduledTimer()
            }label:{
                Text("Start Repeating Timer")
                    .padding()
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .buttonStyle(.borderedProminent)
            
            
        }.onAppear()
        
        
    }
}

/*
 timer works on a background thread
 ui works on the main thread
 
 use DispatchQueue.main.async to update the main thread from the background thread
 */
struct TimerBugView: View {
    @State private var counter = 0
    @State private var timer: Timer?
    
    var body: some View {
        VStack {
            Text("Count: \(counter)")
                .font(.largeTitle)
            
            Button{
                timer?.invalidate()
            }label:{
                Text("invalidate Timer")
            }
            
            Button{
                timer?.invalidate()
            }label:{
                Text("invalidate Timer")
            }

        }
        .onAppear {
            timer = Timer
                .scheduledTimer(
                    withTimeInterval: 1.0,
                    repeats: true
                ) { timerRepeat in
                    DispatchQueue.main.async{
                        counter += 1
                        if(counter == 4){
//                            timerRepeat.invalidate()
//                            self.timer = nil
                        }
                    }
                
            }
        }
    }
}


/*
 changes made:
 - the timer was not being invalidated - so it did not stop
 - timer is on the background thread, while the UI is on the main thread
 -      use the dispatchqueue.main.async{} to update the UI from the timer background thread
 - set the timer to nil to free up resources ? (not sure on this one)
 */

struct CountdownView: View {
    @State private var counter = 10
    
    // free
    @State private var timer: Timer?

    
    var body: some View {
        VStack {
            Text("⏳ Countdown: \(counter)")
                .font(.largeTitle)
        }
        .onAppear {
            self.timer = Timer
                .scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                DispatchQueue.main.async{
                    counter -= 1
                    if counter == 0 {
                        print("🎉 Countdown finished!")
                        timer.invalidate()
                        self.timer = nil
                    }
                }
                
            }
        }
    }
}


#Preview {
//    TimersEx()
//    TimerBugView()
    CountdownView()
}
