//
//  Render.swift
//  Render
//
//  Created by Yuki Takei on 4/20/16.
//
//

@_exported import C7
@_exported import Renderable
@_exported import Mustache
@_exported import Suv

public typealias TemplateData = MustacheBoxable

public struct MustacheViewEngine: Renderable {
    public var fileExtension = "mustache"
    public let templateData: TemplateData

    public init(templateData: TemplateData){
        self.templateData = templateData
    }

    public func render(_ path: String, result: ((Void) throws -> Data) -> Void) {
        FS.readFile("\(path).\(fileExtension)") { getData in
            result {
                let data = try getData()
                let template = try Template(string: "\(data)")
                let compiled = try template.render(box: Box(boxable: self.templateData))
                
                return compiled.data
            }
        }
    }
}
