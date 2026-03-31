import Cocoa

@main
struct TransitionApp: App {
    var body: some Scene {
        Window("过渡动画", id: "main") {
            ContentView()
        }
        .defaultSize(width: 400, height: 400)
    }
}
