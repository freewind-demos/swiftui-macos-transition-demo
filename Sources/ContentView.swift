import SwiftUI

struct ContentView: View {
    @State private var show = false

    var body: some View {
        VStack(spacing: 30) {
            Text("过渡动画示例")
                .font(.headline)

            // opacity 过渡
            ZStack {
                if show {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: 200, height: 100)
                        .transition(.opacity)
                }
            }
            .animation(.easeInOut(duration: 0.5), value: show)

            // scale 过渡
            ZStack {
                if show {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.green)
                        .frame(width: 200, height: 100)
                        .transition(.scale)
                }
            }
            .animation(.easeInOut(duration: 0.5), value: show)

            // move 过渡
            ZStack(alignment: .top) {
                if show {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.orange)
                        .frame(width: 200, height: 100)
                        .transition(.move(edge: .top))
                }
            }
            .animation(.easeInOut(duration: 0.5), value: show)

            Button(show ? "隐藏" : "显示") {
                withAnimation(.easeInOut(duration: 0.5)) {
                    show.toggle()
                }
            }
        }
        .padding(40)
    }
}
