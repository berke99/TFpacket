# TextFieldWidget

**TextFieldWidget** is a simple and flexible SwiftUI component for handling user input with style. It supports multiple states like `default`, `error`, `warning`, and `success`.

## 🚀 Features

- 4 visual states: `default`, `error`, `warning`, and `success`.  
- Instant updates with SwiftUI's `@Binding`.  
- Works seamlessly with SwiftUI.  

## 🧰 Parameters

| Parameter      | Type         | Description                           |
|----------------|--------------|---------------------------------------|
| `userInput`    | `@Binding`   | The user’s input text.               |
| `placeholder`  | `String`     | Text displayed as a placeholder.     |
| `keyboardType` | `uiKeyboardType` | Defines the type of the keyboard.   |
| `fieldType`    | `TextFieldType`| Defines the TextField's style/state.|

## 📄 Usage

Quick example:  
```swift
struct ContentView: View {
    @State private var userName: String = ""

    var body: some View {
        TextFieldWidget(
            userInput: $userName,
            placeholder: "Enter Your Name",
            keyboardType: .defaultType,
            fieldType: .default
        )
    }
}
```

### Visuals & Previews

<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/user-attachments/assets/20aa2a29-da70-4841-8894-f59cba9350f0" width="250" height="auto" />
  <img src="https://github.com/user-attachments/assets/74df55ea-2c99-4dfc-891b-9b721b96eded" width="250" height="auto" />
</div>
  <img src="https://github.com/user-attachments/assets/4028d1ea-74e6-407a-bec1-c1f32791ff67" width="%100" height="auto" />
