package com.dropbox.core.util;

public abstract class Dumpable
{
  public Dumpable() {}
  
  protected abstract void dumpFields(DumpWriter paramDumpWriter);
  
  protected String getTypeName()
  {
    return null;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    toString(localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public final void toString(StringBuilder paramStringBuilder)
  {
    new DumpWriter.Plain(paramStringBuilder).v(this);
  }
  
  public final String toStringMultiline()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    toStringMultiline(localStringBuilder, 0, true);
    return localStringBuilder.toString();
  }
  
  public final void toStringMultiline(StringBuilder paramStringBuilder, int paramInt, boolean paramBoolean)
  {
    new DumpWriter.Multiline(paramStringBuilder, 2, paramInt, paramBoolean).v(this);
  }
}
