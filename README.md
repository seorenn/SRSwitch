SRSwitch
========

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

