# Live Courier Tracking App (Flutter Assessment)
A high-performance Flutter application demonstrating real-time location tracking for a courier delivery service.  
Built using **Clean Architecture**, **Riverpod** for reactive state management, **WebSocket Streams** for live updates, and **Freezed** for robust, immutable state modeling.  
The app features smooth, non-jumpy marker movement, a dynamic route path, and an interactive courier information card, all designed with premium aesthetics and maintainability in mind.
## Live Tracking Screen
## 📌 Snippet



https://github.com/user-attachments/assets/4847f9d1-5c6c-4bfb-9820-9806bc6ddc19




## 📌 Demo Video
The full demonstration video showcases the real-time simulation and smooth map transitions.  
Copy the link below into your browser to watch:
```bash
# Replace with your actual demo link
https://drive.google.com/file/d/161QQmuloFwjQE5Ss-bcJlEzBK3MgJHJh/view?usp=sharing
```
In this assessment, I implemented:
- **Smooth Marker Animation**: Utilizing `TweenAnimationBuilder` for fluid movement along the route without "jumping".
- **Dynamic Route Rendering**: A polyline that visually represents the path from the rider's current position to the destination.
- **Real-time ETA Countdown**: A dynamic ETA calculation that updates as the rider progresses along the simulated route.
- **Stream-based Updates**: Leveraging `WebSocketChannel` to simulate a live backend data stream for location packets.
- **Floating UI Animations**: Subtle floating animations for the Courier Card and Map Markers to enhance visual depth and interactivity.
- **Clean Architecture**: A strictly separated codebase ensuring high testability and clear domain/data/presentation boundaries.
## 🚀 Getting Started
### 📦 Installation
**Clone the Repository**
```bash
git clone git@github.com:jmcfx/live_tracking_app.git
cd live_tracking_app
```
### 🚀 Steps to Run
#### 1. 🔧 Set Up Dependencies and Generate Code ‼️
Run the following to clean the project, install dependencies, and generate `build_runner` outputs (`freezed`, `riverpod_generator`):
```bash
make fresh
``` 
This will run the following commands:
- `flutter clean` – Resets the build directory
- `flutter pub get` – Fetches dependencies
- `dart run build_runner build -d` – Generates code for `freezed` & `riverpod`
#### 2. 🚀 Run the app on a connected device or emulator ‼️
```bash
flutter run
```
#### 3. 🔄 Regenerate Code Only
```bash
make runner
```
#### 4. 👀 Watch for File Changes
```bash
make watch
```
### 5. 📦 Build Android APK
```bash
make apk
```
The APK will be generated in `build/app/outputs/flutter-apk/app-release.apk`.
## Folder Structure :open_file_folder:
```text
lib/
├── src/
│   ├── app/                  # Application entry point, Theme configuration
│   ├── core/                 # Shared utilities, Errors, Enums, Mixins, and UseCase base
│   │   ├── config/           # Map & Socket constants
│   │   ├── constants/        # App assets (SVG, Png, Icons)
│   │   ├── enums/            # DeliveryStatus, ViewState
│   │   ├── errors/           # Exceptions and Failures
│   │   ├── mixins/           # RouteSimulation logic
│   │   ├── use_case/         # UseCase base classes
│   │   └── utils/            # Map and Error handling utilities
│   ├── di/                   # Dependency Injection (Riverpod Providers)
│   │   └── provider/
│   ├── features/
│   │   ├── shared/           # Reusable widgets used across features
│   │   │   └── widgets/      # AnimatedFloatingWidget, CustomLabel, etc.
│   │   └── tracking/         # Live tracking feature (Data, Domain, Presentation)
│   │       ├── data/         # Repositories Impl, Data Sources, and Socket Clients
│   │       ├── domain/       # Entities, Repository Interfaces, Use Cases
│   │       └── presentation/ # Riverpod Notifiers, States, Pages, and Custom Map Widgets
│   │           
│   │          
│   │           
  
```
## ✨ Features
- 🧼 **Clean Architecture** — Strict separation between Domain, Data, and Presentation layers.
- 🗺 **Interactive Map Integration** — Uses `flutter_map` (OpenStreetMap) with custom styling and layers.
- 🏍 **Smooth Live Updates** — Real-time marker interpolation to ensure a "no-jump" tracking experience.
- 🪄 **Floating UI Animations** — Dynamic floating effects on the courier card and markers for a "live" feel.
- ⏱ **Dynamic ETA & Status** — Reactive UI updates for delivery status changes (On Delivery → Delivered).
- 📡 **WebSocket Simulation** — A local simulation engine that streams location packets via a WebSocket sink.
- 🧩 **Composable UI Components** — Modularized map layers (Rider, Destination, Polyline) and a refined Courier Info Card.
- 🎨 **Modern Aesthetics** — Uses `ScreenUtil` for responsiveness and custom SVG assets for a premium look.
- 🛠 **Resilient Error Handling** — Catch-all error states for network issues or stream interruptions.
## 🎨 What I'd Improve With More Time
1. **Map Provider Switch**: Integrate Google Maps or Mapbox for better vector performance and native "follow" modes.
2. **Micro-interactions**: Add haptic feedback when the rider reaches the destination.
3. **Advanced Routing**: Use a real-world Routing API (like OSRM or Google Directions).
4. **Enhanced Onboarding**: A brief walkthrough or "Order Confirmation" flow.
5. **Persistence**: Store the tracking history locally to resume tracking sessions after app restarts.
## 📦 Key Dependencies
- **flutter_riverpod** – Reactive state management.
- **flutter_map** – Customizable map integration.
- **web_socket_channel** – Live data streaming.
- **freezed** – Immutable models and union states.
- **latlong2** – Geolocation math and coordinate handling.
- **flutter_screenutil** – Responsive UI scaling.
- **flutter_svg** – High-quality vector asset rendering.
- **timelines_plus** – Progress tracking UI.
### Dev Dependencies
- **flutter_test** – Built-in testing framework.
- **build_runner** – Runs code generators.
- **freezed** – Generates immutable data classes and unions.
- **riverpod_generator** – Generates type-safe providers.
- **json_serializable** – Generates JSON parsing logic.
