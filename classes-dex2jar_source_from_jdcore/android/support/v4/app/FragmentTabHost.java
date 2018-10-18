package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost
  extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList<c> a = new ArrayList();
  private FrameLayout b;
  private Context c;
  private FragmentManager d;
  private int e;
  private TabHost.OnTabChangeListener f;
  private c g;
  private boolean h;
  
  public FragmentTabHost(Context paramContext)
  {
    super(paramContext, null);
    a(paramContext, null);
  }
  
  public FragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  @Nullable
  private c a(String paramString)
  {
    int j = a.size();
    int i = 0;
    while (i < j)
    {
      c localC = (c)a.get(i);
      if (a.equals(paramString)) {
        return localC;
      }
      i += 1;
    }
    return null;
  }
  
  @Nullable
  private FragmentTransaction a(@Nullable String paramString, @Nullable FragmentTransaction paramFragmentTransaction)
  {
    c localC = a(paramString);
    paramString = paramFragmentTransaction;
    if (g != localC)
    {
      paramString = paramFragmentTransaction;
      if (paramFragmentTransaction == null) {
        paramString = d.beginTransaction();
      }
      if ((g != null) && (g.d != null)) {
        paramString.detach(g.d);
      }
      if (localC != null) {
        if (d == null)
        {
          d = Fragment.instantiate(c, b.getName(), c);
          paramString.add(e, d, a);
        }
        else
        {
          paramString.attach(d);
        }
      }
      g = localC;
    }
    return paramString;
  }
  
  private void a()
  {
    if (b == null)
    {
      b = ((FrameLayout)findViewById(e));
      if (b != null) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("No tab content FrameLayout found for id ");
      localStringBuilder.append(e);
      throw new IllegalStateException(localStringBuilder.toString());
    }
  }
  
  private void a(Context paramContext)
  {
    if (findViewById(16908307) == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
      Object localObject = new TabWidget(paramContext);
      ((TabWidget)localObject).setId(16908307);
      ((TabWidget)localObject).setOrientation(0);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      localObject = new FrameLayout(paramContext);
      ((FrameLayout)localObject).setId(16908305);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(0, 0, 0.0F));
      paramContext = new FrameLayout(paramContext);
      b = paramContext;
      b.setId(e);
      localLinearLayout.addView(paramContext, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    e = paramContext.getResourceId(0, 0);
    paramContext.recycle();
    super.setOnTabChangedListener(this);
  }
  
  public void addTab(@NonNull TabHost.TabSpec paramTabSpec, @NonNull Class<?> paramClass, @Nullable Bundle paramBundle)
  {
    paramTabSpec.setContent(new a(c));
    String str = paramTabSpec.getTag();
    paramClass = new c(str, paramClass, paramBundle);
    if (h)
    {
      d = d.findFragmentByTag(str);
      if ((d != null) && (!d.isDetached()))
      {
        paramBundle = d.beginTransaction();
        paramBundle.detach(d);
        paramBundle.commit();
      }
    }
    a.add(paramClass);
    addTab(paramTabSpec);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    int j = a.size();
    Object localObject1 = null;
    int i = 0;
    while (i < j)
    {
      c localC = (c)a.get(i);
      d = d.findFragmentByTag(a);
      Object localObject2 = localObject1;
      if (d != null)
      {
        localObject2 = localObject1;
        if (!d.isDetached()) {
          if (a.equals(str))
          {
            g = localC;
            localObject2 = localObject1;
          }
          else
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = d.beginTransaction();
            }
            ((FragmentTransaction)localObject2).detach(d);
          }
        }
      }
      i += 1;
      localObject1 = localObject2;
    }
    h = true;
    localObject1 = a(str, (FragmentTransaction)localObject1);
    if (localObject1 != null)
    {
      ((FragmentTransaction)localObject1).commit();
      d.executePendingTransactions();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    h = false;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof b))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (b)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setCurrentTabByTag(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    b localB = new b(super.onSaveInstanceState());
    a = getCurrentTabTag();
    return localB;
  }
  
  public void onTabChanged(String paramString)
  {
    if (h)
    {
      FragmentTransaction localFragmentTransaction = a(paramString, null);
      if (localFragmentTransaction != null) {
        localFragmentTransaction.commit();
      }
    }
    if (f != null) {
      f.onTabChanged(paramString);
    }
  }
  
  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    f = paramOnTabChangeListener;
  }
  
  @Deprecated
  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }
  
  public void setup(Context paramContext, FragmentManager paramFragmentManager)
  {
    a(paramContext);
    super.setup();
    c = paramContext;
    d = paramFragmentManager;
    a();
  }
  
  public void setup(Context paramContext, FragmentManager paramFragmentManager, int paramInt)
  {
    a(paramContext);
    super.setup();
    c = paramContext;
    d = paramFragmentManager;
    e = paramInt;
    a();
    b.setId(paramInt);
    if (getId() == -1) {
      setId(16908306);
    }
  }
  
  static class a
    implements TabHost.TabContentFactory
  {
    private final Context a;
    
    public a(Context paramContext)
    {
      a = paramContext;
    }
    
    public View createTabContent(String paramString)
    {
      paramString = new View(a);
      paramString.setMinimumWidth(0);
      paramString.setMinimumHeight(0);
      return paramString;
    }
  }
  
  static class b
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator()
    {
      public FragmentTabHost.b a(Parcel paramAnonymousParcel)
      {
        return new FragmentTabHost.b(paramAnonymousParcel);
      }
      
      public FragmentTabHost.b[] a(int paramAnonymousInt)
      {
        return new FragmentTabHost.b[paramAnonymousInt];
      }
    };
    String a;
    
    b(Parcel paramParcel)
    {
      super();
      a = paramParcel.readString();
    }
    
    b(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("FragmentTabHost.SavedState{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" curTab=");
      localStringBuilder.append(a);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(a);
    }
  }
  
  static final class c
  {
    @NonNull
    final String a;
    @NonNull
    final Class<?> b;
    @Nullable
    final Bundle c;
    Fragment d;
    
    c(@NonNull String paramString, @NonNull Class<?> paramClass, @Nullable Bundle paramBundle)
    {
      a = paramString;
      b = paramClass;
      c = paramBundle;
    }
  }
}
