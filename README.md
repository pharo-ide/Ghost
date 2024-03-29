# Ghost

[![GitHub release](https://img.shields.io/github/release/pharo-ide/Ghost.svg)](https://github.com/pharo-ide/Ghost/releases/latest)
[![Unit Tests](https://github.com/pharo-ide/Ghost/actions/workflows/tests.yml/badge.svg)](https://github.com/pharo-ide/Ghost/actions/workflows/tests.yml)

[![Pharo 7.0](https://img.shields.io/badge/Pharo-7.0-informational)](https://pharo.org)
[![Pharo 8.0](https://img.shields.io/badge/Pharo-8.0-informational)](https://pharo.org)
[![Pharo 9.0](https://img.shields.io/badge/Pharo-9.0-informational)](https://pharo.org)
[![Pharo 10](https://img.shields.io/badge/Pharo-10-informational)](https://pharo.org)
[![Pharo 11](https://img.shields.io/badge/Pharo-11-informational)](https://pharo.org)
[![Pharo 11](https://img.shields.io/badge/Pharo-12-informational)](https://pharo.org)

Ghost is framework to implement unnatural smalltalk objects like proxies or prototypes. It provides suitable infrastructure to implement message processing in special way

## Installation
Use following script for Pharo version >= 10:
```Smalltalk
Metacello new
  baseline: 'Ghost';
  repository: 'github://pharo-ide/Ghost';
  load
```
To add dependency in your project baseline:
```Smalltalk
spec
    baseline: 'Ghost'
    with: [ spec repository: 'github://pharo-ide/Ghost:v6.0.0' ]
```
Notice that Pharo versions <= 9 were based on GTTools. In current Pharo it was removed and replaced by NewTools project. Ghost requires a dedicated tooling support to be able inspect Ghost objects. In order to use Ghost in old versions of Pharo load pharo9 branch instead of master:
```Smalltalk
Metacello new
  baseline: 'Ghost';
  repository: 'github://pharo-ide/Ghost:pharo9';
  load
```

