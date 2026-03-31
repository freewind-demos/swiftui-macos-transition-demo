# SwiftUI macOS 过渡动画

## 简介

演示 SwiftUI 中 `.transition()` 的用法，用于视图出现/消失时的动画效果。

## 快速开始

```bash
cd swiftui-macos-transition-demo
xcodegen generate
open SwiftUITransitionDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### 常用过渡效果

```swift
.transition(.opacity)           // 淡入淡出
.transition(.scale)             // 缩放
.transition(.move(edge: .top))  // 从某方向移入
.transition(.slide)             // 滑动
```

### asymmetric 过渡

```swift
.transition(.asymmetric(
    insertion: .scale,
    removal: .opacity
))
```

## 完整示例

```swift
if show {
    Text("Hello")
        .transition(.opacity)
}
withAnimation {
    show.toggle()
}
```
