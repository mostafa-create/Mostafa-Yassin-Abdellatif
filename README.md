# Android Course Tasks — Eng. Fady Esam

Welcome to the **Flutter-Tasks** repository! This repository contains a structured collection of Core Dart assignments and introductory Flutter UI screens developed for the **Android/Mobile Development** course under the instruction of **Eng. Fady Esam**. 

The tasks demonstrate a solid progression from fundamental programming logic and data structures up to custom widget layout designs in Flutter.

---

## 📁 Repository Structure

The workspace is organized into core programming assignments and application modules:
* **Dart Core Tasks (`Task_01.dart` to `Task_04.dart`)**: Command-line programs focused on algorithmic logic, collections, and object-oriented principles.
* **Flutter Applications (`Task_05/`)**: A Flutter project codebase showcasing modular structure and functional UI rendering.

---

## 🚀 Individual Task Breakdown

### 🎯 Task 01: Random Grade Evaluator
* **File:** `Task_01.dart`
* **Concepts:** Control structures (`if-else`), standard output, and random number generation (`dart:math`).
* **Description:** Generates a random academic score (0-100) and maps it precisely to its corresponding letter grade scale (e.g., `A+`, `-A`, `B+`, etc.).

### 📊 Task 02: Student Grading & Database Console System
* **File:** `Task_02.dart`
* **Concepts:** 2D Lists (`List<List<double>>`), console I/O (`dart:io`), error handling (`try-catch`), and interactive runtime menu loops.
* **Description:** An interactive application allowing users to register a database of student names alongside multi-subject scores. Features a continuous command-line terminal menu that supports displaying all records and looking up specific student averages.

### 🗂️ Task 03: High-Order Collections & Recursive Processing
* **File:** `Task_03.dart`
* **Concepts:** `Set` management, `Map<String, List<double>>` mappings, recursive methods, spread operators (`...`), and lambda expressions (`forEach`).
* **Description:** Demonstrates practical uses of unique collections to avoid duplicate entries, custom list merging via modern syntax operators, and recursive printing without native iterative loops.

### 🏛️ Task 04: Object-Oriented Blueprint & Polymorphism
* **File:** `Task_04.dart`
* **Concepts:** Encapsulation (private backing fields `_`), getters/setters with validation rules, static class fields, classic inheritance, and polymorphic Interface contracts (`implements`).
* **Description:** Implements a clear simulated structural model of organizational personnel across a distinct class hierarchy (`Person` ➔ `Employee` ➔ `Developer`).

### 📱 Task 05: Profile & Form Layout Screen
* **Directory:** `Task_05/simple_profile_app/`
* **Concepts:** Layout composition (`Column`, `Row`, `Card`), text inputs, explicit visual alignment, and primary floating action buttons.
* **Description:** A pixel-accurate reconstruction of the required assignment interface. It features a custom `AppBar`, a responsive avatar `Image`, descriptive text layouts, input fields for both **Email** and **Password** (with security character masking), a styled **Submit Button**, and an independent `FloatingActionButton`.

To execute any of the terminal-based console scripts directly, run the following inside your command line:
```bash
dart Task_01.dart
dart Task_02.dart
