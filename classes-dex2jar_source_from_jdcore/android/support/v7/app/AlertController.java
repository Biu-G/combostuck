package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.NestedScrollView;
import android.support.v4.widget.NestedScrollView.OnScrollChangeListener;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.widget.LinearLayoutCompat.LayoutParams;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import java.lang.ref.WeakReference;

class AlertController
{
  private int A;
  private boolean B = false;
  private CharSequence C;
  private Drawable D;
  private CharSequence E;
  private Drawable F;
  private CharSequence G;
  private Drawable H;
  private int I = 0;
  private Drawable J;
  private ImageView K;
  private TextView L;
  private TextView M;
  private View N;
  private int O;
  private int P;
  private boolean Q;
  private int R = 0;
  private final View.OnClickListener S = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if ((paramAnonymousView == c) && (d != null)) {
        paramAnonymousView = Message.obtain(d);
      } else if ((paramAnonymousView == e) && (f != null)) {
        paramAnonymousView = Message.obtain(f);
      } else if ((paramAnonymousView == g) && (h != null)) {
        paramAnonymousView = Message.obtain(h);
      } else {
        paramAnonymousView = null;
      }
      if (paramAnonymousView != null) {
        paramAnonymousView.sendToTarget();
      }
      p.obtainMessage(1, a).sendToTarget();
    }
  };
  final AppCompatDialog a;
  ListView b;
  Button c;
  Message d;
  Button e;
  Message f;
  Button g;
  Message h;
  NestedScrollView i;
  ListAdapter j;
  int k = -1;
  int l;
  int m;
  int n;
  int o;
  Handler p;
  private final Context q;
  private final Window r;
  private final int s;
  private CharSequence t;
  private CharSequence u;
  private View v;
  private int w;
  private int x;
  private int y;
  private int z;
  
  public AlertController(Context paramContext, AppCompatDialog paramAppCompatDialog, Window paramWindow)
  {
    q = paramContext;
    a = paramAppCompatDialog;
    r = paramWindow;
    p = new a(paramAppCompatDialog);
    paramContext = paramContext.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
    O = paramContext.getResourceId(R.styleable.AlertDialog_android_layout, 0);
    P = paramContext.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
    l = paramContext.getResourceId(R.styleable.AlertDialog_listLayout, 0);
    m = paramContext.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
    n = paramContext.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
    o = paramContext.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
    Q = paramContext.getBoolean(R.styleable.AlertDialog_showTitle, true);
    s = paramContext.getDimensionPixelSize(R.styleable.AlertDialog_buttonIconDimen, 0);
    paramContext.recycle();
    paramAppCompatDialog.supportRequestWindowFeature(1);
  }
  
  @Nullable
  private ViewGroup a(@Nullable View paramView1, @Nullable View paramView2)
  {
    if (paramView1 == null)
    {
      paramView1 = paramView2;
      if ((paramView2 instanceof ViewStub)) {
        paramView1 = ((ViewStub)paramView2).inflate();
      }
      return (ViewGroup)paramView1;
    }
    if (paramView2 != null)
    {
      ViewParent localViewParent = paramView2.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(paramView2);
      }
    }
    paramView2 = paramView1;
    if ((paramView1 instanceof ViewStub)) {
      paramView2 = ((ViewStub)paramView1).inflate();
    }
    return (ViewGroup)paramView2;
  }
  
  static void a(View paramView1, View paramView2, View paramView3)
  {
    int i2 = 4;
    int i1;
    if (paramView2 != null)
    {
      if (paramView1.canScrollVertically(-1)) {
        i1 = 0;
      } else {
        i1 = 4;
      }
      paramView2.setVisibility(i1);
    }
    if (paramView3 != null)
    {
      i1 = i2;
      if (paramView1.canScrollVertically(1)) {
        i1 = 0;
      }
      paramView3.setVisibility(i1);
    }
  }
  
  private void a(ViewGroup paramViewGroup)
  {
    View localView = v;
    int i1 = 0;
    if (localView != null) {
      localView = v;
    } else if (w != 0) {
      localView = LayoutInflater.from(q).inflate(w, paramViewGroup, false);
    } else {
      localView = null;
    }
    if (localView != null) {
      i1 = 1;
    }
    if ((i1 == 0) || (!a(localView))) {
      r.setFlags(131072, 131072);
    }
    if (i1 != 0)
    {
      FrameLayout localFrameLayout = (FrameLayout)r.findViewById(R.id.custom);
      localFrameLayout.addView(localView, new ViewGroup.LayoutParams(-1, -1));
      if (B) {
        localFrameLayout.setPadding(x, y, z, A);
      }
      if (b != null) {
        getLayoutParamsweight = 0.0F;
      }
    }
    else
    {
      paramViewGroup.setVisibility(8);
    }
  }
  
  private void a(ViewGroup paramViewGroup, final View paramView, int paramInt1, int paramInt2)
  {
    View localView = r.findViewById(R.id.scrollIndicatorUp);
    Object localObject1 = r.findViewById(R.id.scrollIndicatorDown);
    if (Build.VERSION.SDK_INT >= 23)
    {
      ViewCompat.setScrollIndicators(paramView, paramInt1, paramInt2);
      if (localView != null) {
        paramViewGroup.removeView(localView);
      }
      if (localObject1 != null) {
        paramViewGroup.removeView((View)localObject1);
      }
    }
    else
    {
      Object localObject2 = null;
      paramView = localView;
      if (localView != null)
      {
        paramView = localView;
        if ((paramInt1 & 0x1) == 0)
        {
          paramViewGroup.removeView(localView);
          paramView = null;
        }
      }
      if ((localObject1 != null) && ((paramInt1 & 0x2) == 0))
      {
        paramViewGroup.removeView((View)localObject1);
        localObject1 = localObject2;
      }
      if ((paramView != null) || (localObject1 != null))
      {
        if (u != null)
        {
          i.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener()
          {
            public void onScrollChange(NestedScrollView paramAnonymousNestedScrollView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
            {
              AlertController.a(paramAnonymousNestedScrollView, paramView, b);
            }
          });
          i.post(new Runnable()
          {
            public void run()
            {
              AlertController.a(i, paramView, b);
            }
          });
          return;
        }
        if (b != null)
        {
          b.setOnScrollListener(new AbsListView.OnScrollListener()
          {
            public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
            {
              AlertController.a(paramAnonymousAbsListView, paramView, b);
            }
            
            public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
          });
          b.post(new Runnable()
          {
            public void run()
            {
              AlertController.a(b, paramView, b);
            }
          });
          return;
        }
        if (paramView != null) {
          paramViewGroup.removeView(paramView);
        }
        if (localObject1 != null) {
          paramViewGroup.removeView((View)localObject1);
        }
      }
    }
  }
  
  private void a(Button paramButton)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramButton.getLayoutParams();
    gravity = 1;
    weight = 0.5F;
    paramButton.setLayoutParams(localLayoutParams);
  }
  
  private static boolean a(Context paramContext)
  {
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, localTypedValue, true);
    return data != 0;
  }
  
  static boolean a(View paramView)
  {
    if (paramView.onCheckIsTextEditor()) {
      return true;
    }
    if (!(paramView instanceof ViewGroup)) {
      return false;
    }
    paramView = (ViewGroup)paramView;
    int i1 = paramView.getChildCount();
    while (i1 > 0)
    {
      int i2 = i1 - 1;
      i1 = i2;
      if (a(paramView.getChildAt(i2))) {
        return true;
      }
    }
    return false;
  }
  
  private void b(ViewGroup paramViewGroup)
  {
    if (N != null)
    {
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
      paramViewGroup.addView(N, 0, localLayoutParams);
      r.findViewById(R.id.title_template).setVisibility(8);
      return;
    }
    K = ((ImageView)r.findViewById(16908294));
    if (((TextUtils.isEmpty(t) ^ true)) && (Q))
    {
      L = ((TextView)r.findViewById(R.id.alertTitle));
      L.setText(t);
      if (I != 0)
      {
        K.setImageResource(I);
        return;
      }
      if (J != null)
      {
        K.setImageDrawable(J);
        return;
      }
      L.setPadding(K.getPaddingLeft(), K.getPaddingTop(), K.getPaddingRight(), K.getPaddingBottom());
      K.setVisibility(8);
      return;
    }
    r.findViewById(R.id.title_template).setVisibility(8);
    K.setVisibility(8);
    paramViewGroup.setVisibility(8);
  }
  
  private int c()
  {
    if (P == 0) {
      return O;
    }
    if (R == 1) {
      return P;
    }
    return O;
  }
  
  private void c(ViewGroup paramViewGroup)
  {
    i = ((NestedScrollView)r.findViewById(R.id.scrollView));
    i.setFocusable(false);
    i.setNestedScrollingEnabled(false);
    M = ((TextView)paramViewGroup.findViewById(16908299));
    if (M == null) {
      return;
    }
    if (u != null)
    {
      M.setText(u);
      return;
    }
    M.setVisibility(8);
    i.removeView(M);
    if (b != null)
    {
      paramViewGroup = (ViewGroup)i.getParent();
      int i1 = paramViewGroup.indexOfChild(i);
      paramViewGroup.removeViewAt(i1);
      paramViewGroup.addView(b, i1, new ViewGroup.LayoutParams(-1, -1));
      return;
    }
    paramViewGroup.setVisibility(8);
  }
  
  private void d()
  {
    Object localObject4 = r.findViewById(R.id.parentPanel);
    Object localObject3 = ((View)localObject4).findViewById(R.id.topPanel);
    Object localObject2 = ((View)localObject4).findViewById(R.id.contentPanel);
    Object localObject1 = ((View)localObject4).findViewById(R.id.buttonPanel);
    localObject4 = (ViewGroup)((View)localObject4).findViewById(R.id.customPanel);
    a((ViewGroup)localObject4);
    View localView3 = ((ViewGroup)localObject4).findViewById(R.id.topPanel);
    View localView2 = ((ViewGroup)localObject4).findViewById(R.id.contentPanel);
    View localView1 = ((ViewGroup)localObject4).findViewById(R.id.buttonPanel);
    localObject3 = a(localView3, (View)localObject3);
    localObject2 = a(localView2, (View)localObject2);
    localObject1 = a(localView1, (View)localObject1);
    c((ViewGroup)localObject2);
    d((ViewGroup)localObject1);
    b((ViewGroup)localObject3);
    int i2 = 0;
    int i1;
    if ((localObject4 != null) && (((ViewGroup)localObject4).getVisibility() != 8)) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i3;
    if ((localObject3 != null) && (((ViewGroup)localObject3).getVisibility() != 8)) {
      i3 = 1;
    } else {
      i3 = 0;
    }
    boolean bool;
    if ((localObject1 != null) && (((ViewGroup)localObject1).getVisibility() != 8)) {
      bool = true;
    } else {
      bool = false;
    }
    if ((!bool) && (localObject2 != null))
    {
      localObject1 = ((ViewGroup)localObject2).findViewById(R.id.textSpacerNoButtons);
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(0);
      }
    }
    if (i3 != 0)
    {
      if (i != null) {
        i.setClipToPadding(true);
      }
      localObject1 = null;
      if ((u != null) || (b != null)) {
        localObject1 = ((ViewGroup)localObject3).findViewById(R.id.titleDividerNoCustom);
      }
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(0);
      }
    }
    else if (localObject2 != null)
    {
      localObject1 = ((ViewGroup)localObject2).findViewById(R.id.textSpacerNoTitle);
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(0);
      }
    }
    if ((b instanceof RecycleListView)) {
      ((RecycleListView)b).setHasDecor(i3, bool);
    }
    if (i1 == 0)
    {
      if (b != null) {
        localObject1 = b;
      } else {
        localObject1 = i;
      }
      if (localObject1 != null)
      {
        i1 = i2;
        if (bool) {
          i1 = 2;
        }
        a((ViewGroup)localObject2, (View)localObject1, i3 | i1, 3);
      }
    }
    localObject1 = b;
    if ((localObject1 != null) && (j != null))
    {
      ((ListView)localObject1).setAdapter(j);
      i1 = k;
      if (i1 > -1)
      {
        ((ListView)localObject1).setItemChecked(i1, true);
        ((ListView)localObject1).setSelection(i1);
      }
    }
  }
  
  private void d(ViewGroup paramViewGroup)
  {
    c = ((Button)paramViewGroup.findViewById(16908313));
    c.setOnClickListener(S);
    boolean bool = TextUtils.isEmpty(C);
    int i2 = 1;
    int i1;
    if ((bool) && (D == null))
    {
      c.setVisibility(8);
      i1 = 0;
    }
    else
    {
      c.setText(C);
      if (D != null)
      {
        D.setBounds(0, 0, s, s);
        c.setCompoundDrawables(D, null, null, null);
      }
      c.setVisibility(0);
      i1 = 1;
    }
    e = ((Button)paramViewGroup.findViewById(16908314));
    e.setOnClickListener(S);
    if ((TextUtils.isEmpty(E)) && (F == null))
    {
      e.setVisibility(8);
    }
    else
    {
      e.setText(E);
      if (F != null)
      {
        F.setBounds(0, 0, s, s);
        e.setCompoundDrawables(F, null, null, null);
      }
      e.setVisibility(0);
      i1 |= 0x2;
    }
    g = ((Button)paramViewGroup.findViewById(16908315));
    g.setOnClickListener(S);
    if ((TextUtils.isEmpty(G)) && (H == null))
    {
      g.setVisibility(8);
    }
    else
    {
      g.setText(G);
      if (D != null)
      {
        D.setBounds(0, 0, s, s);
        c.setCompoundDrawables(D, null, null, null);
      }
      g.setVisibility(0);
      i1 |= 0x4;
    }
    if (a(q)) {
      if (i1 == 1) {
        a(c);
      } else if (i1 == 2) {
        a(e);
      } else if (i1 == 4) {
        a(g);
      }
    }
    if (i1 != 0) {
      i1 = i2;
    } else {
      i1 = 0;
    }
    if (i1 == 0) {
      paramViewGroup.setVisibility(8);
    }
  }
  
  public void a()
  {
    int i1 = c();
    a.setContentView(i1);
    d();
  }
  
  public void a(int paramInt)
  {
    v = null;
    w = paramInt;
    B = false;
  }
  
  public void a(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener, Message paramMessage, Drawable paramDrawable)
  {
    Message localMessage = paramMessage;
    if (paramMessage == null)
    {
      localMessage = paramMessage;
      if (paramOnClickListener != null) {
        localMessage = p.obtainMessage(paramInt, paramOnClickListener);
      }
    }
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Button does not exist");
    case -1: 
      C = paramCharSequence;
      d = localMessage;
      D = paramDrawable;
      return;
    case -2: 
      E = paramCharSequence;
      f = localMessage;
      F = paramDrawable;
      return;
    }
    G = paramCharSequence;
    h = localMessage;
    H = paramDrawable;
  }
  
  public void a(Drawable paramDrawable)
  {
    J = paramDrawable;
    I = 0;
    if (K != null)
    {
      if (paramDrawable != null)
      {
        K.setVisibility(0);
        K.setImageDrawable(paramDrawable);
        return;
      }
      K.setVisibility(8);
    }
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    v = paramView;
    w = 0;
    B = true;
    x = paramInt1;
    y = paramInt2;
    z = paramInt3;
    A = paramInt4;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    t = paramCharSequence;
    if (L != null) {
      L.setText(paramCharSequence);
    }
  }
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    return (i != null) && (i.executeKeyEvent(paramKeyEvent));
  }
  
  public ListView b()
  {
    return b;
  }
  
  public void b(int paramInt)
  {
    J = null;
    I = paramInt;
    if (K != null)
    {
      if (paramInt != 0)
      {
        K.setVisibility(0);
        K.setImageResource(I);
        return;
      }
      K.setVisibility(8);
    }
  }
  
  public void b(View paramView)
  {
    N = paramView;
  }
  
  public void b(CharSequence paramCharSequence)
  {
    u = paramCharSequence;
    if (M != null) {
      M.setText(paramCharSequence);
    }
  }
  
  public boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    return (i != null) && (i.executeKeyEvent(paramKeyEvent));
  }
  
  public int c(int paramInt)
  {
    TypedValue localTypedValue = new TypedValue();
    q.getTheme().resolveAttribute(paramInt, localTypedValue, true);
    return resourceId;
  }
  
  public void c(View paramView)
  {
    v = paramView;
    w = 0;
    B = false;
  }
  
  public Button d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case -1: 
      return c;
    case -2: 
      return e;
    }
    return g;
  }
  
  public static class AlertParams
  {
    public ListAdapter mAdapter;
    public boolean mCancelable;
    public int mCheckedItem = -1;
    public boolean[] mCheckedItems;
    public final Context mContext;
    public Cursor mCursor;
    public View mCustomTitleView;
    public boolean mForceInverseBackground;
    public Drawable mIcon;
    public int mIconAttrId = 0;
    public int mIconId = 0;
    public final LayoutInflater mInflater;
    public String mIsCheckedColumn;
    public boolean mIsMultiChoice;
    public boolean mIsSingleChoice;
    public CharSequence[] mItems;
    public String mLabelColumn;
    public CharSequence mMessage;
    public Drawable mNegativeButtonIcon;
    public DialogInterface.OnClickListener mNegativeButtonListener;
    public CharSequence mNegativeButtonText;
    public Drawable mNeutralButtonIcon;
    public DialogInterface.OnClickListener mNeutralButtonListener;
    public CharSequence mNeutralButtonText;
    public DialogInterface.OnCancelListener mOnCancelListener;
    public DialogInterface.OnMultiChoiceClickListener mOnCheckboxClickListener;
    public DialogInterface.OnClickListener mOnClickListener;
    public DialogInterface.OnDismissListener mOnDismissListener;
    public AdapterView.OnItemSelectedListener mOnItemSelectedListener;
    public DialogInterface.OnKeyListener mOnKeyListener;
    public OnPrepareListViewListener mOnPrepareListViewListener;
    public Drawable mPositiveButtonIcon;
    public DialogInterface.OnClickListener mPositiveButtonListener;
    public CharSequence mPositiveButtonText;
    public boolean mRecycleOnMeasure = true;
    public CharSequence mTitle;
    public View mView;
    public int mViewLayoutResId;
    public int mViewSpacingBottom;
    public int mViewSpacingLeft;
    public int mViewSpacingRight;
    public boolean mViewSpacingSpecified = false;
    public int mViewSpacingTop;
    
    public AlertParams(Context paramContext)
    {
      mContext = paramContext;
      mCancelable = true;
      mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    }
    
    private void a(final AlertController paramAlertController)
    {
      final AlertController.RecycleListView localRecycleListView = (AlertController.RecycleListView)mInflater.inflate(l, null);
      Object localObject;
      if (mIsMultiChoice)
      {
        if (mCursor == null) {
          localObject = new ArrayAdapter(mContext, m, 16908308, mItems)
          {
            public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
            {
              paramAnonymousView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
              if ((mCheckedItems != null) && (mCheckedItems[paramAnonymousInt] != 0)) {
                localRecycleListView.setItemChecked(paramAnonymousInt, true);
              }
              return paramAnonymousView;
            }
          };
        } else {
          localObject = new CursorAdapter(mContext, mCursor, false)
          {
            private final int d;
            private final int e;
            
            public void bindView(View paramAnonymousView, Context paramAnonymousContext, Cursor paramAnonymousCursor)
            {
              ((CheckedTextView)paramAnonymousView.findViewById(16908308)).setText(paramAnonymousCursor.getString(d));
              paramAnonymousView = localRecycleListView;
              int i = paramAnonymousCursor.getPosition();
              int j = paramAnonymousCursor.getInt(e);
              boolean bool = true;
              if (j != 1) {
                bool = false;
              }
              paramAnonymousView.setItemChecked(i, bool);
            }
            
            public View newView(Context paramAnonymousContext, Cursor paramAnonymousCursor, ViewGroup paramAnonymousViewGroup)
            {
              return mInflater.inflate(paramAlertControllerm, paramAnonymousViewGroup, false);
            }
          };
        }
      }
      else
      {
        if (mIsSingleChoice) {}
        for (int i = n;; i = o) {
          break;
        }
        if (mCursor != null) {
          localObject = new SimpleCursorAdapter(mContext, i, mCursor, new String[] { mLabelColumn }, new int[] { 16908308 });
        } else if (mAdapter != null) {
          localObject = mAdapter;
        } else {
          localObject = new AlertController.b(mContext, i, 16908308, mItems);
        }
      }
      if (mOnPrepareListViewListener != null) {
        mOnPrepareListViewListener.onPrepareListView(localRecycleListView);
      }
      j = ((ListAdapter)localObject);
      k = mCheckedItem;
      if (mOnClickListener != null) {
        localRecycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
          public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            mOnClickListener.onClick(paramAlertControllera, paramAnonymousInt);
            if (!mIsSingleChoice) {
              paramAlertControllera.dismiss();
            }
          }
        });
      } else if (mOnCheckboxClickListener != null) {
        localRecycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
          public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            if (mCheckedItems != null) {
              mCheckedItems[paramAnonymousInt] = localRecycleListView.isItemChecked(paramAnonymousInt);
            }
            mOnCheckboxClickListener.onClick(paramAlertControllera, paramAnonymousInt, localRecycleListView.isItemChecked(paramAnonymousInt));
          }
        });
      }
      if (mOnItemSelectedListener != null) {
        localRecycleListView.setOnItemSelectedListener(mOnItemSelectedListener);
      }
      if (mIsSingleChoice) {
        localRecycleListView.setChoiceMode(1);
      } else if (mIsMultiChoice) {
        localRecycleListView.setChoiceMode(2);
      }
      b = localRecycleListView;
    }
    
    public void apply(AlertController paramAlertController)
    {
      if (mCustomTitleView != null)
      {
        paramAlertController.b(mCustomTitleView);
      }
      else
      {
        if (mTitle != null) {
          paramAlertController.a(mTitle);
        }
        if (mIcon != null) {
          paramAlertController.a(mIcon);
        }
        if (mIconId != 0) {
          paramAlertController.b(mIconId);
        }
        if (mIconAttrId != 0) {
          paramAlertController.b(paramAlertController.c(mIconAttrId));
        }
      }
      if (mMessage != null) {
        paramAlertController.b(mMessage);
      }
      if ((mPositiveButtonText != null) || (mPositiveButtonIcon != null)) {
        paramAlertController.a(-1, mPositiveButtonText, mPositiveButtonListener, null, mPositiveButtonIcon);
      }
      if ((mNegativeButtonText != null) || (mNegativeButtonIcon != null)) {
        paramAlertController.a(-2, mNegativeButtonText, mNegativeButtonListener, null, mNegativeButtonIcon);
      }
      if ((mNeutralButtonText != null) || (mNeutralButtonIcon != null)) {
        paramAlertController.a(-3, mNeutralButtonText, mNeutralButtonListener, null, mNeutralButtonIcon);
      }
      if ((mItems != null) || (mCursor != null) || (mAdapter != null)) {
        a(paramAlertController);
      }
      if (mView != null)
      {
        if (mViewSpacingSpecified)
        {
          paramAlertController.a(mView, mViewSpacingLeft, mViewSpacingTop, mViewSpacingRight, mViewSpacingBottom);
          return;
        }
        paramAlertController.c(mView);
        return;
      }
      if (mViewLayoutResId != 0) {
        paramAlertController.a(mViewLayoutResId);
      }
    }
    
    public static abstract interface OnPrepareListViewListener
    {
      public abstract void onPrepareListView(ListView paramListView);
    }
  }
  
  public static class RecycleListView
    extends ListView
  {
    private final int a;
    private final int b;
    
    public RecycleListView(Context paramContext)
    {
      this(paramContext, null);
    }
    
    public RecycleListView(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecycleListView);
      b = paramContext.getDimensionPixelOffset(R.styleable.RecycleListView_paddingBottomNoButtons, -1);
      a = paramContext.getDimensionPixelOffset(R.styleable.RecycleListView_paddingTopNoTitle, -1);
    }
    
    public void setHasDecor(boolean paramBoolean1, boolean paramBoolean2)
    {
      if ((!paramBoolean2) || (!paramBoolean1))
      {
        int k = getPaddingLeft();
        int i;
        if (paramBoolean1) {
          i = getPaddingTop();
        } else {
          i = a;
        }
        int m = getPaddingRight();
        int j;
        if (paramBoolean2) {
          j = getPaddingBottom();
        } else {
          j = b;
        }
        setPadding(k, i, m, j);
      }
    }
  }
  
  private static final class a
    extends Handler
  {
    private WeakReference<DialogInterface> a;
    
    public a(DialogInterface paramDialogInterface)
    {
      a = new WeakReference(paramDialogInterface);
    }
    
    public void handleMessage(Message paramMessage)
    {
      int i = what;
      if (i != 1)
      {
        switch (i)
        {
        default: 
          return;
        }
        ((DialogInterface.OnClickListener)obj).onClick((DialogInterface)a.get(), what);
        return;
      }
      ((DialogInterface)obj).dismiss();
    }
  }
  
  private static class b
    extends ArrayAdapter<CharSequence>
  {
    public b(Context paramContext, int paramInt1, int paramInt2, CharSequence[] paramArrayOfCharSequence)
    {
      super(paramInt1, paramInt2, paramArrayOfCharSequence);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public boolean hasStableIds()
    {
      return true;
    }
  }
}
