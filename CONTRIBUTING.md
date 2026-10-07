# Contributing

Start with [setup](docs/SETUP.md) and [architecture](docs/ARCHITECTURE.md). The application license has not yet been selected; discuss code contributions with the owner before submitting them. Documentation corrections and reproducible issue reports are welcome for review.

For a bug, include the OS, Python and package versions, steps to reproduce, expected behavior and actual behavior. Use synthetic content. Do not upload API keys, personal databases or private documents.

For an agreed change:

1. Create a focused branch.
2. Keep the change small and preserve unrelated behavior.
3. Update affected documentation; add a focused regression test for a behavior change where useful.
4. Run `python -m unittest discover -s tests -v` in your installed environment.
5. Describe the problem, resulting behavior and actual validation in the pull request.

For visual changes, include sanitized screenshots in relevant themes and check a compact window. Preserve Unicode/RTL support, optional AI configuration and offline study tools. Keep new dependencies justified and avoid committing generated databases/builds.

See [development](docs/DEVELOPMENT.md) for data isolation and Windows packaging. Security reports should follow [SECURITY.md](SECURITY.md).
