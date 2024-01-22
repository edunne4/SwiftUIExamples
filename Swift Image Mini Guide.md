
# Image views

Images serve as a critical element of user interface in virtually all iOS mobile applications. An Image View specifically, acts as a visual display that can present a singular image or, in certain cases, animate a sequence of images.

The functionality and adaptability of the Image View in SwiftUI are particularly remarkable. Not only does it have the ability to display custom images drawn from the asset catalog, accommodating rich image data in various formats, like PNG, JPEG, and PDF, but it also enables the representation of SFSymbols. This results in an effortless and intuitive process for managing and manipulating images, thereby boosting design possibilities and creative flexibility. Whether it's stretching, scaling, fitting to a specific size, or pinning an image to a particular location, Image View in SwiftUI can handle it all. 

 _It should be noted, however, that typically, Image Views are not interactive._ 

## Let's go over the steps on how to use an Image View in SwiftUI:

### 1. Create a new SwiftUI project:
Launch Xcode and create a new SwiftUI project. Name it accordingly, e.g., `ImageViewTutorial`.

![Screenshot 2023-07-14 at 4 57 18 PM](https://github.com/codewithchris/cwc_by-example/assets/98072257/d8564fe4-bf0a-42d7-a32f-870ba71a7a7b)
![Screenshot 2023-07-14 at 4 57 32 PM](https://github.com/codewithchris/cwc_by-example/assets/98072257/0a1e8632-f9e1-4691-8a48-6188784234c7)

### 2. Prepare your image:
Place your image inside the `Assets.xcassets` folder. You can do this by dragging and dropping your image file directly into the `Assets.xcassets` in Xcode.

![Screenshot 2023-07-14 at 5 05 37 PM](https://github.com/codewithchris/cwc_by-example/assets/98072257/e3b77fa2-36e2-4b72-806d-a06fd0c7b9b5)

### 3. Add an Image View:
Open your `ContentView.swift` file. You can add an Image View to your SwiftUI view by adding the `Image` view to your body property. In Xcode 15 and later, images in your asset catalog are backed by Swift symbols which improve type safety and enable code completion. This means you can reference images using these generated symbols instead of using string names. 

##### Here's an example:

```swift
struct ContentView: View {
    var body: some View {
        Image(.building) // Replace `.building` with your image's Swift symbol
    }
}
```

This significantly reduces the risk of runtime issues caused by incorrect image names as any issues will be caught during compilation. If the image name is changed in the asset catalog, you'll be notified of an issue in your code where this image is referenced, and you can conveniently correct it using code completion. This feature offers a high level of safety, ensuring you don't have to worry about any unexpectedly missing images at runtime.

### 4. Run your app:
You should now see your image displayed on the screen. Try running your app in the simulator or on your device to verify this.

![Screenshot 2023-07-14 at 5 21 48 PM](https://github.com/codewithchris/cwc_by-example/assets/98072257/dd8b3a81-fe6b-4bc6-8add-edf8aaaa9537)

### 5. Customize your image view:
The Image view also provides several modifiers that you can use to customize how your image is displayed:

- `resizable()`: Allows your image to be resized.
- `aspectRatio(contentMode: .fit)`: Maintains the aspect ratio of your image while resizing it to fit within its frame.
- `cornerRadius(_:)`: Rounds the corners of your image view.
- `padding()`: Adds space around your image view.

##### Here's an example of using these modifiers:

```swift
struct ContentView: View {
    var body: some View {
        Image(.building) // Replace `.building` with your image's name
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            .padding()
    }
}
```

This will display your image with its aspect ratio preserved, rounded corners, and a padding around it.

![Screenshot 2023-07-14 at 5 42 12 PM](https://github.com/codewithchris/cwc_by-example/assets/98072257/0804985a-9ac9-4d0f-815f-b80544812dab)

### 6. Run your app again:
Your image should now be displayed as per the defined modifications. It will be resizable, fitting the given aspect ratio, corners rounded, and padded within its container.

![Simulator Screenshot - iPhone 14 - 2023-07-14 at 17 47 44](https://github.com/codewithchris/cwc_by-example/assets/98072257/3148c8fe-68f1-4478-8ab1-7d9108d654b4)

This is a simple demonstration of how to use an Image View in SwiftUI. The SwiftUI framework provides many more features and modifiers that you can use to customize your Image View further.
