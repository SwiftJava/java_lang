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
    dependencies: [
        .Package(url: "https://github.com/SwiftJava/java_swift.git", versions: Version(2,0,0)..<Version(3,0,0)),
//        Package(url: "https://github.com/SwiftJava/java_util.git", versions: Version(1,0,0)..<Version(2,0,0)),
//        Package(url: "https://github.com/SwiftJava/java_io.git", versions: Version(1,0,0)..<Version(2,0,0)),
//        Package(url: "https://github.com/SwiftJava/java_net.git", versions: Version(1,0,0)..<Version(2,0,0)),
//        Package(url: "https://github.com/SwiftJava/java_security.git", versions: Version(1,0,0)..<Version(2,0,0)),
//        Package(url: "https://github.com/SwiftJava/javax_management.git", versions: Version(1,0,0)..<Version(2,0,0)),
//        Package(url: "https://github.com/SwiftJava/java_nio.git", versions: Version(1,0,0)..<Version(2,0,0)),
        ]
)
