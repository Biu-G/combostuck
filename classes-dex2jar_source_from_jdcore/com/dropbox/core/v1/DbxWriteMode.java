package com.dropbox.core.v1;

public final class DbxWriteMode
{
  private static final DbxWriteMode b = new DbxWriteMode(new String[] { "overwrite", "false" });
  private static final DbxWriteMode c = new DbxWriteMode(new String[] { "overwrite", "true" });
  final String[] a;
  
  DbxWriteMode(String... paramVarArgs)
  {
    a = paramVarArgs;
  }
  
  public static DbxWriteMode add()
  {
    return b;
  }
  
  public static DbxWriteMode force()
  {
    return c;
  }
  
  public static DbxWriteMode update(String paramString)
  {
    return new DbxWriteMode(new String[] { "parent_rev", paramString });
  }
}
