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
  <img src="https://github.com/user-attachments/assets/bf2b3b54-8595-4bf4-a8ab-a22bb2944ee9" width="250" height="auto" />
  <img src="https://github.com/user-attachments/assets/6c111a3c-74f6-4dd1-9d9d-64327db5581d" width="250" height="auto" />
</div>
  <img src="https://github.com/user-attachments/assets/36e7cb72-544c-45ce-aaf5-e12915d40079" width="%100" height="auto" />


