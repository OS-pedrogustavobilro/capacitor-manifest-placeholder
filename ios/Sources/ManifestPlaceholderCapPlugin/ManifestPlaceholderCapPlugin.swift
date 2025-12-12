import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ManifestPlaceholderCapPlugin)
public class ManifestPlaceholderCapPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "ManifestPlaceholderCapPlugin"
    public let jsName = "ManifestPlaceholderCap"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = ManifestPlaceholderCap()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
