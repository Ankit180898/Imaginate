//
//  DrawingView.swift
//  Imaginate
//
//  Created by Ankit Kumar on 10/06/24.
//

import SwiftUI
import PencilKit

struct DrawingView: UIViewRepresentable {
    
    var canvasView = PKCanvasView()
    @ObservedObject var matchManager : MatchManager
    @Binding var eraserEnabled : Bool
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 5)
        canvasView.isUserInteractionEnabled = matchManager.currentlyDrawing
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
        canvasView.tool = eraserEnabled ? PKEraserTool(.vector) : PKInkingTool(.pen, color: .black, width: 5)
        canvasView.isUserInteractionEnabled = matchManager.currentlyDrawing
    }
}

#Preview {
    @State var eraser=false
    DrawingView( matchManager: MatchManager(), eraserEnabled: $eraser)
}
