package android.support.v4.content;

import android.content.SharedPreferences.Editor;
import android.support.annotation.NonNull;

@Deprecated
public final class SharedPreferencesCompat
{
  private SharedPreferencesCompat() {}
  
  @Deprecated
  public static final class EditorCompat
  {
    private static EditorCompat a;
    private final a b = new a();
    
    private EditorCompat() {}
    
    @Deprecated
    public static EditorCompat getInstance()
    {
      if (a == null) {
        a = new EditorCompat();
      }
      return a;
    }
    
    @Deprecated
    public void apply(@NonNull SharedPreferences.Editor paramEditor)
    {
      b.a(paramEditor);
    }
    
    private static class a
    {
      a() {}
      
      public void a(@NonNull SharedPreferences.Editor paramEditor)
      {
        try
        {
          paramEditor.apply();
          return;
        }
        catch (AbstractMethodError localAbstractMethodError)
        {
          for (;;) {}
        }
        paramEditor.commit();
      }
    }
  }
}
