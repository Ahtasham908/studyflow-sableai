# Validation

## Repository preparation — 2026-10-07

The supplied application source, tests, dependency ranges and Windows build scripts were preserved byte-for-byte. Changes are documentation and repository support files.

| Check | Result |
| --- | --- |
| Existing automated suite | **15 tests passed** in 34.333 seconds on Linux with offscreen Qt |
| Python 3.11 syntax compatibility | All Python source files parsed with the Python 3.11 grammar |
| Relative Markdown links and screenshot path | All referenced local files exist |
| Application/build/test source comparison | 19 original code, requirements and build files unchanged |
| Public package inspection | No real API key or personal database found; test credentials are explicit dummy strings |

Test environment: Python 3.12.14, PySide6 6.11.2, google-genai 2.28.0, python-docx 1.2.0 and keyring 25.7.0.

Command used:

```bash
QT_QPA_PLATFORM=offscreen PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring python -m unittest discover -s tests -v
```

The null keyring isolates tests from OS credentials. Tests use temporary databases and mocked Gemini transport. The full output is in [docs/test-run-2026-10-07.txt](docs/test-run-2026-10-07.txt). Qt printed offscreen `propagateSizeHints` capability messages; the suite completed successfully.

## What those tests cover

Navigation and themes; subject/topic/exam/task forms; linked-record behavior; note autosave and restart; full-editor draft updates; floating notes and Urdu labels; focus pauses and sleep-gap exclusion; midnight splitting; Pomodoro breaks; backup restore and incompatible-backup rejection; revisions; streamed AI responses; model discovery; invalid credentials; bounded retries; cancellation; writing/translation persistence.

These are the existing project's tests, not an exhaustive UI or security audit.

## Limits

- No live Gemini request was made; account-specific models, quota and network behavior remain unverified.
- Native Windows Credential Manager, printing, batch execution and the PyInstaller executable were not exercised in this Linux environment.
- The included GitHub Actions workflow has not run on GitHub yet.
- Visual export/printing checks from the original project were not repeated for this documentation-only preparation.
- Performance on a 4 GB Windows laptop and long-term reliability under hardware or disk failures were not tested.

## Original evidence

The input ZIP contained a separate validation report and test log. They are retained as [original validation](docs/ORIGINAL_VALIDATION.md) and [original test output](docs/original-test-run.txt). Their broader rendering and visual checks are historical supplied records, not newly repeated results.
