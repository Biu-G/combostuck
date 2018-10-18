package com.dropbox.core.util;

public abstract class Maybe<T>
{
  private static final Maybe<Object> a = new b(null);
  
  private Maybe() {}
  
  public static <T> Maybe<T> Just(T paramT)
  {
    return new a(paramT, null);
  }
  
  public static <T> Maybe<T> Nothing()
  {
    return a;
  }
  
  public abstract boolean equals(Maybe<T> paramMaybe);
  
  public abstract T get(T paramT);
  
  public abstract T getJust();
  
  public abstract int hashCode();
  
  public abstract boolean isJust();
  
  public abstract boolean isNothing();
  
  public abstract String toString();
  
  private static final class a<T>
    extends Maybe<T>
  {
    private final T a;
    
    private a(T paramT)
    {
      super();
      a = paramT;
    }
    
    public boolean equals(Maybe<T> paramMaybe)
    {
      if ((paramMaybe instanceof a))
      {
        paramMaybe = (a)paramMaybe;
        return LangUtil.nullableEquals(a, a);
      }
      if ((paramMaybe instanceof Maybe.b)) {
        return false;
      }
      throw LangUtil.badType(paramMaybe);
    }
    
    public T get(T paramT)
    {
      return a;
    }
    
    public T getJust()
    {
      return a;
    }
    
    public int hashCode()
    {
      return LangUtil.nullableHashCode(a) + 1;
    }
    
    public boolean isJust()
    {
      return true;
    }
    
    public boolean isNothing()
    {
      return false;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Just(");
      localStringBuilder.append(a);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
    }
  }
  
  private static final class b<T>
    extends Maybe<T>
  {
    private b()
    {
      super();
    }
    
    public boolean equals(Maybe<T> paramMaybe)
    {
      return paramMaybe == this;
    }
    
    public T get(T paramT)
    {
      return paramT;
    }
    
    public T getJust()
    {
      throw new IllegalStateException("can't call getJust() on a Nothing");
    }
    
    public int hashCode()
    {
      return 0;
    }
    
    public boolean isJust()
    {
      return false;
    }
    
    public boolean isNothing()
    {
      return true;
    }
    
    public String toString()
    {
      return "Nothing";
    }
  }
}
