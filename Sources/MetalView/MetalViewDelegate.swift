//
//  File.swift
//  
//
//  Created by Aaron Ge on 2023/6/25.
//

import MetalKit

public protocol MetalViewDelegate: MTKViewDelegate {
    var device: MTLDevice { get }
    init(device: MTLDevice)
    
    func setupMetal()
    func setupBuffer()
}


