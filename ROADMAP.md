# Nova Voice roadmap

## Stage 0 — Project foundation
- [ ] Establish Windows desktop solution and build pipeline.
- [ ] Add dependency/license inventory.
- [ ] Add CI build and unit-test workflow.
- [ ] Record Windows 10/11 support matrix.

## Stage 1 — First working audio path
- [ ] Enumerate microphone and output devices.
- [ ] Capture microphone audio and play it through selected output.
- [ ] Add mute, input/output gain, and safe stop/recovery.
- [ ] Measure end-to-end latency and detect glitches.
- [ ] Verify device disconnect/reconnect.

**Milestone:** reliable microphone monitoring with measured latency.

## Stage 2 — First voice effects
- [ ] Add pitch shift.
- [ ] Add independent formant processing.
- [ ] Add effect-chain architecture.
- [ ] Implement robot, radio, and alien presets.
- [ ] Save/load custom presets.
- [ ] Add audio-fixture tests and listening evaluation.

## Stage 3 — Soundboard and audio quality
- [ ] Import supported audio formats.
- [ ] Add multi-sound playback, hotkeys, categories, looping, stop-all.
- [ ] Add EQ, filters, gate, compressor, limiter, feedback protection.
- [ ] Evaluate and integrate noise suppression.

## Stage 4 — Virtual microphone
- [ ] Compare legal, maintained virtual audio driver options.
- [ ] Document signing, admin, installation, uninstall, and recovery.
- [ ] Implement virtual output adapter.
- [ ] Test with conferencing, games, and streaming apps.

## Stage 5 — Release readiness
- [ ] Verify clean installation on Windows 10 and 11.
- [ ] Test performance, latency, CPU/memory, and long-running stability.
- [ ] Complete accessibility and error diagnostics.
- [ ] Publish dependency notices and license files.
- [ ] Produce reproducible release builds and checksums.

## Current blockers
- The repository contained only a short placeholder README; no application implementation was available to preserve.
- Audio engine and desktop solution are not yet implemented.
- Virtual microphone driver choice is unresolved.
- Dependency license review is pending.
