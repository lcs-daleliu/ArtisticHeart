//
//  CanvasView.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-06.
//

import PencilKit
import SwiftUI

struct CanvasView: UIViewRepresentable {
    
    @Binding var canvas: PKCanvasView
    @Binding var drawing: Bool
    @Binding var type: PKInkingTool.InkType
    @Binding var color: Color

    var ink : PKInkingTool {
         PKInkingTool(type, color: UIColor(color))
    }
    
    var eraser = PKEraserTool(.bitmap)
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvas.drawingPolicy = .anyInput
        canvas.tool = drawing ? ink : eraser
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        uiView.tool = drawing ? ink : eraser
    }
    
}

