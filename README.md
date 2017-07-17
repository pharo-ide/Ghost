# Ghost
[![Build Status](https://travis-ci.org/dionisiydk/Ghost.svg?branch=master)](https://travis-ci.org/dionisiydk/Ghost)

Ghost is framework to implement unnatural smalltalk objects like proxies or prototypes. It provides suitable infrastructure to implement message processing in special way

## Installation
```Smalltalk
Metacello new
  baseline: 'Ghost';
  repository: 'github://dionisiydk/Ghost';
  load
```
Use following snippet for stable dependency in your project baseline:
```Smalltalk
spec
    baseline: 'Ghost'
    with: [ spec repository: 'github://dionisiydk/Ghost:v3.0.x' ]
```
