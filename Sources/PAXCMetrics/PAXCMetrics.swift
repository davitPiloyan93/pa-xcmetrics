import XCMetricsClient
import XCMetricsPlugins
import Foundation

@main
public struct PAXCMetrics {
    public static func main() {
        let metrics = XCMetrics.parseOrExit()
        let configuration = XCMetricsConfiguration()
        let rootDir = ProcessInfo.processInfo.environment["SRCROOT"] ?? ""
        configuration.add(plugin: GitPlugin(gitDirectoryPath: rootDir).create())
        metrics.run(with: configuration)
    }
}
