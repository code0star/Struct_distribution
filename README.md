<div align="center">

<img src="assets/logo.png" alt="Struct Logo" width="80" height="80" />

# Struct

**Turn any YouTube video into a structured, trackable course — powered by AI.**

[![Release](https://img.shields.io/github/v/release/yourusername/struct?color=6C63FF&style=flat-square)](https://github.com/yourusername/struct/releases)
[![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Web-blue?style=flat-square)](https://github.com/yourusername/struct/releases)
[![Built With](https://img.shields.io/badge/built%20with-Gemini%20AI-orange?style=flat-square)](https://ai.google.dev/)
[![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)](LICENSE)
[![Stars](https://img.shields.io/github/stars/yourusername/struct?style=flat-square&color=yellow)](https://github.com/yourusername/struct/stargazers)

[⬇️ Download for Desktop](#-installation) · [✨ Features](#-features) · [🛠 Tech Stack](#-tech-stack) · [🚀 Getting Started](#-getting-started)

</div>

---

## 🤔 What is Struct?

Most students learn from YouTube — but YouTube wasn't built for learning.

**Struct** takes any YouTube video and transforms it into a real, structured course with:
- AI-generated study notes across 9 organized sections
- Auto-generated quizzes to test your understanding
- A RAG-powered AI tutor you can ask questions
- Progress tracking across all your courses

Stop re-watching videos. Start actually learning.

> Built for college students who learn from YouTube but want something more than just a video player.

---

## ✨ Features

### 📚 Structured Study Notes
Struct breaks down any video into nine focused sections automatically:
- Key terminology & definitions
- Core technical content
- Visuals, formulas & diagrams
- Practical examples
- Critical pitfalls & common mistakes
- Exam readiness checklist
- Knowledge mapping
- And more

### 🧠 AI-Powered Q&A (RAG)
Ask any question about the course content. Struct uses a retrieval-augmented generation (RAG) pipeline to give you precise, context-aware answers — not generic AI responses.

### 📝 Auto-Generated Quizzes
Every course comes with a 10-question multiple choice quiz generated from the actual video content. No more making flashcards manually.

### 📈 Progress Tracking
Track which courses you've started, completed, and where you left off. Your learning dashboard stays in sync across sessions.

### 📄 Syllabus Import
Upload a course syllabus PDF and Struct will extract topics and suggest relevant YouTube content to build a full course automatically.

### 🖥️ Desktop + Web
Available as a native **Electron desktop app** (Windows & macOS) and as a web app. Your courses and progress sync seamlessly.

---

## 🎬 Demo

> 📸 *Screenshot / GIF coming soon — add your demo here*

---

## 🛠 Tech Stack

| Layer | Technology |
|---|---|
| Frontend | React, TypeScript, TailwindCSS |
| Desktop | Electron (Electron Forge + Webpack) |
| Backend | Node.js, Express |
| Database | MongoDB |
| AI / LLM | Google Gemini AI (Flash & Pro) |
| Embeddings | Gemini Embedding 001 (768-dim) |
| Reranker | BAAI/bge-reranker-v2-m3 (HuggingFace Spaces) |
| RAG Pipeline | Custom parent-child chunking + contextual enrichment |

---

## 📦 Installation

Struct is available as a native Windows desktop app.

**[⬇️ Download for Windows](https://github.com/yourusername/struct/releases/latest)**

Or install via PowerShell:
```powershell
irm https://raw.githubusercontent.com/yourusername/struct/main/install.ps1 | iex
```

> macOS and Linux support coming soon.

---

## 🤖 How the AI Pipeline Works

```
YouTube URL
    │
    ▼
YouTube Transcript + Metadata
    │
    ▼
Gemini AI → 9-Section Structured Notes (JSON)
    │
    ├──► Chunking (parent-child) → Gemini Embeddings → Vector Store
    │
    └──► Quiz Generation (10 MCQs)

User Question
    │
    ▼
Vector Retrieval → BGE Reranker → Gemini → Answer
```

---

## 🗺 Roadmap

- [x] YouTube → Structured notes
- [x] AI quiz generation
- [x] RAG-powered Q&A
- [x] Progress tracking
- [x] PDF syllabus import
- [x] Electron desktop app
- [ ] Chrome extension
- [ ] Collaborative study rooms
- [ ] Spaced repetition flashcards
- [ ] Mobile app

---

## 🤝 Contributing

Contributions are welcome! Please open an issue first to discuss what you'd like to change.

```bash
# Fork the repo, then:
git checkout -b feature/your-feature
git commit -m "Add your feature"
git push origin feature/your-feature
# Open a Pull Request
```

---

## 📄 License

MIT © [Gaurav](https://github.com/yourusername)

---

<div align="center">

**If Struct helped you study, drop a ⭐ — it really helps!**

[Report a Bug](https://github.com/yourusername/struct/issues) · [Request a Feature](https://github.com/yourusername/struct/issues) · [Follow Updates](https://github.com/yourusername/struct)

</div>
