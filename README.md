# MealTime 🍽️

MealTime is a modern, personalized meal management app that helps users plan meals, track preferences, and manage dietary requirements effortlessly. Built with **Flutter**, following **Clean Architecture**, and managed with **Bloc State Management**, this app aims to provide an intuitive and streamlined experience for its users.

---

## Features ✨

- **Onboarding Flow**: Welcomes users and customizes their preferences (diets, allergies, dislikes, etc.).
- **Personalized Meal Plans**: Users can select and manage meal plans tailored to their dietary requirements.
- **Authentication**: Secure signup, login, and password reset features.
- **User Feedback**: Allows users to rate meals and leave notes.
- **Beautiful UI/UX**: Designed with a modern and user-friendly interface.

---

## Tech Stack 💻

- **Flutter**: Framework for cross-platform app development.
- **Clean Architecture**: Ensures scalability and separation of concerns.
- **Bloc**: State management for predictable and testable workflows.

---

## Project Structure 🗂️

The app follows the **Clean Architecture** structure

```
lib/
├── src/
    ├── app/
        ├── core/
        ├── resources/
        ├── themes/
        ├── widgets/
    ├── data/
        ├── data_sources/
        ├── models/
        ├── repository/
    ├── domain/
        ├── entities/
        ├── repository/
        ├── usecases/
    ├── presentation/
        ├── auth/
        ├── home/
        ├── widgets/
```

### Current Progress ...

### Completed Tasks:
- ✅ **Set up project structure** with Clean Architecture.
- ✅ **Theme setup**: Defined color palettes, typography, and spacing.
- ✅ Install required flutter packages
- ✅ setup routes
- ✅ create button reusable widget
- ✅ Supabase setup
### Next Priorities 
- ⬜ Sign-up page design
    - ⬜ Create UI for the Signup screen (full name, email, password, "Agree to Terms" checkbox).
    - ⬜ Add validation for all fields.
    - ⬜ Integrate Supabase authentication for signup functionality.
    - ⬜ Handle error states (e.g., email already in use, weak password)   
- ⬜ login page design
- ⬜ Reset password page design
- ⬜ Onboarding feature
  

---

## How to Run the Project

1. Clone the repository.
    `git clone https://github.com/OmarElhassaniAlaoui/MealTime_app.git`
2. Navigate to the project directory:
    `MealTime_app`
3. Install dependencies:
    `flutter pub get`
4. Run the project:
    `flutter run`

## How to Contribute 🤝

1. Fork the repository.
2. Clone the forked repository:  
   ` git clone https://github.com/OmarElhassaniAlaoui/MealTime_app.git`
3. Create a new branch for your feature or bug fix:  
   `git checkout -b feature-name`
4. Commit your changes and push to the branch:  
   `git push origin feature-name`
5. Open a pull request!

---

## Links 🔗
- **Figma Design**: [MealTime UI Kit](https://www.figma.com/design/hLXr2XOOpOqowjEAFc3Y8L/Recipe-App-UI-Kit-(Community)?node-id=0-1&node-type=canvas&t=ypb1ceWp2i2mAnyG-0)

---
