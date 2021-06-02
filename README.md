## 1. Intro

This document and repo helps to start rapidly with sonarqube community edition.

## 2. Starting SQ

Firstly run sonar qube server with script `run-server.sh` assuming docker preinstalled. Wait for a while until it's ready.

## 3. Change default password (if required)

Navigate to 'http://localhost:9000/' in your browser and change admin password. All scripts in this repo uses defaults (admin/admin).

## 4. Create new project in SQ

You cand do it manually in browser, or automatically with script `./make-project.sh`. This script creates project named `prj`. All scripts in this repo perform opertaions with project named `prj`.

## 5. Restore rules

Run script `./restore-rules.sh`. It restores ruleset `GPN SVC way` that is eligable to check all incoming code.

## 6. Bind rules to project (named prj)

Run script `./bind-rules.sh`. It applies ruleset `GPN SVC way` to project `prj`

## 7. Run scanner

### 7.1 Run scanner for Java language

...

### 7.2 Run scanner for C# language

...

### 7.3 Run scanner for C++ language

SonarQube for C++ analyzer requires **developer edition** at least. So, the whole example is omitted.

### 7.4 Run scanner for any of: python, typescript, javascript, golang

Run script `./run-scanner.sh`.