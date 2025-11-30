# CrossMake

A template for developing clean and modern CMake projects, designed to help developers quickly bootstrap cross-platform C++ applications.

CrossMake provides a minimal, well-structured, and scalable starting point for any C++ project using CMake. It follows cross-platform conventions, clean folder organization, and modern CMake practices, making it ideal for both small utilities and large applications.

## 🏁 Getting Started

**1) Clone the template**
```bash
git clone https://github.com/TheSampaio/CrossMake.git YOUR_PROJECT_NAME
```

**2) Enter the project directory**
```bash
cd CrossMake YOUR_PROJECT_NAME
```

### **3) Run the setup script**  
Depending on your operating system:

#### **Unix (macOS / Linux)**  
Run the setup script inside `scripts/unix`:

```bash
./scripts/unix/run_setup.sh
```

#### **Windows**
Run the batch file inside scripts/windows:

```bash
scripts\windows\run_setup.bat
```

## 🚀 Features

* Clean and intuitive project structure
* `source/` and `include/` separation
* Modern CMake layout using `target_*` commands
* Ready-to-extend CMake modules in `cmake/`
* Cross-platform friendly (Windows, Linux, macOS)
* Uses `snake_case` folder and file naming conventions
* Easy to adapt for tests, tools, and multi-target projects

## 📁 Project Structure

```
project_root/
 ├─ include/             # Public headers
 ├─ source/              # Source files
 ├─ tests/               # Unit and integration tests
 ├─ vendor/              # For external libraries in CMake
 ├─ CMakeLists.txt       # Root CMake configuration
 ├─ CMakePresets.json    # Build presets for CLI/IDE integration
 └─ README.md
```

## 🧩 Requirements

* **CMake 3.27+**
* **C++20** (or higher, depending on your configuration)
* A supported compiler:

  * MSVC (Visual Studio)
  * GCC
  * Clang

## 🔨 Building the Project

### **Linux / macOS**

```bash
mkdir build
cd build
cmake ..
cmake --build .
```

### **Windows (PowerShell)**

```powershell
mkdir build
cd build
cmake ..
cmake --build .
```

## 🧪 Adding Tests (Optional)

If you want to integrate a testing framework (e.g., GoogleTest), simply add a `tests/` folder and update the root `CMakeLists.txt`:

```cmake
add_subdirectory(tests)
```

CrossMake is intentionally minimal so you can extend it however you prefer.

## 🧱 Philosophy

CrossMake focuses on:

* **Simplicity** — no unnecessary files or scripts
* **Scalability** — easy to expand into multiple modules
* **Clarity** — predictable naming and organization
* **Portability** — zero platform-specific hacks

Start clean. Stay organized.

## 📜 License

This project template is released under the **MIT License**.

## 🤝 Contributing

Contributions, suggestions, and improvements are welcome! Feel free to open an issue or pull request to help evolve CrossMake.

## ⭐ Support

If you find this template useful, consider starring the repository on GitHub to help others discover it.
