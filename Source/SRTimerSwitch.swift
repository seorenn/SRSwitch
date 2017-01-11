// SRTimerSwitch.swift
// Copyright 2017 Seorenn. All rights reserved.

public class SRTimerSwitch : SRSwitch {
  public let lifeInterval: TimeInterval
  public var onBirth: (() -> ())?
  public var onDeath: (() -> ())?
  
  private var timer: Timer?
  
  public init(lifeInterval: TimeInterval) {
    self.lifeInterval = lifeInterval
  }
  
  public func trigger() {
    if timer == nil {
      resetTimer()
      if let handler = onBirth { handler() }
    } else {
      resetTimer()
    }
  }
  
  public func cancel() {
    expireTimer()
  }
  
  deinit {
    expireTimer()
  }
  
  private func resetTimer() {
    expireTimer()
    
    timer = Timer.scheduledTimer(withTimeInterval: lifeInterval, repeats: false) { t in
      self.kill()
      self.timer?.invalidate()
      self.timer = nil
    }
  }
  
  private func expireTimer() {
    if timer != nil {
      timer?.invalidate()
      timer = nil
    }
  }
  
  private func kill() {
    if let handler = onDeath { handler() }
  }
}
