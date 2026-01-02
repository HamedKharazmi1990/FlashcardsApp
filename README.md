# 🧠 Flashcards App (SwiftUI)

**Flashcards** is a simple and intuitive learning application built with **SwiftUI** that helps users study and memorize information using digital flashcards.  
The app focuses on a clean UI, smooth interactions, and a scalable architecture suitable for future expansion.

---

## Demo
<div align="center">
  <table>
    <tr>
      <td align="center"><img src="./assets/iPhone_flashCard_demo.gif" height="300" alt="iPhone" /></td>
      <td align="center"><img src="./assets/iPad_flashCard_demo.gif"  height="300" alt="iPad" /></td>
    </tr>
    <tr>
      <td align="center"><sub>iPhone</sub></td>
      <td align="center"><sub>iPad</sub></td>
    </tr>
  </table>
</div>

---

## ✨ Features

- 🗂️ Simple flashcards game
- 🔄 Flip cards to reveal answers
- 📱 Clean and responsive SwiftUI interface
- ⚡ Smooth animations and transitions
- 🧱 MVVM architecture for maintainability

---

## 🧰 Tech Stack

| Category | Technology |
|--------|------------|
| **Language** | Swift |
| **Framework** | SwiftUI |
| **Architecture** | MVVM |
| **Animations** | SwiftUI Animations |
| **IDE** | Xcode |
| **Minimum OS** | iOS 17+ (iPadOS supported) |

---

## 🚀 Getting Started

### 1️⃣ Clone the Repository

```bash
git clone "https://github.com/HamedKharazmi1990/FlashcardsApp"
cd Flashcards
```

### 2️⃣ Open the Project

    1. Open Flashcards.xcodeproj in Xcode
    2. Select an iPhone or iPad simulator
    3. Press Run (⌘R)

### 📱 Supported Platforms
| Platform | Support |
|--------|------------|
| **iPhone** | ✅ |
| **iPad** | ✅ |


 ###   🧩 Project Structure
    Flashcards
    ├── Assets.xcassets
    ├── Models
    │   ├── FlashcardModel.swift        # Flashcard data model
    │   └── QuestionModel.swift         # Questions data model
    ├── ViewModels
    │   ├── FlashCardViewModel.swift # FlashCard state & logic
    │   └── QuestionViewModel.swift  # Question state & logic
    ├── Views
    │   ├── CardView.swift                  # Card UI & gesture
    │   ├── FillBarView.swift               # Fill Bar UI
    │   ├── FlashItemRow.swift              # Flash Item UI
    │   ├── HeaderView.swift                # Header UI
    │   ├── QuestionsView.swift             # Questions UI
    │   ├── TextAndOptionalImageView.swift  # Text And Image UI
    │   ├── TopicView.swift                 # TopicView UI
    │   └── TwoSidedBackgroundView.swift    # Two Sided Background UI
    └── FlashcardsApp.swift        # App entry point


### 👨‍💻 Maintainer

    Hamed Kharazmi
    📧 hamed.kharazmi@gmail.com


    
