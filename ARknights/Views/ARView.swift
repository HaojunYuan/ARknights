//
//  ContentView.swift
//  ARknights
//
//  Created by Brian on 2022/5/31.
//

import SwiftUI
import RealityKit

struct ARknightsView : View {
    var body: some View {
        return ARknightsViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARknightsViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ARknightsView_Previews : PreviewProvider {
    static var previews: some View {
        ARknightsView()
    }
}
#endif
