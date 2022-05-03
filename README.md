# Ghost

[![GitHub release](https://img.shields.io/github/release/pharo-ide/Ghost.svg)](https://github.com/pharo-ide/Ghost/releases/latest)
[![Unit Tests](https://github.com/pharo-ide/Ghost/actions/workflows/tests.yml/badge.svg)](https://github.com/pharo-ide/Ghost/actions/workflows/tests.yml)

[![Pharo 7.0](https://img.shields.io/badge/Pharo-7.0-informational)](https://pharo.org)
[![Pharo 8.0](https://img.shields.io/badge/Pharo-8.0-informational)](https://pharo.org)
[![Pharo 9.0](https://img.shields.io/badge/Pharo-9.0-informational)](https://pharo.org)
[![Pharo 10](https://img.shields.io/badge/Pharo-10-informational)](https://pharo.org)
[![Pharo 11](https://img.shields.io/badge/Pharo-11-informational)](https://pharo.org)

Ghost is framework to implement unnatural smalltalk objects like proxies or prototypes. It provides suitable infrastructure to implement message processing in special way

## Installation
Use following script for Pharo version >= 6:
```Smalltalk
Metacello new
  baseline: 'Ghost';
  repository: 'github://pharo-ide/Ghost';
  load
```
Notice that Pharo 6 requires manual loading of Tonel format.

To add dependency in your project baseline:
```Smalltalk
spec
    baseline: 'Ghost'
    with: [ spec repository: 'github://pharo-ide/Ghost:v4.0.?' ]
```
For old Pharo versions project should be loaded from smalltalkhub:
```Smalltalk
Metacello new
      smalltalkhubUser: 'Pharo' project: 'Ghost';
      configuration: 'Ghost';
      version: #stable;
      load.
```
