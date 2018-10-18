package android.support.v4.view;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface.OnKeyListener;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.Window.Callback;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class KeyEventDispatcher
{
  private static boolean a = false;
  private static Method b;
  private static boolean c = false;
  private static Field d;
  
  private KeyEventDispatcher() {}
  
  private static DialogInterface.OnKeyListener a(Dialog paramDialog)
  {
    if (!c) {}
    try
    {
      d = Dialog.class.getDeclaredField("mOnKeyListener");
      d.setAccessible(true);
      c = true;
      if (d != null) {}
      try
      {
        paramDialog = (DialogInterface.OnKeyListener)d.get(paramDialog);
        return paramDialog;
      }
      catch (IllegalAccessException paramDialog)
      {
        for (;;) {}
      }
      return null;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
  }
  
  private static boolean a(ActionBar paramActionBar, KeyEvent paramKeyEvent)
  {
    if (!a) {}
    try
    {
      b = paramActionBar.getClass().getMethod("onMenuKeyEvent", new Class[] { KeyEvent.class });
      a = true;
      if (b != null) {}
      try
      {
        boolean bool = ((Boolean)b.invoke(paramActionBar, new Object[] { paramKeyEvent })).booleanValue();
        return bool;
      }
      catch (IllegalAccessException|InvocationTargetException paramActionBar) {}
      return false;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
    return false;
  }
  
  private static boolean a(Activity paramActivity, KeyEvent paramKeyEvent)
  {
    paramActivity.onUserInteraction();
    Object localObject = paramActivity.getWindow();
    if (((Window)localObject).hasFeature(8))
    {
      ActionBar localActionBar = paramActivity.getActionBar();
      if ((paramKeyEvent.getKeyCode() == 82) && (localActionBar != null) && (a(localActionBar, paramKeyEvent))) {
        return true;
      }
    }
    if (((Window)localObject).superDispatchKeyEvent(paramKeyEvent)) {
      return true;
    }
    localObject = ((Window)localObject).getDecorView();
    if (ViewCompat.b((View)localObject, paramKeyEvent)) {
      return true;
    }
    if (localObject != null) {
      localObject = ((View)localObject).getKeyDispatcherState();
    } else {
      localObject = null;
    }
    return paramKeyEvent.dispatch(paramActivity, (KeyEvent.DispatcherState)localObject, paramActivity);
  }
  
  private static boolean a(Dialog paramDialog, KeyEvent paramKeyEvent)
  {
    Object localObject = a(paramDialog);
    if ((localObject != null) && (((DialogInterface.OnKeyListener)localObject).onKey(paramDialog, paramKeyEvent.getKeyCode(), paramKeyEvent))) {
      return true;
    }
    localObject = paramDialog.getWindow();
    if (((Window)localObject).superDispatchKeyEvent(paramKeyEvent)) {
      return true;
    }
    localObject = ((Window)localObject).getDecorView();
    if (ViewCompat.b((View)localObject, paramKeyEvent)) {
      return true;
    }
    if (localObject != null) {
      localObject = ((View)localObject).getKeyDispatcherState();
    } else {
      localObject = null;
    }
    return paramKeyEvent.dispatch(paramDialog, (KeyEvent.DispatcherState)localObject, paramDialog);
  }
  
  public static boolean dispatchBeforeHierarchy(@NonNull View paramView, @NonNull KeyEvent paramKeyEvent)
  {
    return ViewCompat.a(paramView, paramKeyEvent);
  }
  
  public static boolean dispatchKeyEvent(@NonNull Component paramComponent, @Nullable View paramView, @Nullable Window.Callback paramCallback, @NonNull KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramComponent == null) {
      return false;
    }
    if (Build.VERSION.SDK_INT >= 28) {
      return paramComponent.superDispatchKeyEvent(paramKeyEvent);
    }
    if ((paramCallback instanceof Activity)) {
      return a((Activity)paramCallback, paramKeyEvent);
    }
    if ((paramCallback instanceof Dialog)) {
      return a((Dialog)paramCallback, paramKeyEvent);
    }
    if (((paramView != null) && (ViewCompat.b(paramView, paramKeyEvent))) || (paramComponent.superDispatchKeyEvent(paramKeyEvent))) {
      bool = true;
    }
    return bool;
  }
  
  public static abstract interface Component
  {
    public abstract boolean superDispatchKeyEvent(KeyEvent paramKeyEvent);
  }
}
