package com.bumptech.glide;

public enum Priority
{
  static
  {
    HIGH = new Priority("HIGH", 1);
    NORMAL = new Priority("NORMAL", 2);
  }
  
  private Priority() {}
}
