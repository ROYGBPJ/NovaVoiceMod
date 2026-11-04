# Nova Voice architecture

## Design goals
- Windows 10/11 desktop application.
- Local-first processing; no mandatory account, cloud service, API key, or subscription.
- Stable low-latency audio path with UI and disk operations isolated from real-time callbacks.
- Optional virtual microphone support, independently packaged and tested.
- License-compliant dependencies and clean-room implementation.

## Proposed solution boundaries
1. **NovaVoice.App** — WPF shell, device/settings UI, preset editor, soundboard controls, diagnostics.
2. **NovaVoice.Audio** — device discovery, capture/playback abstractions, format negotiation, buffering, routing, mixing.
3. **NovaVoice.Dsp** — pitch/formant processing, filters, EQ, dynamics, modulation, delay, reverb, effect-chain graph.
4. **NovaVoice.Presets** — versioned preset schema, import/export, validation, migrations.
5. **NovaVoice.Soundboard** — audio import/decoding, playback voices, hotkeys, categories, mixing.
6. **NovaVoice.NoiseReduction** — optional noise suppression adapter with documented license/runtime requirements.
7. **NovaVoice.VirtualDevice** — adapter to a separately evaluated virtual audio device/driver.
8. **NovaVoice.Tests** — unit, integration, audio-fixture, and platform-specific tests.

## Audio pipeline
Input device → capture buffer → channel/format conversion → input gain/noise gate/noise reduction → voice DSP chain → soundboard mixer → limiter → selected monitor output and (when installed) virtual microphone endpoint.

Real-time callbacks must avoid blocking calls, UI dispatch, file access, and unbounded allocation. Use bounded queues and explicit underrun/overrun diagnostics.

## Virtual microphone constraints
A virtual microphone generally requires a virtual audio driver or supported routing mechanism. Evaluate driver licensing, signing, administrator permissions, Windows compatibility, security warnings, uninstall behavior, and recovery. Do not bundle or install a driver until reviewed. Provide a documented fallback if no redistributable driver is suitable.

## Dependency policy
For each dependency, record project URL, exact version, license/redistribution obligations, maintenance status, Windows/architecture support, native runtime/driver requirements, and modifications. Do not copy Voicemod code, proprietary assets, or proprietary preset data.
