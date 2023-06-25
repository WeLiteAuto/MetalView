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
public struct MetalView: UIViewRepresentable {
    
    public typealias UIViewType = MTKView
    
    let delegate: MetalViewDelegate
    
    public func makeUIView(context: Context) -> MTKView {
        let mtkView = MTKView()
        mtkView.delegate = delegate
        mtkView.device = delegate.device
        mtkView.clearColor = MTLClearColor(red: 0, green: 0, blue: 0, alpha: 1)
        mtkView.colorPixelFormat = .bgra8Unorm
        mtkView.depthStencilPixelFormat = .depth32Float
        return mtkView
    }
    
    public func updateUIView(_ uiView: MTKView, context: Context) {}
    
}

#elseif os(macOS)


public struct MetalView: NSViewRepresentable {
    
    
    public typealias NSViewType = MTKView
    
    let delegate: MetalViewDelegate
    
    
    public func makeNSView(context: Context) -> MTKView {
        let mtkView = MTKView()
        mtkView.delegate = delegate
        mtkView.device = delegate.device
        mtkView.clearColor = MTLClearColor(red: 0, green: 0, blue: 0, alpha: 1)
        mtkView.colorPixelFormat = .bgra8Unorm
        mtkView.depthStencilPixelFormat = .depth32Float
        return mtkView
    }
    
    public func updateNSView(_ nsView: MTKView, context: Context) {}
        
}

#endif
