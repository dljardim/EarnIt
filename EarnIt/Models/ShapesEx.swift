/*
 
 _devNotes
 
 Creating a rectangle shapes using frames, cgRects, and x, y positioning using paths
 
- CGRect (frame) input parameter will set the size of the view
    - CGPoint - are points on that cgRect
        - x, y positions begin at the top left as minimum values
        - x, y positions increase right and down
    use CgRect to set min, mid, max Values
               
    Using paths
        - move to starting 1st point point
        - addLine a line to the 2nd part
        - closePath to close the shape back to the 1st starting point
    
    rectangle - positions start at the top left and progress right and down
        - cgRect.minX, cgRect.minY would be the top left
        - cgRect.maxX, cgRect.minY is the top right
        - cgRect.maxX, cgRect.maxY would be the bottom right
        - cgRect.minX, cgRect.maxY would be the botttom left

 */

import SwiftUI


struct ShapesEx: View {
 
    var body: some View {
        Text("yo")
        
        Button{
            
        }label:{}
    }
}

struct MyRect: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY)) // bottom left
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) // top left
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // top right
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) // bottom right
        path.closeSubpath() // bottom left
        
        
        return path
    }
}

struct MyTriangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY)) // bottom left
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY)) // middle top
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) //
        path.closeSubpath() // bottom left
        return path
    }
}

struct MyShape2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) // ❌ Mistake?
        path.closeSubpath()
        return path
    }
}

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY)) // Top
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY)) // Left
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY)) // Bottom
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY)) // Right
        path.closeSubpath()
        return path
    }
}


struct ReadableColors: View {
    @State private var backgroundColor = Color.random()
    @State private var foregroundColor = Color.random()
    
    var body: some View {
        VStack {
            Text("Readable Text")
                .font(.title)
                .bold()
                .foregroundColor(
                    .red
                )
                .padding()
                .background(backgroundColor)
                .cornerRadius(10)
            
            Button("Generate New Colors") {
                backgroundColor = Color.random()
                foregroundColor = Color.random()
                  
            }
            .padding()
        }
    }

}








#Preview {
    ShapesEx()
//    ReadableColors()
}
