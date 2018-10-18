package android.support.design.resources;

public class TextAppearanceConfig
{
  private static boolean a;
  
  public TextAppearanceConfig() {}
  
  public static void setShouldLoadFontSynchronously(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public static boolean shouldLoadFontSynchronously()
  {
    return a;
  }
}
