package android.arch.lifecycle;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class ViewModelStore
{
  private final HashMap<String, ViewModel> a = new HashMap();
  
  public ViewModelStore() {}
  
  final ViewModel a(String paramString)
  {
    return (ViewModel)a.get(paramString);
  }
  
  final void a(String paramString, ViewModel paramViewModel)
  {
    paramString = (ViewModel)a.put(paramString, paramViewModel);
    if (paramString != null) {
      paramString.onCleared();
    }
  }
  
  public final void clear()
  {
    Iterator localIterator = a.values().iterator();
    while (localIterator.hasNext()) {
      ((ViewModel)localIterator.next()).onCleared();
    }
    a.clear();
  }
}
