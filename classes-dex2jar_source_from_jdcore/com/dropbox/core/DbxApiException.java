package com.dropbox.core;

public class DbxApiException
  extends DbxException
{
  private static final long serialVersionUID = 0L;
  private final LocalizedText a;
  
  public DbxApiException(String paramString1, LocalizedText paramLocalizedText, String paramString2)
  {
    super(paramString1, paramString2);
    a = paramLocalizedText;
  }
  
  public DbxApiException(String paramString1, LocalizedText paramLocalizedText, String paramString2, Throwable paramThrowable)
  {
    super(paramString1, paramString2, paramThrowable);
    a = paramLocalizedText;
  }
  
  protected static String buildMessage(String paramString, LocalizedText paramLocalizedText)
  {
    return buildMessage(paramString, paramLocalizedText, null);
  }
  
  protected static String buildMessage(String paramString, LocalizedText paramLocalizedText, Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Exception in ");
    localStringBuilder.append(paramString);
    if (paramObject != null)
    {
      localStringBuilder.append(": ");
      localStringBuilder.append(paramObject);
    }
    if (paramLocalizedText != null)
    {
      localStringBuilder.append(" (user message: ");
      localStringBuilder.append(paramLocalizedText);
      localStringBuilder.append(")");
    }
    return localStringBuilder.toString();
  }
  
  public LocalizedText getUserMessage()
  {
    return a;
  }
}
