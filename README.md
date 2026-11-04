# Nova Voice

**Nova Voice** is a planned, free Windows 10/11 real-time voice changer and soundboard.

The goal is broad Voicemod-style functionality implemented independently with open-source components. Nova Voice will not reuse Voicemod source code, assets, proprietary presets, or bypass its licensing.

## Project status

**Current stage: initial project specification.** This repository contained only a short placeholder README when selected. The feature list below is a target, not a claim that features are already implemented.

## Target features

- Real-time microphone voice changing with low-latency monitoring.
- Pitch, formant, resonance, and voice character controls.
- Robot, demon, alien, radio, telephone, echo, reverb, chorus, distortion, and custom effect chains.
- Soundboard with hotkeys, categories, looping, stop-all, and imported audio.
- Noise suppression, gate, compressor, limiter, and feedback protection.
- Parametric EQ and audio filters.
- Selectable microphone, speakers/headphones, sample rate, and buffer settings.
- Virtual microphone output for use in games, calls, and streaming apps.
- Save, load, import, and export user-created presets.
- Local-first processing; no account, subscription, API key, or cloud processing required for core features.
- Windows 10 and Windows 11 support, accessibility, and device diagnostics.

## Planned technology

- C# and .NET with WPF.
- NAudio or another license-compatible Windows audio layer.
- Independently implemented DSP or compatible open-source DSP libraries.
- Optional RNNoise-based suppression after license and integration review.
- A separately evaluated virtual-audio-device solution. Driver signing, installation, and redistribution constraints must be documented.

No dependency is approved for redistribution until its license and maintenance status are reviewed.

## Build and test status

- Build: not yet available.
- Automated tests: not yet available.
- Windows 10: not yet verified.
- Windows 11: not yet verified.
- Real-time latency/audio quality: not yet measured.
- Virtual microphone installation: not yet tested.

See [FEATURES.md](docs/FEATURES.md), [ARCHITECTURE.md](docs/ARCHITECTURE.md), and [ROADMAP.md](ROADMAP.md).

## Development principles

1. Build and test a real microphone-to-output audio path before adding a large effect catalog.
2. Keep real-time callbacks free of blocking I/O, UI work, and unpredictable allocations.
3. Keep core processing local and usable offline.
4. Treat driver installation as an optional, separately tested component.
5. A feature is not verified merely because its UI exists.
6. Preserve user presets and imported sound files.

## License

No project license has been selected yet. Until one is added, do not assume this repository grants permission to redistribute or reuse its contents.
