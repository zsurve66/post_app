📱 Post App – Flutter + DummyJSON API

A Flutter application that demonstrates RESTful API integration using the free DummyJSON API. This app allows users to fetch, create, and delete posts in a clean and responsive UI. Built with maintainability and best practices in mind, this app is ideal for learning or demonstrating core Flutter concepts.

---

📌 Features

✅ **Post Listing** – View a list of posts fetched from a public API  
✅ **Create Post** – Add new posts using a modern form layout  
✅ **Delete Post** – Remove posts with confirmation prompt  
🔄 **Pull to Refresh** – Instantly reload post data  
🎨 **Stylish Material UI** – Clean app design with shaped AppBars & shadow effects  
🔔 **Alert Dialogs** – Feedback on success or failure for all actions

---

🛠️ Tech Stack

- **Flutter (Dart)**
- **HTTP** – For API integration
- **Material Design** – Native widgets with custom enhancements
- **State Management** – Minimalist approach for simplicity (no heavy frameworks)

---

📦 Installation

### Prerequisites

- Install [Flutter](https://flutter.dev/docs/get-started/install)
- Ensure Android/iOS Emulator or a physical device is available

---

### Clone the Repository

```bash
git clone https://github.com/your-username/post_app.git
cd post_app

---

Install Dependencies
flutter pub get

---

Run the App
flutter run

---

📁 Project Structure
post_app/
│-- lib/
│   ├── main.dart                  # Entry point of the application
│   ├── models/
│   │   └── post_model.dart        # Data model for post
│   ├── services/
│   │   └── api_service.dart       # Handles all API logic (GET, POST, DELETE)
│   ├── screens/
│   │   ├── home_screen.dart       # UI to display list of posts
│   │   └── new_post_screen.dart   # UI to create a new post
│   ├── widgets/
│   │   └── custom_dialog.dart     # Reusable dialog box for alerts
│-- pubspec.yaml                   # App metadata and dependencies
│-- README.md                      # Project documentation

---

🌐 API Integration
	•	GET – https://dummyjson.com/posts
	•	POST – https://dummyjson.com/posts/add
	•	DELETE – https://dummyjson.com/posts/{id}

---

📌 Author

👤 Ziyad Surve
📧 zsurve16@gmail.com

---

⭐ Contributing
Contributions are welcome! Fork the repository, create a feature branch, and submit a pull request.