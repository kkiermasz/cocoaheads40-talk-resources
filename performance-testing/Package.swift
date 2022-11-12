// swift-tools-version:5.7
import PackageDescription

let package = Package(
  name: "MyPackage",
  products: [
    .executable(name: "function-specialization", targets: ["FunctionSpecialization"]),
  ],
  dependencies: [],
  targets: [
    .executableTarget(
      name: "FunctionSpecialization",
      dependencies: []
    ),
  ]
)
