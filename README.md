# 1. Intro

This document and repo helps to start rapidly with sonarqube community edition.

# 2. Starting SQ

Firstly run sonar qube server with script `run-server.sh` assuming docker preinstalled.

# 3. Change default password (if required)

Navigate to 'http://localhost:9000/' in your browser and change admin password. All scripts in this repo uses defaults (admin/admin).

# 4. Create new project in SQ

You cand do it manually in browser, or automatically with script `./make-project.sh`. This script creates project named `prj`. All scripts in this repo perform opertaions with project named `prj`.

# 5. Restore rules

Run scripts in `./bind-rules.sh`. It restores ruleset `GPN SVC way` that is eligable to check all incoming code.