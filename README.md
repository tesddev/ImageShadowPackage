# ShadowImagePackage

A Swift package for adding shadows to both local and remote images in SwiftUI.

## Usage

### Local Image

```swift
import SwiftUI
import ShadowImagePackage

struct ContentView: View {
    var body: some View {
        ShadowImage(image: Image(systemName: "star.fill"), shadowColor: .gray, radius: 5, x: 2, y: 2)
    }
}
```

### Remote Image

```swift
import SwiftUI
import ShadowImagePackage

struct ContentView: View {
    var body: some View {
        ShadowURLImage(url: URL(string: "https://example.com/image.png")!, shadowColor: .gray, radius: 5, x: 2, y: 2)
    }
}
```
