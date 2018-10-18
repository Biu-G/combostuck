package com.bumptech.glide.load;

public enum DataSource
{
  static
  {
    DATA_DISK_CACHE = new DataSource("DATA_DISK_CACHE", 2);
    RESOURCE_DISK_CACHE = new DataSource("RESOURCE_DISK_CACHE", 3);
  }
  
  private DataSource() {}
}
