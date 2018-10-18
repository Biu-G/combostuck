package android.support.v4.app;

import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.IconCompat;

public class Person
{
  @Nullable
  CharSequence a;
  @Nullable
  IconCompat b;
  @Nullable
  String c;
  @Nullable
  String d;
  boolean e;
  boolean f;
  
  Person(Builder paramBuilder)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
  }
  
  @NonNull
  @RequiresApi(28)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static Person fromAndroidPerson(@NonNull android.app.Person paramPerson)
  {
    Builder localBuilder = new Builder().setName(paramPerson.getName());
    IconCompat localIconCompat;
    if (paramPerson.getIcon() != null) {
      localIconCompat = IconCompat.createFromIcon(paramPerson.getIcon());
    } else {
      localIconCompat = null;
    }
    return localBuilder.setIcon(localIconCompat).setUri(paramPerson.getUri()).setKey(paramPerson.getKey()).setBot(paramPerson.isBot()).setImportant(paramPerson.isImportant()).build();
  }
  
  @NonNull
  public static Person fromBundle(@NonNull Bundle paramBundle)
  {
    Object localObject = paramBundle.getBundle("icon");
    Builder localBuilder = new Builder().setName(paramBundle.getCharSequence("name"));
    if (localObject != null) {
      localObject = IconCompat.createFromBundle((Bundle)localObject);
    } else {
      localObject = null;
    }
    return localBuilder.setIcon((IconCompat)localObject).setUri(paramBundle.getString("uri")).setKey(paramBundle.getString("key")).setBot(paramBundle.getBoolean("isBot")).setImportant(paramBundle.getBoolean("isImportant")).build();
  }
  
  @Nullable
  public IconCompat getIcon()
  {
    return b;
  }
  
  @Nullable
  public String getKey()
  {
    return d;
  }
  
  @Nullable
  public CharSequence getName()
  {
    return a;
  }
  
  @Nullable
  public String getUri()
  {
    return c;
  }
  
  public boolean isBot()
  {
    return e;
  }
  
  public boolean isImportant()
  {
    return f;
  }
  
  @NonNull
  @RequiresApi(28)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public android.app.Person toAndroidPerson()
  {
    android.app.Person.Builder localBuilder = new android.app.Person.Builder().setName(getName());
    Icon localIcon;
    if (getIcon() != null) {
      localIcon = getIcon().toIcon();
    } else {
      localIcon = null;
    }
    return localBuilder.setIcon(localIcon).setUri(getUri()).setKey(getKey()).setBot(isBot()).setImportant(isImportant()).build();
  }
  
  @NonNull
  public Builder toBuilder()
  {
    return new Builder(this);
  }
  
  @NonNull
  public Bundle toBundle()
  {
    Bundle localBundle2 = new Bundle();
    localBundle2.putCharSequence("name", a);
    Bundle localBundle1;
    if (b != null) {
      localBundle1 = b.toBundle();
    } else {
      localBundle1 = null;
    }
    localBundle2.putBundle("icon", localBundle1);
    localBundle2.putString("uri", c);
    localBundle2.putString("key", d);
    localBundle2.putBoolean("isBot", e);
    localBundle2.putBoolean("isImportant", f);
    return localBundle2;
  }
  
  public static class Builder
  {
    @Nullable
    CharSequence a;
    @Nullable
    IconCompat b;
    @Nullable
    String c;
    @Nullable
    String d;
    boolean e;
    boolean f;
    
    public Builder() {}
    
    Builder(Person paramPerson)
    {
      a = a;
      b = b;
      c = c;
      d = d;
      e = e;
      f = f;
    }
    
    @NonNull
    public Person build()
    {
      return new Person(this);
    }
    
    @NonNull
    public Builder setBot(boolean paramBoolean)
    {
      e = paramBoolean;
      return this;
    }
    
    @NonNull
    public Builder setIcon(@Nullable IconCompat paramIconCompat)
    {
      b = paramIconCompat;
      return this;
    }
    
    @NonNull
    public Builder setImportant(boolean paramBoolean)
    {
      f = paramBoolean;
      return this;
    }
    
    @NonNull
    public Builder setKey(@Nullable String paramString)
    {
      d = paramString;
      return this;
    }
    
    @NonNull
    public Builder setName(@Nullable CharSequence paramCharSequence)
    {
      a = paramCharSequence;
      return this;
    }
    
    @NonNull
    public Builder setUri(@Nullable String paramString)
    {
      c = paramString;
      return this;
    }
  }
}
