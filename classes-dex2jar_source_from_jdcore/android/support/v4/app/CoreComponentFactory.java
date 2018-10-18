package android.support.v4.app;

import android.app.Activity;
import android.app.AppComponentFactory;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Intent;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;

@RequiresApi(api=28)
@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class CoreComponentFactory
  extends AppComponentFactory
{
  public CoreComponentFactory() {}
  
  static <T> T a(T paramT)
  {
    if ((paramT instanceof CompatWrapped))
    {
      Object localObject = ((CompatWrapped)paramT).getWrapper();
      if (localObject != null) {
        return localObject;
      }
    }
    return paramT;
  }
  
  public Activity instantiateActivity(ClassLoader paramClassLoader, String paramString, Intent paramIntent)
    throws InstantiationException, IllegalAccessException, ClassNotFoundException
  {
    return (Activity)a(super.instantiateActivity(paramClassLoader, paramString, paramIntent));
  }
  
  public Application instantiateApplication(ClassLoader paramClassLoader, String paramString)
    throws InstantiationException, IllegalAccessException, ClassNotFoundException
  {
    return (Application)a(super.instantiateApplication(paramClassLoader, paramString));
  }
  
  public ContentProvider instantiateProvider(ClassLoader paramClassLoader, String paramString)
    throws InstantiationException, IllegalAccessException, ClassNotFoundException
  {
    return (ContentProvider)a(super.instantiateProvider(paramClassLoader, paramString));
  }
  
  public BroadcastReceiver instantiateReceiver(ClassLoader paramClassLoader, String paramString, Intent paramIntent)
    throws InstantiationException, IllegalAccessException, ClassNotFoundException
  {
    return (BroadcastReceiver)a(super.instantiateReceiver(paramClassLoader, paramString, paramIntent));
  }
  
  public Service instantiateService(ClassLoader paramClassLoader, String paramString, Intent paramIntent)
    throws InstantiationException, IllegalAccessException, ClassNotFoundException
  {
    return (Service)a(super.instantiateService(paramClassLoader, paramString, paramIntent));
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static abstract interface CompatWrapped
  {
    public abstract Object getWrapper();
  }
}
