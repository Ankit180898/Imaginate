//
//  DrawingView.swift
//  Imaginate
//
//  Created by Ankit Kumar on 10/06/24.
//

import SwiftUI
import PencilKit

struct DrawingView: UIViewRepresentable {
   
    
    
    class Coordinator :NSObject, PKCanvasViewDelegate{
        var matchManager: MatchManager
        init(matchManager: MatchManager) {
            self.matchManager = matchManager
        }
        func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
            //TODO send the new drawing data
        }
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(matchManager: matchManager)
    }
    
    var canvasView = PKCanvasView()
    @ObservedObject var matchManager : MatchManager
    @Binding var eraserEnabled : Bool
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 5)
        canvasView.delegate = context.coordinator
        canvasView.isUserInteractionEnabled = matchManager.currentlyDrawing
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
        canvasView.tool = eraserEnabled ? PKEraserTool(.vector) : PKInkingTool(.pen, color: .black, width: 5)
        canvasView.isUserInteractionEnabled = matchManager.currentlyDrawing
    }
}

struct DrawingView_Previews:PreviewProvider{
    @State static var eraser = false
    
    static var previews: some View{
        DrawingView(matchManager: MatchManager(), eraserEnabled: $eraser)
    }
}
