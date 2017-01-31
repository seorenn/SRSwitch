SRSwitch
========

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Seorenn's Some Switch Pattern Implementations.

Current status is draft :-)

## SRTimerSwitch

### Example

```
let timerSwitch = SRTimerSwitch(lifeInterval: 2)
timerSwitch.onBirth = {
  print("TimerSwitch ON")
}
timerSwitch.onDeath = {
  print("TimerSwitch OFF")
}

...

timerSwitch.trigger()
```

