import Foundation
import UniformTypeIdentifiers
import AppKit

func appsForFileExtension(_ ext: String) -> [String] {
    var results: [String] = []

    if let uti = UTType(filenameExtension: ext) {
        let workspace = NSWorkspace.shared
        let appURLs = workspace.urlsForApplications(toOpen: uti)
        results = appURLs.map { $0.path }
    }
    return results
}

if CommandLine.argc > 1 {
    let fileExt = CommandLine.arguments[1]
    let apps = appsForFileExtension(fileExt)
    if apps.isEmpty {
        print("No apps found for extension \(fileExt)")
    } else {
        apps.forEach { print($0) }
    }
} else {
    print("Usage: \(CommandLine.arguments[0]) <file extension>")
}
