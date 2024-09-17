# AlertCraft

#### AlertCraft is a Swift package that provides a flexible and customizable alert system for SwiftUI projects. It supports customizable title, message, buttons, and images, allowing you to design alerts tailored to your app’s needs.

## Features

#### * Customizable title, message, and buttons.
#### * Support for primary and secondary action buttons.
#### * Optional image at the top of the alert.
#### * Fully configurable colors, fonts, and styles.


## Installation

### Swift Package Manager

#### * In Xcode, go to File > Add Packages....
#### * Paste the following URL into the search bar: https://github.com/omerrka/AlertCraft
#### * Select the version and add it to your project.

## Usage

### Basic Usage
#### Import the package in your SwiftUI view:

`import AlertCraft`

#### Then, create a custom alert:

```swift
struct ContentView: View {
    @State private var showAlert = false

    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert = true
            }
        }
        .customAlert(isPresented: $showAlert) {
            CustomAlertView(
                alertType: .custom(
                    CustomAlert(
                        title: "Warning",
                        message: "Are you sure you want to proceed?",
                        image: Image(systemName: "exclamationmark.triangle"),
                        primaryButton: AlertButton(text: "Confirm"),
                        secondaryButton: AlertButton(text: "Cancel")
                    )
                ),
                primaryButtonAction: {
                    print("Primary button tapped")
                },
                secondaryButtonAction: {
                    print("Secondary button tapped")
                }
            )
        }
    }
}
```
#### Customizing the Alert
#### You can customize the alert by setting the following parameters:

#### * Title: Main text in the alert.
#### * Message: Optional description text.
#### * Image: An optional image at the top of the alert.
#### * Primary Button: Required button with customizable text, colors, and font.
#### * Secondary Button: Optional secondary button with customizable properties.

```swift
let customAlert = CustomAlert(
    title: "Error",
    message: "Something went wrong.",
    image: Image(systemName: "xmark.circle"),
    primaryButton: AlertButton(text: "Retry", backgroundColor: .red)
)
```


