# 🥚 Egg Game (iOS)

A simple and interactive iOS app built with **UIKit** and **AVFoundation** that simulates egg boiling times with sound effects and a visual progress bar.

---

## 🚀 Features

* 🎯 Select egg type: **Soft**, **Medium**, or **Hard**
* ⏱️ Timer-based cooking simulation
* 📊 Animated progress bar
* 🔊 Sound effects for each selection
* 🔁 Resets cleanly on each new selection

---

## 🧠 How It Works

* Each egg type is mapped to a cooking time:

  * Soft → 3 seconds
  * Medium → 4 seconds
  * Hard → 7 seconds

* When a button is pressed:

  1. Timer resets
  2. Progress bar resets
  3. Corresponding sound plays
  4. Timer starts updating every second
  5. Progress bar fills gradually
  6. Stops at completion

---

## 🛠️ Tech Stack

* **Swift**
* **UIKit**
* **AVFoundation** (for audio playback)

---

## 📂 Project Structure

```
Egg Game/
│
├── ViewController.swift   # Main logic (timer, sound, progress)
├── Main.storyboard        # UI layout
├── Assets.xcassets        # Images (egg icons, etc.)
├── Sounds/
│   ├── A.wav
│   ├── B.wav
│   └── C.wav
```

---

## 🔧 Setup Instructions

1. Clone the repository:

```bash
git clone https://github.com/your-username/egg-game.git
```

2. Open in Xcode:

```bash
open Egg\ Game.xcodeproj
```

3. Make sure sound files are added:

* `A.wav`
* `B.wav`
* `C.wav`

✔️ Ensure **Target Membership** is checked in Xcode.

4. Run the app on Simulator or real device.

---

## 🎮 Usage

* Tap on any egg type:

  * Soft
  * Medium
  * Hard

* Watch the progress bar fill based on selected time.

* Sound plays on selection.

---

## ⚠️ Notes

* Simulator may show audio-related warnings (`LoudnessManager` logs).
  👉 These are **system-level logs** and can be ignored.

---

## 💡 Future Improvements

* ⏳ Countdown label (e.g., “3s remaining”)
* 🔔 Sound when cooking completes
* 🎨 UI animations & polish
* 📱 Better layout & responsiveness
* 🥚 Egg cooking visuals (animation)

---

## 👨‍💻 Author

**Muhammad Rehan Yousaf**

---

## 📄 License

This project is open-source and free to use for learning purposes.

---

✨ Feel free to fork, improve, and build upon it!

