package android.support.v7.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.appcompat.R.dimen;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.string;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.view.menu.ShowableListMenu;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ActivityChooserView
  extends ViewGroup
  implements ActivityChooserModel.ActivityChooserModelClient
{
  final a a;
  final FrameLayout b;
  final FrameLayout c;
  ActionProvider d;
  final DataSetObserver e = new DataSetObserver()
  {
    public void onChanged()
    {
      super.onChanged();
      a.notifyDataSetChanged();
    }
    
    public void onInvalidated()
    {
      super.onInvalidated();
      a.notifyDataSetInvalidated();
    }
  };
  PopupWindow.OnDismissListener f;
  boolean g;
  int h = 4;
  private final b i;
  private final View j;
  private final Drawable k;
  private final ImageView l;
  private final ImageView m;
  private final int n;
  private final ViewTreeObserver.OnGlobalLayoutListener o = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public void onGlobalLayout()
    {
      if (isShowingPopup())
      {
        if (!isShown())
        {
          getListPopupWindow().dismiss();
          return;
        }
        getListPopupWindow().show();
        if (d != null) {
          d.subUiVisibilityChanged(true);
        }
      }
    }
  };
  private ListPopupWindow p;
  private boolean q;
  private int r;
  
  public ActivityChooserView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ActivityChooserView, paramInt, 0);
    h = ((TypedArray)localObject).getInt(R.styleable.ActivityChooserView_initialActivityCount, 4);
    paramAttributeSet = ((TypedArray)localObject).getDrawable(R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
    ((TypedArray)localObject).recycle();
    LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view, this, true);
    i = new b();
    j = findViewById(R.id.activity_chooser_view_content);
    k = j.getBackground();
    c = ((FrameLayout)findViewById(R.id.default_activity_button));
    c.setOnClickListener(i);
    c.setOnLongClickListener(i);
    m = ((ImageView)c.findViewById(R.id.image));
    localObject = (FrameLayout)findViewById(R.id.expand_activities_button);
    ((FrameLayout)localObject).setOnClickListener(i);
    ((FrameLayout)localObject).setAccessibilityDelegate(new View.AccessibilityDelegate()
    {
      public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, AccessibilityNodeInfo paramAnonymousAccessibilityNodeInfo)
      {
        super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousAccessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(paramAnonymousAccessibilityNodeInfo).setCanOpenPopup(true);
      }
    });
    ((FrameLayout)localObject).setOnTouchListener(new ForwardingListener((View)localObject)
    {
      public ShowableListMenu getPopup()
      {
        return getListPopupWindow();
      }
      
      protected boolean onForwardingStarted()
      {
        showPopup();
        return true;
      }
      
      protected boolean onForwardingStopped()
      {
        dismissPopup();
        return true;
      }
    });
    b = ((FrameLayout)localObject);
    l = ((ImageView)((FrameLayout)localObject).findViewById(R.id.image));
    l.setImageDrawable(paramAttributeSet);
    a = new a();
    a.registerDataSetObserver(new DataSetObserver()
    {
      public void onChanged()
      {
        super.onChanged();
        a();
      }
    });
    paramContext = paramContext.getResources();
    n = Math.max(getDisplayMetricswidthPixels / 2, paramContext.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
  }
  
  void a()
  {
    if (a.getCount() > 0) {
      b.setEnabled(true);
    } else {
      b.setEnabled(false);
    }
    int i1 = a.c();
    int i2 = a.d();
    if ((i1 != 1) && ((i1 <= 1) || (i2 <= 0)))
    {
      c.setVisibility(8);
    }
    else
    {
      c.setVisibility(0);
      Object localObject = a.b();
      PackageManager localPackageManager = getContext().getPackageManager();
      m.setImageDrawable(((ResolveInfo)localObject).loadIcon(localPackageManager));
      if (r != 0)
      {
        localObject = ((ResolveInfo)localObject).loadLabel(localPackageManager);
        localObject = getContext().getString(r, new Object[] { localObject });
        c.setContentDescription((CharSequence)localObject);
      }
    }
    if (c.getVisibility() == 0)
    {
      j.setBackgroundDrawable(k);
      return;
    }
    j.setBackgroundDrawable(null);
  }
  
  void a(int paramInt)
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.useAs(TypeTransformer.java:868)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:668)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  public boolean dismissPopup()
  {
    if (isShowingPopup())
    {
      getListPopupWindow().dismiss();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeGlobalOnLayoutListener(o);
      }
    }
    return true;
  }
  
  public ActivityChooserModel getDataModel()
  {
    return a.e();
  }
  
  ListPopupWindow getListPopupWindow()
  {
    if (p == null)
    {
      p = new ListPopupWindow(getContext());
      p.setAdapter(a);
      p.setAnchorView(this);
      p.setModal(true);
      p.setOnItemClickListener(i);
      p.setOnDismissListener(i);
    }
    return p;
  }
  
  public boolean isShowingPopup()
  {
    return getListPopupWindow().isShowing();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ActivityChooserModel localActivityChooserModel = a.e();
    if (localActivityChooserModel != null) {
      localActivityChooserModel.registerObserver(e);
    }
    q = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = a.e();
    if (localObject != null) {
      ((ActivityChooserModel)localObject).unregisterObserver(e);
    }
    localObject = getViewTreeObserver();
    if (((ViewTreeObserver)localObject).isAlive()) {
      ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(o);
    }
    if (isShowingPopup()) {
      dismissPopup();
    }
    q = false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    j.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!isShowingPopup()) {
      dismissPopup();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    View localView = j;
    int i1 = paramInt2;
    if (c.getVisibility() != 0) {
      i1 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    }
    measureChild(localView, paramInt1, i1);
    setMeasuredDimension(localView.getMeasuredWidth(), localView.getMeasuredHeight());
  }
  
  public void setActivityChooserModel(ActivityChooserModel paramActivityChooserModel)
  {
    a.a(paramActivityChooserModel);
    if (isShowingPopup())
    {
      dismissPopup();
      showPopup();
    }
  }
  
  public void setDefaultActionButtonContentDescription(int paramInt)
  {
    r = paramInt;
  }
  
  public void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = getContext().getString(paramInt);
    l.setContentDescription(str);
  }
  
  public void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    l.setImageDrawable(paramDrawable);
  }
  
  public void setInitialActivityCount(int paramInt)
  {
    h = paramInt;
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    f = paramOnDismissListener;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setProvider(ActionProvider paramActionProvider)
  {
    d = paramActionProvider;
  }
  
  public boolean showPopup()
  {
    if (!isShowingPopup())
    {
      if (!q) {
        return false;
      }
      g = false;
      a(h);
      return true;
    }
    return false;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class InnerLayout
    extends LinearLayout
  {
    private static final int[] a = { 16842964 };
    
    public InnerLayout(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, a);
      setBackgroundDrawable(paramContext.getDrawable(0));
      paramContext.recycle();
    }
  }
  
  private class a
    extends BaseAdapter
  {
    private ActivityChooserModel b;
    private int c = 4;
    private boolean d;
    private boolean e;
    private boolean f;
    
    a() {}
    
    public int a()
    {
      int k = c;
      c = Integer.MAX_VALUE;
      int i = 0;
      int m = View.MeasureSpec.makeMeasureSpec(0, 0);
      int n = View.MeasureSpec.makeMeasureSpec(0, 0);
      int i1 = getCount();
      View localView = null;
      int j = 0;
      while (i < i1)
      {
        localView = getView(i, localView, null);
        localView.measure(m, n);
        j = Math.max(j, localView.getMeasuredWidth());
        i += 1;
      }
      c = k;
      return j;
    }
    
    public void a(int paramInt)
    {
      if (c != paramInt)
      {
        c = paramInt;
        notifyDataSetChanged();
      }
    }
    
    public void a(ActivityChooserModel paramActivityChooserModel)
    {
      ActivityChooserModel localActivityChooserModel = a.e();
      if ((localActivityChooserModel != null) && (isShown())) {
        localActivityChooserModel.unregisterObserver(e);
      }
      b = paramActivityChooserModel;
      if ((paramActivityChooserModel != null) && (isShown())) {
        paramActivityChooserModel.registerObserver(e);
      }
      notifyDataSetChanged();
    }
    
    public void a(boolean paramBoolean)
    {
      if (f != paramBoolean)
      {
        f = paramBoolean;
        notifyDataSetChanged();
      }
    }
    
    public void a(boolean paramBoolean1, boolean paramBoolean2)
    {
      if ((d != paramBoolean1) || (e != paramBoolean2))
      {
        d = paramBoolean1;
        e = paramBoolean2;
        notifyDataSetChanged();
      }
    }
    
    public ResolveInfo b()
    {
      return b.b();
    }
    
    public int c()
    {
      return b.a();
    }
    
    public int d()
    {
      return b.c();
    }
    
    public ActivityChooserModel e()
    {
      return b;
    }
    
    public boolean f()
    {
      return d;
    }
    
    public int getCount()
    {
      int j = b.a();
      int i = j;
      if (!d)
      {
        i = j;
        if (b.b() != null) {
          i = j - 1;
        }
      }
      j = Math.min(i, c);
      i = j;
      if (f) {
        i = j + 1;
      }
      return i;
    }
    
    public Object getItem(int paramInt)
    {
      switch (getItemViewType(paramInt))
      {
      default: 
        throw new IllegalArgumentException();
      case 1: 
        return null;
      }
      int i = paramInt;
      if (!d)
      {
        i = paramInt;
        if (b.b() != null) {
          i = paramInt + 1;
        }
      }
      return b.a(i);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public int getItemViewType(int paramInt)
    {
      if ((f) && (paramInt == getCount() - 1)) {
        return 1;
      }
      return 0;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView;
      switch (getItemViewType(paramInt))
      {
      default: 
        throw new IllegalArgumentException();
      case 1: 
        if (paramView != null)
        {
          localView = paramView;
          if (paramView.getId() == 1) {}
        }
        else
        {
          localView = LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, paramViewGroup, false);
          localView.setId(1);
          ((TextView)localView.findViewById(R.id.title)).setText(getContext().getString(R.string.abc_activity_chooser_view_see_all));
        }
        return localView;
      }
      if (paramView != null)
      {
        localView = paramView;
        if (paramView.getId() == R.id.list_item) {}
      }
      else
      {
        localView = LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, paramViewGroup, false);
      }
      paramView = getContext().getPackageManager();
      paramViewGroup = (ImageView)localView.findViewById(R.id.icon);
      ResolveInfo localResolveInfo = (ResolveInfo)getItem(paramInt);
      paramViewGroup.setImageDrawable(localResolveInfo.loadIcon(paramView));
      ((TextView)localView.findViewById(R.id.title)).setText(localResolveInfo.loadLabel(paramView));
      if ((d) && (paramInt == 0) && (e))
      {
        localView.setActivated(true);
        return localView;
      }
      localView.setActivated(false);
      return localView;
    }
    
    public int getViewTypeCount()
    {
      return 3;
    }
  }
  
  private class b
    implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
  {
    b() {}
    
    private void a()
    {
      if (f != null) {
        f.onDismiss();
      }
    }
    
    public void onClick(View paramView)
    {
      if (paramView == c)
      {
        dismissPopup();
        paramView = a.b();
        int i = a.e().a(paramView);
        paramView = a.e().b(i);
        if (paramView != null)
        {
          paramView.addFlags(524288);
          getContext().startActivity(paramView);
        }
      }
      else
      {
        if (paramView != b) {
          break label117;
        }
        g = false;
        a(h);
      }
      return;
      label117:
      throw new IllegalArgumentException();
    }
    
    public void onDismiss()
    {
      a();
      if (d != null) {
        d.subUiVisibilityChanged(false);
      }
    }
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      switch (((ActivityChooserView.a)paramAdapterView.getAdapter()).getItemViewType(paramInt))
      {
      default: 
        throw new IllegalArgumentException();
      case 1: 
        a(Integer.MAX_VALUE);
        return;
      }
      dismissPopup();
      if (g)
      {
        if (paramInt > 0) {
          a.e().c(paramInt);
        }
      }
      else
      {
        if (!a.f()) {
          paramInt += 1;
        }
        paramAdapterView = a.e().b(paramInt);
        if (paramAdapterView != null)
        {
          paramAdapterView.addFlags(524288);
          getContext().startActivity(paramAdapterView);
        }
      }
    }
    
    public boolean onLongClick(View paramView)
    {
      if (paramView == c)
      {
        if (a.getCount() > 0)
        {
          g = true;
          a(h);
        }
        return true;
      }
      throw new IllegalArgumentException();
    }
  }
}
