package android.support.v7.view.menu;

class b<T>
{
  final T b;
  
  b(T paramT)
  {
    if (paramT != null)
    {
      b = paramT;
      return;
    }
    throw new IllegalArgumentException("Wrapped Object can not be null.");
  }
  
  public T getWrappedObject()
  {
    return b;
  }
}
