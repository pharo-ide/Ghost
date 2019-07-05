# Ghost
[![Build Status](https://travis-ci.org/pharo-ide/Ghost.svg?branch=master)](https://travis-ci.org/pharo-ide/Ghost)

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
