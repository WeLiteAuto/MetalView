// The Swift Programming Language
// https://docs.swift.org/swift-book

#if os(iOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

import MetalKit
import SwiftUI

#if os(iOS)
struct MetalView: UIViewRepresentable {
    
    typealias UIViewType = MTKView
    
    let delegate: MetalViewDelegate
    
    func makeUIView(context: Context) -> MTKView {
        let mtkView = MTKView()
        mtkView.delegate = delegate
        mtkView.device = delegate.device
        mtkView.clearColor = MTLClearColor(red: 0, green: 0, blue: 0, alpha: 1)
        mtkView.colorPixelFormat = .bgra8Unorm
        mtkView.depthStencilPixelFormat = .depth32Float
        return mtkView
    }
    
    func updateUIView(_ uiView: MTKView, context: Context) {}
    
}

#elseif os(macOS)


struct MetalView: NSViewRepresentable {
    
    
    typealias NSViewType = MTKView
    
    let delegate: MetalViewDelegate
    
    
    func makeNSView(context: Context) -> MTKView {
        let mtkView = MTKView()
        mtkView.delegate = delegate
        mtkView.device = delegate.device
        mtkView.clearColor = MTLClearColor(red: 0, green: 0, blue: 0, alpha: 1)
        mtkView.colorPixelFormat = .bgra8Unorm
        mtkView.depthStencilPixelFormat = .depth32Float
        return mtkView
    }
    
    func updateNSView(_ nsView: MTKView, context: Context) {}
        
}

#endif
