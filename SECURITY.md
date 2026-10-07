# Security and privacy

## Data handling

StudyFlow is a local single-profile desktop application. Profile setup does not authenticate or isolate multiple users. SQLite files, recovery copies, notes and exports are not encrypted by this application; operating-system access controls protect the files.

The API key is held in memory by default. Optional persistence uses only the native Windows keyring backend, under service `StudyFlow` and account `Gemini`. The key is not saved in the application's SQLite database or backups. Other keyring backends are not used for persistent storage. To stop remembering a key, clear the remember option and save settings; if the OS credential store is unavailable, verify removal in Windows Credential Manager when it becomes available.

Chat requests include the current conversation. Writing and translation requests include their relevant input or draft. These leave the computer when you invoke the AI feature. Refreshing models also contacts Google. Stop suppresses late output locally and does not undo a request already sent or its provider usage.

The application contains no implemented cloud synchronization service. Database backups include chat history and profile photos, so treat them as private documents. Clearing chat history is not a secure-erasure guarantee for disks or older backups.

## Public repository hygiene

The `.gitignore` excludes common secrets, databases, backups and build output. It does not remove already tracked files and is not a secret scanner. GitHub's browser upload does not apply Git's ignore rules: upload only the clean source package.

Never attach a real API key, personal database, unredacted chat, private document or credential screenshot to an issue. Use synthetic examples and remove identifying information from logs.

If a key has been published, revoke/rotate it with its provider and remove the exposed material from repository history. Merely deleting a file from the latest commit does not remove earlier copies.

## Reporting a vulnerability

Use the repository's private vulnerability reporting option if the owner has enabled it. Otherwise request a private contact channel without posting exploit details or sensitive data publicly. No dedicated security email address or response-time commitment has been configured in this package.

This project has not undergone an independent security audit.
