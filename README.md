# Scripting Setup

_A basic build setup for scripting projects._

![Build Status](https://github.com/inkarkat/scripting-setup/actions/workflows/build.yml/badge.svg)

This is a reusable workflow that checks out a scripting repository (that adheres to certain conventions with regards to project structure and dependencies) and runs its tests.
It's been created to minimize the setup effort for my scripting projects.

See [inkarkat/scripting-testrunner](https://github.com/inkarkat/scripting-testrunner) for details.

### Usage

```yaml
name: Build scripts
on:
  push:
    branches:
      - '**'
    tags-ignore:
      - '**'
  pull_request:
  # Allows you to run this workflow manually from the Actions tab.
  workflow_dispatch:

jobs:
  build:
    uses: inkarkat/scripting-setup/.github/workflows/build.yml@master
    with:
      additional-packages: libtest-script-perl perl-Modern-Perl
    secrets: inherit
```
