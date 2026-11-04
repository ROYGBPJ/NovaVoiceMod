# Nova Voice feature register

Every item starts as **Not implemented/verified**. Update a status only when code and test evidence exist.

## Voice processing
| Feature | Status | Verification required |
|---|---|---|
| Real-time voice changing | Not implemented/verified | Microphone capture → DSP → output, with latency measurement |
| Pitch controls | Not implemented/verified | Stable pitch shift over documented range |
| Formant controls | Not implemented/verified | Independent formant shift |
| Resonance / tone controls | Not implemented/verified | Repeatable parameter response |
| Robot voice | Not implemented/verified | Preset and intelligibility test |
| Demon voice | Not implemented/verified | Controlled distortion/formant test |
| Alien voice | Not implemented/verified | Modulation/formant test |
| Radio / telephone | Not implemented/verified | Filter and saturation test |
| Echo / delay / reverb | Not implemented/verified | Timing, feedback, tail tests |
| Chorus / flanger / modulation | Not implemented/verified | Parameter and stability tests |
| Effect chains | Not implemented/verified | Multiple effects in deterministic order |
| Custom voice presets | Not implemented/verified | Save/load round-trip and migration tests |

## Soundboard
| Feature | Status | Verification required |
|---|---|---|
| Soundboard playback | Not implemented/verified | Playback during live mic processing |
| Import audio files | Not implemented/verified | Format and invalid-file tests |
| Hotkeys | Not implemented/verified | Registration and conflict handling |
| Loop / stop / stop-all | Not implemented/verified | Playback lifecycle tests |
| Categories and favorites | Not implemented/verified | Persistence tests |
| Soundboard routing/mixing | Not implemented/verified | Mix, gain, clipping tests |

## Audio quality and devices
| Feature | Status | Verification required |
|---|---|---|
| Noise suppression | Not implemented/verified | Noise sample evaluation and CPU/latency measurement |
| Noise gate | Not implemented/verified | Threshold, attack, release tests |
| EQ and audio filters | Not implemented/verified | Filter response and stability tests |
| Compressor / limiter | Not implemented/verified | Level-control and clipping tests |
| Microphone selection | Not implemented/verified | Enumeration, switching, disconnect/reconnect |
| Speaker/headphone selection | Not implemented/verified | Output enumeration and switching |
| Sample rate / buffer settings | Not implemented/verified | Format negotiation and glitch tests |
| Feedback protection | Not implemented/verified | Loopback and excessive-gain tests |
| Virtual microphone output | Not implemented/verified | Installation, interoperability, uninstall/recovery |

## Product and platform
| Feature | Status | Verification required |
|---|---|---|
| Local processing | Planned, not verified | Core features work offline without account/API |
| No subscription / no paid feature gates | Planned, not verified | Source and release audit |
| Windows 10 compatibility | Not implemented/verified | Clean install and functional test |
| Windows 11 compatibility | Not implemented/verified | Clean install and functional test |
| Preset import/export | Not implemented/verified | Round-trip and malformed-input tests |
| Settings persistence | Not implemented/verified | Restart and upgrade tests |
| Accessibility | Not implemented/verified | Keyboard navigation, scaling, contrast |
| Crash/error diagnostics | Not implemented/verified | Recovery and actionable error reporting |

## Build and testing baseline
- Build: no successful Nova Voice build found.
- Automated tests: no Nova Voice test results found.
- Windows 10/11: not verified.
- Audio latency and quality: not tested.
- Virtual microphone installation: not tested.

Unknown status does not mean a feature is impossible.
