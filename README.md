# Ghost

[![GitHub release](https://img.shields.io/github/release/pharo-ide/Ghost.svg)](https://github.com/pharo-ide/Ghost/releases/latest)
[![Unit Tests](https://github.com/pharo-ide/Ghost/actions/workflows/tests.yml/badge.svg)](https://github.com/pharo-ide/Ghost/actions/workflows/tests.yml)

[![Pharo 7.0](https://img.shields.io/badge/Pharo-7.0-informational)](https://pharo.org)
[![Pharo 8.0](https://img.shields.io/badge/Pharo-8.0-informational)](https://pharo.org)
[![Pharo 9.0](https://img.shields.io/badge/Pharo-9.0-informational)](https://pharo.org)
[![Pharo 10](https://img.shields.io/badge/Pharo-10-informational)](https://pharo.org)
[![Pharo 11](https://img.shields.io/badge/Pharo-11-informational)](https://pharo.org)
[![Pharo 12](https://img.shields.io/badge/Pharo-12-informational)](https://pharo.org)
[![Pharo 13](https://img.shields.io/badge/Pharo-13-informational)](https://pharo.org)

Ghost is framework to implement unnatural smalltalk objects like proxies or prototypes. It provides suitable infrastructure to implement message processing in special way

## Installation
The installation script (therefore version of Ghost) depends on Pharo version you are using it in.

Pharo 13 (master branch):
```Smalltalk
Metacello new
  baseline: 'Ghost';
  repository: 'github://pharo-ide/Ghost:master';
  load
```

Pharo 10-12 (v6.0.2 tag):
```Smalltalk
Metacello new
  baseline: 'Ghost';
  repository: 'github://pharo-ide/Ghost:v6.0.2';
  load
```

Pharo <= 9 (pharo9 tag):
```Smalltalk
Metacello new
  baseline: 'Ghost';
  repository: 'github://pharo-ide/Ghost:pharo9';
  load
```

To add dependency in your project baseline:
```Smalltalk
spec
    baseline: 'Ghost'
    with: [ spec repository: 'github://pharo-ide/Ghost:v6.0.2' ].
```
(replace the version in the URL depending on Pharo version as shown above with standalone scripts)

