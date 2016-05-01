import PackageDescription

let package = Package(
    name: "MustacheViewEngine",
    dependencies: [
        .Package(url: "https://github.com/Zewo/Mustache.git", majorVersion: 0, minor: 5),
        .Package(url: "https://github.com/slimane-swift/Renderable.git", majorVersion: 0, minor: 2),
        .Package(url: "https://github.com/noppoMan/Suv.git", majorVersion: 0, minor: 4),
    ]
)
