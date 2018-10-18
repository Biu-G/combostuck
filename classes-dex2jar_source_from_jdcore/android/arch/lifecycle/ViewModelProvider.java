package android.arch.lifecycle;

import android.app.Application;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public class ViewModelProvider
{
  private final Factory a;
  private final ViewModelStore b;
  
  public ViewModelProvider(@NonNull ViewModelStore paramViewModelStore, @NonNull Factory paramFactory)
  {
    a = paramFactory;
    b = paramViewModelStore;
  }
  
  public ViewModelProvider(@NonNull ViewModelStoreOwner paramViewModelStoreOwner, @NonNull Factory paramFactory)
  {
    this(paramViewModelStoreOwner.getViewModelStore(), paramFactory);
  }
  
  @MainThread
  @NonNull
  public <T extends ViewModel> T get(@NonNull Class<T> paramClass)
  {
    String str = paramClass.getCanonicalName();
    if (str != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("android.arch.lifecycle.ViewModelProvider.DefaultKey:");
      localStringBuilder.append(str);
      return get(localStringBuilder.toString(), paramClass);
    }
    throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
  }
  
  @MainThread
  @NonNull
  public <T extends ViewModel> T get(@NonNull String paramString, @NonNull Class<T> paramClass)
  {
    ViewModel localViewModel = b.a(paramString);
    if (paramClass.isInstance(localViewModel)) {
      return localViewModel;
    }
    paramClass = a.create(paramClass);
    b.a(paramString, paramClass);
    return paramClass;
  }
  
  public static class AndroidViewModelFactory
    extends ViewModelProvider.NewInstanceFactory
  {
    private static AndroidViewModelFactory a;
    private Application b;
    
    public AndroidViewModelFactory(@NonNull Application paramApplication)
    {
      b = paramApplication;
    }
    
    @NonNull
    public static AndroidViewModelFactory getInstance(@NonNull Application paramApplication)
    {
      if (a == null) {
        a = new AndroidViewModelFactory(paramApplication);
      }
      return a;
    }
    
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> paramClass)
    {
      if (AndroidViewModel.class.isAssignableFrom(paramClass)) {
        try
        {
          ViewModel localViewModel = (ViewModel)paramClass.getConstructor(new Class[] { Application.class }).newInstance(new Object[] { b });
          return localViewModel;
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Cannot create an instance of ");
          localStringBuilder.append(paramClass);
          throw new RuntimeException(localStringBuilder.toString(), localInvocationTargetException);
        }
        catch (InstantiationException localInstantiationException)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Cannot create an instance of ");
          localStringBuilder.append(paramClass);
          throw new RuntimeException(localStringBuilder.toString(), localInstantiationException);
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Cannot create an instance of ");
          localStringBuilder.append(paramClass);
          throw new RuntimeException(localStringBuilder.toString(), localIllegalAccessException);
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Cannot create an instance of ");
          localStringBuilder.append(paramClass);
          throw new RuntimeException(localStringBuilder.toString(), localNoSuchMethodException);
        }
      }
      return super.create(paramClass);
    }
  }
  
  public static abstract interface Factory
  {
    @NonNull
    public abstract <T extends ViewModel> T create(@NonNull Class<T> paramClass);
  }
  
  public static class NewInstanceFactory
    implements ViewModelProvider.Factory
  {
    public NewInstanceFactory() {}
    
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> paramClass)
    {
      try
      {
        ViewModel localViewModel = (ViewModel)paramClass.newInstance();
        return localViewModel;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Cannot create an instance of ");
        localStringBuilder.append(paramClass);
        throw new RuntimeException(localStringBuilder.toString(), localIllegalAccessException);
      }
      catch (InstantiationException localInstantiationException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Cannot create an instance of ");
        localStringBuilder.append(paramClass);
        throw new RuntimeException(localStringBuilder.toString(), localInstantiationException);
      }
    }
  }
}
