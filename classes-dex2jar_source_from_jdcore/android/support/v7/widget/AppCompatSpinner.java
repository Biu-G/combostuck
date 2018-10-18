package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.DataSetObserver;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.menu.ShowableListMenu;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

public class AppCompatSpinner
  extends Spinner
  implements TintableBackgroundView
{
  private static final int[] d = { 16843505 };
  b a;
  int b;
  final Rect c;
  private final d e;
  private final Context f;
  private ForwardingListener g;
  private SpinnerAdapter h;
  private final boolean i;
  
  public AppCompatSpinner(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatSpinner(Context paramContext, int paramInt)
  {
    this(paramContext, null, R.attr.spinnerStyle, paramInt);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.spinnerStyle);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this(paramContext, paramAttributeSet, paramInt1, paramInt2, null);
  }
  
  /* Error */
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2, final Resources.Theme paramTheme)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial 65	android/widget/Spinner:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: new 67	android/graphics/Rect
    //   11: dup
    //   12: invokespecial 69	android/graphics/Rect:<init>	()V
    //   15: putfield 71	android/support/v7/widget/AppCompatSpinner:c	Landroid/graphics/Rect;
    //   18: aload_1
    //   19: aload_2
    //   20: getstatic 76	android/support/v7/appcompat/R$styleable:Spinner	[I
    //   23: iload_3
    //   24: iconst_0
    //   25: invokestatic 82	android/support/v7/widget/TintTypedArray:obtainStyledAttributes	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    //   28: astore 10
    //   30: aload_0
    //   31: new 84	android/support/v7/widget/d
    //   34: dup
    //   35: aload_0
    //   36: invokespecial 87	android/support/v7/widget/d:<init>	(Landroid/view/View;)V
    //   39: putfield 89	android/support/v7/widget/AppCompatSpinner:e	Landroid/support/v7/widget/d;
    //   42: aload 5
    //   44: ifnull +20 -> 64
    //   47: aload_0
    //   48: new 91	android/support/v7/view/ContextThemeWrapper
    //   51: dup
    //   52: aload_1
    //   53: aload 5
    //   55: invokespecial 94	android/support/v7/view/ContextThemeWrapper:<init>	(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    //   58: putfield 96	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   61: goto +59 -> 120
    //   64: aload 10
    //   66: getstatic 99	android/support/v7/appcompat/R$styleable:Spinner_popupTheme	I
    //   69: iconst_0
    //   70: invokevirtual 103	android/support/v7/widget/TintTypedArray:getResourceId	(II)I
    //   73: istore 6
    //   75: iload 6
    //   77: ifeq +20 -> 97
    //   80: aload_0
    //   81: new 91	android/support/v7/view/ContextThemeWrapper
    //   84: dup
    //   85: aload_1
    //   86: iload 6
    //   88: invokespecial 105	android/support/v7/view/ContextThemeWrapper:<init>	(Landroid/content/Context;I)V
    //   91: putfield 96	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   94: goto +26 -> 120
    //   97: getstatic 110	android/os/Build$VERSION:SDK_INT	I
    //   100: bipush 23
    //   102: if_icmpge +9 -> 111
    //   105: aload_1
    //   106: astore 5
    //   108: goto +6 -> 114
    //   111: aconst_null
    //   112: astore 5
    //   114: aload_0
    //   115: aload 5
    //   117: putfield 96	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   120: aload_0
    //   121: getfield 96	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   124: ifnull +239 -> 363
    //   127: iload 4
    //   129: istore 7
    //   131: iload 4
    //   133: iconst_m1
    //   134: if_icmpne +126 -> 260
    //   137: aload_1
    //   138: aload_2
    //   139: getstatic 41	android/support/v7/widget/AppCompatSpinner:d	[I
    //   142: iload_3
    //   143: iconst_0
    //   144: invokevirtual 115	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   147: astore 5
    //   149: iload 4
    //   151: istore 6
    //   153: aload 5
    //   155: astore 8
    //   157: aload 5
    //   159: iconst_0
    //   160: invokevirtual 121	android/content/res/TypedArray:hasValue	(I)Z
    //   163: ifeq +16 -> 179
    //   166: aload 5
    //   168: astore 8
    //   170: aload 5
    //   172: iconst_0
    //   173: iconst_0
    //   174: invokevirtual 124	android/content/res/TypedArray:getInt	(II)I
    //   177: istore 6
    //   179: iload 6
    //   181: istore 7
    //   183: aload 5
    //   185: ifnull +75 -> 260
    //   188: iload 6
    //   190: istore 4
    //   192: aload 5
    //   194: invokevirtual 127	android/content/res/TypedArray:recycle	()V
    //   197: iload 4
    //   199: istore 7
    //   201: goto +59 -> 260
    //   204: astore 9
    //   206: goto +15 -> 221
    //   209: astore_1
    //   210: aconst_null
    //   211: astore 8
    //   213: goto +35 -> 248
    //   216: astore 9
    //   218: aconst_null
    //   219: astore 5
    //   221: aload 5
    //   223: astore 8
    //   225: ldc -127
    //   227: ldc -125
    //   229: aload 9
    //   231: invokestatic 136	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   234: pop
    //   235: iload 4
    //   237: istore 7
    //   239: aload 5
    //   241: ifnull +19 -> 260
    //   244: goto -52 -> 192
    //   247: astore_1
    //   248: aload 8
    //   250: ifnull +8 -> 258
    //   253: aload 8
    //   255: invokevirtual 127	android/content/res/TypedArray:recycle	()V
    //   258: aload_1
    //   259: athrow
    //   260: iload 7
    //   262: iconst_1
    //   263: if_icmpne +100 -> 363
    //   266: new 13	android/support/v7/widget/AppCompatSpinner$b
    //   269: dup
    //   270: aload_0
    //   271: aload_0
    //   272: getfield 96	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   275: aload_2
    //   276: iload_3
    //   277: invokespecial 139	android/support/v7/widget/AppCompatSpinner$b:<init>	(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   280: astore 5
    //   282: aload_0
    //   283: getfield 96	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   286: aload_2
    //   287: getstatic 76	android/support/v7/appcompat/R$styleable:Spinner	[I
    //   290: iload_3
    //   291: iconst_0
    //   292: invokestatic 82	android/support/v7/widget/TintTypedArray:obtainStyledAttributes	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    //   295: astore 8
    //   297: aload_0
    //   298: aload 8
    //   300: getstatic 142	android/support/v7/appcompat/R$styleable:Spinner_android_dropDownWidth	I
    //   303: bipush -2
    //   305: invokevirtual 145	android/support/v7/widget/TintTypedArray:getLayoutDimension	(II)I
    //   308: putfield 147	android/support/v7/widget/AppCompatSpinner:b	I
    //   311: aload 5
    //   313: aload 8
    //   315: getstatic 150	android/support/v7/appcompat/R$styleable:Spinner_android_popupBackground	I
    //   318: invokevirtual 154	android/support/v7/widget/TintTypedArray:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   321: invokevirtual 158	android/support/v7/widget/AppCompatSpinner$b:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   324: aload 5
    //   326: aload 10
    //   328: getstatic 161	android/support/v7/appcompat/R$styleable:Spinner_android_prompt	I
    //   331: invokevirtual 165	android/support/v7/widget/TintTypedArray:getString	(I)Ljava/lang/String;
    //   334: invokevirtual 168	android/support/v7/widget/AppCompatSpinner$b:a	(Ljava/lang/CharSequence;)V
    //   337: aload 8
    //   339: invokevirtual 169	android/support/v7/widget/TintTypedArray:recycle	()V
    //   342: aload_0
    //   343: aload 5
    //   345: putfield 171	android/support/v7/widget/AppCompatSpinner:a	Landroid/support/v7/widget/AppCompatSpinner$b;
    //   348: aload_0
    //   349: new 8	android/support/v7/widget/AppCompatSpinner$1
    //   352: dup
    //   353: aload_0
    //   354: aload_0
    //   355: aload 5
    //   357: invokespecial 174	android/support/v7/widget/AppCompatSpinner$1:<init>	(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$b;)V
    //   360: putfield 176	android/support/v7/widget/AppCompatSpinner:g	Landroid/support/v7/widget/ForwardingListener;
    //   363: aload 10
    //   365: getstatic 179	android/support/v7/appcompat/R$styleable:Spinner_android_entries	I
    //   368: invokevirtual 183	android/support/v7/widget/TintTypedArray:getTextArray	(I)[Ljava/lang/CharSequence;
    //   371: astore 5
    //   373: aload 5
    //   375: ifnull +28 -> 403
    //   378: new 185	android/widget/ArrayAdapter
    //   381: dup
    //   382: aload_1
    //   383: ldc -70
    //   385: aload 5
    //   387: invokespecial 189	android/widget/ArrayAdapter:<init>	(Landroid/content/Context;I[Ljava/lang/Object;)V
    //   390: astore_1
    //   391: aload_1
    //   392: getstatic 194	android/support/v7/appcompat/R$layout:support_simple_spinner_dropdown_item	I
    //   395: invokevirtual 198	android/widget/ArrayAdapter:setDropDownViewResource	(I)V
    //   398: aload_0
    //   399: aload_1
    //   400: invokevirtual 202	android/support/v7/widget/AppCompatSpinner:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   403: aload 10
    //   405: invokevirtual 169	android/support/v7/widget/TintTypedArray:recycle	()V
    //   408: aload_0
    //   409: iconst_1
    //   410: putfield 204	android/support/v7/widget/AppCompatSpinner:i	Z
    //   413: aload_0
    //   414: getfield 206	android/support/v7/widget/AppCompatSpinner:h	Landroid/widget/SpinnerAdapter;
    //   417: ifnull +16 -> 433
    //   420: aload_0
    //   421: aload_0
    //   422: getfield 206	android/support/v7/widget/AppCompatSpinner:h	Landroid/widget/SpinnerAdapter;
    //   425: invokevirtual 202	android/support/v7/widget/AppCompatSpinner:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   428: aload_0
    //   429: aconst_null
    //   430: putfield 206	android/support/v7/widget/AppCompatSpinner:h	Landroid/widget/SpinnerAdapter;
    //   433: aload_0
    //   434: getfield 89	android/support/v7/widget/AppCompatSpinner:e	Landroid/support/v7/widget/d;
    //   437: aload_2
    //   438: iload_3
    //   439: invokevirtual 209	android/support/v7/widget/d:a	(Landroid/util/AttributeSet;I)V
    //   442: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	443	0	this	AppCompatSpinner
    //   0	443	1	paramContext	Context
    //   0	443	2	paramAttributeSet	AttributeSet
    //   0	443	3	paramInt1	int
    //   0	443	4	paramInt2	int
    //   0	443	5	paramTheme	Resources.Theme
    //   73	116	6	j	int
    //   129	135	7	k	int
    //   155	183	8	localObject	Object
    //   204	1	9	localException1	Exception
    //   216	14	9	localException2	Exception
    //   28	376	10	localTintTypedArray	TintTypedArray
    // Exception table:
    //   from	to	target	type
    //   157	166	204	java/lang/Exception
    //   170	179	204	java/lang/Exception
    //   137	149	209	finally
    //   137	149	216	java/lang/Exception
    //   157	166	247	finally
    //   170	179	247	finally
    //   225	235	247	finally
  }
  
  int a(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    int m = 0;
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int i2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int i3 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int j = Math.max(0, getSelectedItemPosition());
    int i4 = Math.min(paramSpinnerAdapter.getCount(), j + 15);
    int k = Math.max(0, j - (15 - (i4 - j)));
    View localView = null;
    j = 0;
    while (k < i4)
    {
      int i1 = paramSpinnerAdapter.getItemViewType(k);
      int n = m;
      if (i1 != m)
      {
        localView = null;
        n = i1;
      }
      localView = paramSpinnerAdapter.getView(k, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(i2, i3);
      j = Math.max(j, localView.getMeasuredWidth());
      k += 1;
      m = n;
    }
    k = j;
    if (paramDrawable != null)
    {
      paramDrawable.getPadding(c);
      k = j + (c.left + c.right);
    }
    return k;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (e != null) {
      e.c();
    }
  }
  
  public int getDropDownHorizontalOffset()
  {
    if (a != null) {
      return a.getHorizontalOffset();
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return super.getDropDownHorizontalOffset();
    }
    return 0;
  }
  
  public int getDropDownVerticalOffset()
  {
    if (a != null) {
      return a.getVerticalOffset();
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return super.getDropDownVerticalOffset();
    }
    return 0;
  }
  
  public int getDropDownWidth()
  {
    if (a != null) {
      return b;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return super.getDropDownWidth();
    }
    return 0;
  }
  
  public Drawable getPopupBackground()
  {
    if (a != null) {
      return a.getBackground();
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return super.getPopupBackground();
    }
    return null;
  }
  
  public Context getPopupContext()
  {
    if (a != null) {
      return f;
    }
    if (Build.VERSION.SDK_INT >= 23) {
      return super.getPopupContext();
    }
    return null;
  }
  
  public CharSequence getPrompt()
  {
    if (a != null) {
      return a.a();
    }
    return super.getPrompt();
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public ColorStateList getSupportBackgroundTintList()
  {
    if (e != null) {
      return e.a();
    }
    return null;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (e != null) {
      return e.b();
    }
    return null;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((a != null) && (a.isShowing())) {
      a.dismiss();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((a != null) && (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((g != null) && (g.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    if (a != null)
    {
      if (!a.isShowing()) {
        a.show();
      }
      return true;
    }
    return super.performClick();
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (!i)
    {
      h = paramSpinnerAdapter;
      return;
    }
    super.setAdapter(paramSpinnerAdapter);
    if (a != null)
    {
      Context localContext;
      if (f == null) {
        localContext = getContext();
      } else {
        localContext = f;
      }
      a.setAdapter(new a(paramSpinnerAdapter, localContext.getTheme()));
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (e != null) {
      e.a(paramDrawable);
    }
  }
  
  public void setBackgroundResource(@DrawableRes int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (e != null) {
      e.a(paramInt);
    }
  }
  
  public void setDropDownHorizontalOffset(int paramInt)
  {
    if (a != null)
    {
      a.setHorizontalOffset(paramInt);
      return;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      super.setDropDownHorizontalOffset(paramInt);
    }
  }
  
  public void setDropDownVerticalOffset(int paramInt)
  {
    if (a != null)
    {
      a.setVerticalOffset(paramInt);
      return;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      super.setDropDownVerticalOffset(paramInt);
    }
  }
  
  public void setDropDownWidth(int paramInt)
  {
    if (a != null)
    {
      b = paramInt;
      return;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      super.setDropDownWidth(paramInt);
    }
  }
  
  public void setPopupBackgroundDrawable(Drawable paramDrawable)
  {
    if (a != null)
    {
      a.setBackgroundDrawable(paramDrawable);
      return;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      super.setPopupBackgroundDrawable(paramDrawable);
    }
  }
  
  public void setPopupBackgroundResource(@DrawableRes int paramInt)
  {
    setPopupBackgroundDrawable(AppCompatResources.getDrawable(getPopupContext(), paramInt));
  }
  
  public void setPrompt(CharSequence paramCharSequence)
  {
    if (a != null)
    {
      a.a(paramCharSequence);
      return;
    }
    super.setPrompt(paramCharSequence);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintList(@Nullable ColorStateList paramColorStateList)
  {
    if (e != null) {
      e.a(paramColorStateList);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    if (e != null) {
      e.a(paramMode);
    }
  }
  
  private static class a
    implements ListAdapter, SpinnerAdapter
  {
    private SpinnerAdapter a;
    private ListAdapter b;
    
    public a(@Nullable SpinnerAdapter paramSpinnerAdapter, @Nullable Resources.Theme paramTheme)
    {
      a = paramSpinnerAdapter;
      if ((paramSpinnerAdapter instanceof ListAdapter)) {
        b = ((ListAdapter)paramSpinnerAdapter);
      }
      if (paramTheme != null) {
        if ((Build.VERSION.SDK_INT >= 23) && ((paramSpinnerAdapter instanceof android.widget.ThemedSpinnerAdapter)))
        {
          paramSpinnerAdapter = (android.widget.ThemedSpinnerAdapter)paramSpinnerAdapter;
          if (paramSpinnerAdapter.getDropDownViewTheme() != paramTheme) {
            paramSpinnerAdapter.setDropDownViewTheme(paramTheme);
          }
        }
        else if ((paramSpinnerAdapter instanceof ThemedSpinnerAdapter))
        {
          paramSpinnerAdapter = (ThemedSpinnerAdapter)paramSpinnerAdapter;
          if (paramSpinnerAdapter.getDropDownViewTheme() == null) {
            paramSpinnerAdapter.setDropDownViewTheme(paramTheme);
          }
        }
      }
    }
    
    public boolean areAllItemsEnabled()
    {
      ListAdapter localListAdapter = b;
      if (localListAdapter != null) {
        return localListAdapter.areAllItemsEnabled();
      }
      return true;
    }
    
    public int getCount()
    {
      if (a == null) {
        return 0;
      }
      return a.getCount();
    }
    
    public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (a == null) {
        return null;
      }
      return a.getDropDownView(paramInt, paramView, paramViewGroup);
    }
    
    public Object getItem(int paramInt)
    {
      if (a == null) {
        return null;
      }
      return a.getItem(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      if (a == null) {
        return -1L;
      }
      return a.getItemId(paramInt);
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      return getDropDownView(paramInt, paramView, paramViewGroup);
    }
    
    public int getViewTypeCount()
    {
      return 1;
    }
    
    public boolean hasStableIds()
    {
      return (a != null) && (a.hasStableIds());
    }
    
    public boolean isEmpty()
    {
      return getCount() == 0;
    }
    
    public boolean isEnabled(int paramInt)
    {
      ListAdapter localListAdapter = b;
      if (localListAdapter != null) {
        return localListAdapter.isEnabled(paramInt);
      }
      return true;
    }
    
    public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      if (a != null) {
        a.registerDataSetObserver(paramDataSetObserver);
      }
    }
    
    public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      if (a != null) {
        a.unregisterDataSetObserver(paramDataSetObserver);
      }
    }
  }
  
  private class b
    extends ListPopupWindow
  {
    ListAdapter a;
    private CharSequence h;
    private final Rect i = new Rect();
    
    public b(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
      setAnchorView(AppCompatSpinner.this);
      setModal(true);
      setPromptPosition(0);
      setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          setSelection(paramAnonymousInt);
          if (getOnItemClickListener() != null) {
            performItemClick(paramAnonymousView, paramAnonymousInt, a.getItemId(paramAnonymousInt));
          }
          dismiss();
        }
      });
    }
    
    public CharSequence a()
    {
      return h;
    }
    
    public void a(CharSequence paramCharSequence)
    {
      h = paramCharSequence;
    }
    
    boolean a(View paramView)
    {
      return (ViewCompat.isAttachedToWindow(paramView)) && (paramView.getGlobalVisibleRect(i));
    }
    
    void b()
    {
      Object localObject = getBackground();
      int j = 0;
      if (localObject != null)
      {
        ((Drawable)localObject).getPadding(c);
        if (ViewUtils.isLayoutRtl(AppCompatSpinner.this)) {}
        for (j = c.right;; j = -c.left) {
          break;
        }
      }
      localObject = c;
      c.right = 0;
      left = 0;
      int i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i3 = getWidth();
      if (b == -2)
      {
        int m = a((SpinnerAdapter)a, getBackground());
        int n = getContext().getResources().getDisplayMetrics().widthPixels - c.left - c.right;
        int k = m;
        if (m > n) {
          k = n;
        }
        setContentWidth(Math.max(k, i3 - i1 - i2));
      }
      else if (b == -1)
      {
        setContentWidth(i3 - i1 - i2);
      }
      else
      {
        setContentWidth(b);
      }
      if (ViewUtils.isLayoutRtl(AppCompatSpinner.this)) {
        j += i3 - i2 - getWidth();
      } else {
        j += i1;
      }
      setHorizontalOffset(j);
    }
    
    public void setAdapter(ListAdapter paramListAdapter)
    {
      super.setAdapter(paramListAdapter);
      a = paramListAdapter;
    }
    
    public void show()
    {
      boolean bool = isShowing();
      b();
      setInputMethodMode(2);
      super.show();
      getListView().setChoiceMode(1);
      setSelection(getSelectedItemPosition());
      if (bool) {
        return;
      }
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver != null)
      {
        final ViewTreeObserver.OnGlobalLayoutListener local2 = new ViewTreeObserver.OnGlobalLayoutListener()
        {
          public void onGlobalLayout()
          {
            if (!a(AppCompatSpinner.this))
            {
              dismiss();
              return;
            }
            b();
            AppCompatSpinner.b.a(AppCompatSpinner.b.this);
          }
        };
        localViewTreeObserver.addOnGlobalLayoutListener(local2);
        setOnDismissListener(new PopupWindow.OnDismissListener()
        {
          public void onDismiss()
          {
            ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
            if (localViewTreeObserver != null) {
              localViewTreeObserver.removeGlobalOnLayoutListener(local2);
            }
          }
        });
      }
    }
  }
}
