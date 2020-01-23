// swift-tools-version:5.0
//
//  Package.swift
//  SwiftJava
//
//  Created by John Holdsworth on 20/07/2016.
//  Copyright (c) 2016 John Holdsworth. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "java_lang",
    products: [
        .library(name: "java_lang", targets: ["java_lang"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftJava/java_swift.git", .branch("master")),
        ],
    targets: [
        .target(name: "java_lang", dependencies: ["java_swift"], path: "Sources/"),
    ]
)
