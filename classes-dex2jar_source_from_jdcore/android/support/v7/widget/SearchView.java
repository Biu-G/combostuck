package android.support.v7.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.CursorAdapter;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.dimen;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.string;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.view.CollapsibleActionView;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewConfiguration;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView
  extends LinearLayoutCompat
  implements CollapsibleActionView
{
  static final a i = new a();
  private OnQueryTextListener A;
  private OnCloseListener B;
  private OnSuggestionListener C;
  private View.OnClickListener D;
  private boolean E;
  private boolean F;
  private boolean G;
  private CharSequence H;
  private boolean I;
  private boolean J;
  private int K;
  private boolean L;
  private CharSequence M;
  private CharSequence N;
  private boolean O;
  private int P;
  private Bundle Q;
  private final Runnable R = new Runnable()
  {
    public void run()
    {
      a();
    }
  };
  private Runnable S = new Runnable()
  {
    public void run()
    {
      if ((g != null) && ((g instanceof ab))) {
        g.changeCursor(null);
      }
    }
  };
  private final WeakHashMap<String, Drawable.ConstantState> T = new WeakHashMap();
  private final View.OnClickListener U = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (paramAnonymousView == b)
      {
        d();
        return;
      }
      if (paramAnonymousView == d)
      {
        c();
        return;
      }
      if (paramAnonymousView == c)
      {
        b();
        return;
      }
      if (paramAnonymousView == e)
      {
        e();
        return;
      }
      if (paramAnonymousView == a) {
        h();
      }
    }
  };
  private final TextView.OnEditorActionListener V = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      b();
      return true;
    }
  };
  private final AdapterView.OnItemClickListener W = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      a(paramAnonymousInt, 0, null);
    }
  };
  final SearchAutoComplete a;
  private final AdapterView.OnItemSelectedListener aa = new AdapterView.OnItemSelectedListener()
  {
    public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      c(paramAnonymousInt);
    }
    
    public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
  };
  private TextWatcher ab = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable) {}
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      b(paramAnonymousCharSequence);
    }
  };
  final ImageView b;
  final ImageView c;
  final ImageView d;
  final ImageView e;
  View.OnFocusChangeListener f;
  CursorAdapter g;
  SearchableInfo h;
  View.OnKeyListener j = new View.OnKeyListener()
  {
    public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if (h == null) {
        return false;
      }
      if ((a.isPopupShowing()) && (a.getListSelection() != -1)) {
        return a(paramAnonymousView, paramAnonymousInt, paramAnonymousKeyEvent);
      }
      if ((!a.a()) && (paramAnonymousKeyEvent.hasNoModifiers()) && (paramAnonymousKeyEvent.getAction() == 1) && (paramAnonymousInt == 66))
      {
        paramAnonymousView.cancelLongPress();
        a(0, null, a.getText().toString());
        return true;
      }
      return false;
    }
  };
  private final View k;
  private final View l;
  private final View m;
  private final View n;
  private c o;
  private Rect p = new Rect();
  private Rect q = new Rect();
  private int[] r = new int[2];
  private int[] s = new int[2];
  private final ImageView t;
  private final Drawable u;
  private final int v;
  private final int w;
  private final Intent x;
  private final Intent y;
  private final CharSequence z;
  
  public SearchView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.searchViewStyle);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.SearchView, paramInt, 0);
    LayoutInflater.from(paramContext).inflate(paramAttributeSet.getResourceId(R.styleable.SearchView_layout, R.layout.abc_search_view), this, true);
    a = ((SearchAutoComplete)findViewById(R.id.search_src_text));
    a.setSearchView(this);
    k = findViewById(R.id.search_edit_frame);
    l = findViewById(R.id.search_plate);
    m = findViewById(R.id.submit_area);
    b = ((ImageView)findViewById(R.id.search_button));
    c = ((ImageView)findViewById(R.id.search_go_btn));
    d = ((ImageView)findViewById(R.id.search_close_btn));
    e = ((ImageView)findViewById(R.id.search_voice_btn));
    t = ((ImageView)findViewById(R.id.search_mag_icon));
    ViewCompat.setBackground(l, paramAttributeSet.getDrawable(R.styleable.SearchView_queryBackground));
    ViewCompat.setBackground(m, paramAttributeSet.getDrawable(R.styleable.SearchView_submitBackground));
    b.setImageDrawable(paramAttributeSet.getDrawable(R.styleable.SearchView_searchIcon));
    c.setImageDrawable(paramAttributeSet.getDrawable(R.styleable.SearchView_goIcon));
    d.setImageDrawable(paramAttributeSet.getDrawable(R.styleable.SearchView_closeIcon));
    e.setImageDrawable(paramAttributeSet.getDrawable(R.styleable.SearchView_voiceIcon));
    t.setImageDrawable(paramAttributeSet.getDrawable(R.styleable.SearchView_searchIcon));
    u = paramAttributeSet.getDrawable(R.styleable.SearchView_searchHintIcon);
    TooltipCompat.setTooltipText(b, getResources().getString(R.string.abc_searchview_description_search));
    v = paramAttributeSet.getResourceId(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
    w = paramAttributeSet.getResourceId(R.styleable.SearchView_commitIcon, 0);
    b.setOnClickListener(U);
    d.setOnClickListener(U);
    c.setOnClickListener(U);
    e.setOnClickListener(U);
    a.setOnClickListener(U);
    a.addTextChangedListener(ab);
    a.setOnEditorActionListener(V);
    a.setOnItemClickListener(W);
    a.setOnItemSelectedListener(aa);
    a.setOnKeyListener(j);
    a.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (f != null) {
          f.onFocusChange(SearchView.this, paramAnonymousBoolean);
        }
      }
    });
    setIconifiedByDefault(paramAttributeSet.getBoolean(R.styleable.SearchView_iconifiedByDefault, true));
    paramInt = paramAttributeSet.getDimensionPixelSize(R.styleable.SearchView_android_maxWidth, -1);
    if (paramInt != -1) {
      setMaxWidth(paramInt);
    }
    z = paramAttributeSet.getText(R.styleable.SearchView_defaultQueryHint);
    H = paramAttributeSet.getText(R.styleable.SearchView_queryHint);
    paramInt = paramAttributeSet.getInt(R.styleable.SearchView_android_imeOptions, -1);
    if (paramInt != -1) {
      setImeOptions(paramInt);
    }
    paramInt = paramAttributeSet.getInt(R.styleable.SearchView_android_inputType, -1);
    if (paramInt != -1) {
      setInputType(paramInt);
    }
    setFocusable(paramAttributeSet.getBoolean(R.styleable.SearchView_android_focusable, true));
    paramAttributeSet.recycle();
    x = new Intent("android.speech.action.WEB_SEARCH");
    x.addFlags(268435456);
    x.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    y = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    y.addFlags(268435456);
    n = findViewById(a.getDropDownAnchor());
    if (n != null) {
      n.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
      {
        public void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
        {
          g();
        }
      });
    }
    a(E);
    n();
  }
  
  private Intent a(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    Intent localIntent = new Intent(paramIntent);
    paramIntent = paramSearchableInfo.getSearchActivity();
    if (paramIntent == null) {
      paramIntent = null;
    } else {
      paramIntent = paramIntent.flattenToShortString();
    }
    localIntent.putExtra("calling_package", paramIntent);
    return localIntent;
  }
  
  private Intent a(Cursor paramCursor, int paramInt, String paramString)
  {
    try
    {
      localObject2 = ab.a(paramCursor, "suggest_intent_action");
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label230;
      }
      localObject1 = h.getSuggestIntentAction();
    }
    catch (RuntimeException paramString)
    {
      for (;;)
      {
        Object localObject1;
        Object localObject3;
        try
        {
          String str;
          paramInt = paramCursor.getPosition();
        }
        catch (RuntimeException paramCursor)
        {
          continue;
        }
        paramInt = -1;
        paramCursor = new StringBuilder();
        paramCursor.append("Search suggestions cursor at row ");
        paramCursor.append(paramInt);
        paramCursor.append(" returned exception.");
        Log.w("SearchView", paramCursor.toString(), paramString);
        return null;
        label230:
        Object localObject2 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = "android.intent.action.SEARCH";
          continue;
          label247:
          if (localObject3 == null) {
            localObject1 = null;
          }
        }
      }
    }
    localObject3 = ab.a(paramCursor, "suggest_intent_data");
    localObject1 = localObject3;
    if (localObject3 == null) {
      localObject1 = h.getSuggestIntentData();
    }
    localObject3 = localObject1;
    if (localObject1 != null)
    {
      str = ab.a(paramCursor, "suggest_intent_data_id");
      localObject3 = localObject1;
      if (str != null)
      {
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append((String)localObject1);
        ((StringBuilder)localObject3).append("/");
        ((StringBuilder)localObject3).append(Uri.encode(str));
        localObject3 = ((StringBuilder)localObject3).toString();
        break label247;
        localObject1 = Uri.parse((String)localObject3);
        localObject3 = ab.a(paramCursor, "suggest_intent_query");
        paramString = a((String)localObject2, (Uri)localObject1, ab.a(paramCursor, "suggest_intent_extra_data"), (String)localObject3, paramInt, paramString);
        return paramString;
      }
    }
  }
  
  private Intent a(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    paramString1 = new Intent(paramString1);
    paramString1.addFlags(268435456);
    if (paramUri != null) {
      paramString1.setData(paramUri);
    }
    paramString1.putExtra("user_query", N);
    if (paramString3 != null) {
      paramString1.putExtra("query", paramString3);
    }
    if (paramString2 != null) {
      paramString1.putExtra("intent_extra_data_key", paramString2);
    }
    if (Q != null) {
      paramString1.putExtra("app_data", Q);
    }
    if (paramInt != 0)
    {
      paramString1.putExtra("action_key", paramInt);
      paramString1.putExtra("action_msg", paramString4);
    }
    paramString1.setComponent(h.getSearchActivity());
    return paramString1;
  }
  
  private void a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    try
    {
      getContext().startActivity(paramIntent);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Failed launch activity: ");
      localStringBuilder.append(paramIntent);
      Log.e("SearchView", localStringBuilder.toString(), localRuntimeException);
    }
  }
  
  private void a(View paramView, Rect paramRect)
  {
    paramView.getLocationInWindow(r);
    getLocationInWindow(s);
    int i1 = r[1] - s[1];
    int i2 = r[0] - s[0];
    paramRect.set(i2, i1, paramView.getWidth() + i2, paramView.getHeight() + i1);
  }
  
  private void a(boolean paramBoolean)
  {
    F = paramBoolean;
    int i2 = 8;
    boolean bool1 = false;
    if (paramBoolean) {
      i1 = 0;
    } else {
      i1 = 8;
    }
    boolean bool2 = TextUtils.isEmpty(a.getText()) ^ true;
    b.setVisibility(i1);
    b(bool2);
    View localView = k;
    if (paramBoolean) {
      i1 = 8;
    } else {
      i1 = 0;
    }
    localView.setVisibility(i1);
    int i1 = i2;
    if (t.getDrawable() != null) {
      if (E) {
        i1 = i2;
      } else {
        i1 = 0;
      }
    }
    t.setVisibility(i1);
    l();
    paramBoolean = bool1;
    if (!bool2) {
      paramBoolean = true;
    }
    c(paramBoolean);
    k();
  }
  
  static boolean a(Context paramContext)
  {
    return getResourcesgetConfigurationorientation == 2;
  }
  
  private Intent b(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    ComponentName localComponentName = paramSearchableInfo.getSearchActivity();
    Object localObject1 = new Intent("android.intent.action.SEARCH");
    ((Intent)localObject1).setComponent(localComponentName);
    PendingIntent localPendingIntent = PendingIntent.getActivity(getContext(), 0, (Intent)localObject1, 1073741824);
    Bundle localBundle = new Bundle();
    if (Q != null) {
      localBundle.putParcelable("app_data", Q);
    }
    Intent localIntent = new Intent(paramIntent);
    paramIntent = "free_form";
    int i1 = 1;
    Object localObject2 = getResources();
    if (paramSearchableInfo.getVoiceLanguageModeId() != 0) {
      paramIntent = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageModeId());
    }
    int i2 = paramSearchableInfo.getVoicePromptTextId();
    Object localObject3 = null;
    if (i2 != 0) {
      localObject1 = ((Resources)localObject2).getString(paramSearchableInfo.getVoicePromptTextId());
    } else {
      localObject1 = null;
    }
    if (paramSearchableInfo.getVoiceLanguageId() != 0) {
      localObject2 = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageId());
    } else {
      localObject2 = null;
    }
    if (paramSearchableInfo.getVoiceMaxResults() != 0) {
      i1 = paramSearchableInfo.getVoiceMaxResults();
    }
    localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", paramIntent);
    localIntent.putExtra("android.speech.extra.PROMPT", (String)localObject1);
    localIntent.putExtra("android.speech.extra.LANGUAGE", (String)localObject2);
    localIntent.putExtra("android.speech.extra.MAX_RESULTS", i1);
    if (localComponentName == null) {
      paramIntent = localObject3;
    } else {
      paramIntent = localComponentName.flattenToShortString();
    }
    localIntent.putExtra("calling_package", paramIntent);
    localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", localPendingIntent);
    localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", localBundle);
    return localIntent;
  }
  
  private void b(boolean paramBoolean)
  {
    int i1;
    if ((G) && (j()) && (hasFocus()) && ((paramBoolean) || (!L))) {
      i1 = 0;
    } else {
      i1 = 8;
    }
    c.setVisibility(i1);
  }
  
  private boolean b(int paramInt1, int paramInt2, String paramString)
  {
    Cursor localCursor = g.getCursor();
    if ((localCursor != null) && (localCursor.moveToPosition(paramInt1)))
    {
      a(a(localCursor, paramInt2, paramString));
      return true;
    }
    return false;
  }
  
  private CharSequence c(CharSequence paramCharSequence)
  {
    if (E)
    {
      if (u == null) {
        return paramCharSequence;
      }
      int i1 = (int)(a.getTextSize() * 1.25D);
      u.setBounds(0, 0, i1, i1);
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
      localSpannableStringBuilder.setSpan(new ImageSpan(u), 1, 2, 33);
      localSpannableStringBuilder.append(paramCharSequence);
      return localSpannableStringBuilder;
    }
    return paramCharSequence;
  }
  
  private void c(boolean paramBoolean)
  {
    int i1;
    if ((L) && (!isIconified()) && (paramBoolean))
    {
      i1 = 0;
      c.setVisibility(8);
    }
    else
    {
      i1 = 8;
    }
    e.setVisibility(i1);
  }
  
  private void d(int paramInt)
  {
    Editable localEditable = a.getText();
    Object localObject = g.getCursor();
    if (localObject == null) {
      return;
    }
    if (((Cursor)localObject).moveToPosition(paramInt))
    {
      localObject = g.convertToString((Cursor)localObject);
      if (localObject != null)
      {
        setQuery((CharSequence)localObject);
        return;
      }
      setQuery(localEditable);
      return;
    }
    setQuery(localEditable);
  }
  
  private int getPreferredHeight()
  {
    return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
  }
  
  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
  }
  
  private boolean i()
  {
    Object localObject = h;
    boolean bool = false;
    if ((localObject != null) && (h.getVoiceSearchEnabled()))
    {
      localObject = null;
      if (h.getVoiceSearchLaunchWebSearch()) {
        localObject = x;
      } else if (h.getVoiceSearchLaunchRecognizer()) {
        localObject = y;
      }
      if (localObject != null)
      {
        if (getContext().getPackageManager().resolveActivity((Intent)localObject, 65536) != null) {
          bool = true;
        }
        return bool;
      }
    }
    return false;
  }
  
  private boolean j()
  {
    return ((G) || (L)) && (!isIconified());
  }
  
  private void k()
  {
    int i1;
    if ((j()) && ((c.getVisibility() == 0) || (e.getVisibility() == 0))) {
      i1 = 0;
    } else {
      i1 = 8;
    }
    m.setVisibility(i1);
  }
  
  private void l()
  {
    boolean bool = TextUtils.isEmpty(a.getText());
    int i3 = 1;
    int i4 = bool ^ true;
    int i2 = 0;
    int i1 = i3;
    if (i4 == 0) {
      if ((E) && (!O)) {
        i1 = i3;
      } else {
        i1 = 0;
      }
    }
    Object localObject = d;
    if (i1 != 0) {
      i1 = i2;
    } else {
      i1 = 8;
    }
    ((ImageView)localObject).setVisibility(i1);
    Drawable localDrawable = d.getDrawable();
    if (localDrawable != null)
    {
      if (i4 != 0) {
        localObject = ENABLED_STATE_SET;
      } else {
        localObject = EMPTY_STATE_SET;
      }
      localDrawable.setState((int[])localObject);
    }
  }
  
  private void m()
  {
    post(R);
  }
  
  private void n()
  {
    CharSequence localCharSequence = getQueryHint();
    SearchAutoComplete localSearchAutoComplete = a;
    Object localObject = localCharSequence;
    if (localCharSequence == null) {
      localObject = "";
    }
    localSearchAutoComplete.setHint(c((CharSequence)localObject));
  }
  
  private void o()
  {
    a.setThreshold(h.getSuggestThreshold());
    a.setImeOptions(h.getImeOptions());
    int i3 = h.getInputType();
    int i2 = 1;
    int i1 = i3;
    if ((i3 & 0xF) == 1)
    {
      i3 &= 0xFFFEFFFF;
      i1 = i3;
      if (h.getSuggestAuthority() != null) {
        i1 = i3 | 0x10000 | 0x80000;
      }
    }
    a.setInputType(i1);
    if (g != null) {
      g.changeCursor(null);
    }
    if (h.getSuggestAuthority() != null)
    {
      g = new ab(getContext(), this, h, T);
      a.setAdapter(g);
      ab localAb = (ab)g;
      i1 = i2;
      if (I) {
        i1 = 2;
      }
      localAb.a(i1);
    }
  }
  
  private void p()
  {
    a.dismissDropDown();
  }
  
  private void setQuery(CharSequence paramCharSequence)
  {
    a.setText(paramCharSequence);
    SearchAutoComplete localSearchAutoComplete = a;
    int i1;
    if (TextUtils.isEmpty(paramCharSequence)) {
      i1 = 0;
    } else {
      i1 = paramCharSequence.length();
    }
    localSearchAutoComplete.setSelection(i1);
  }
  
  void a()
  {
    int[] arrayOfInt;
    if (a.hasFocus()) {
      arrayOfInt = FOCUSED_STATE_SET;
    } else {
      arrayOfInt = EMPTY_STATE_SET;
    }
    Drawable localDrawable = l.getBackground();
    if (localDrawable != null) {
      localDrawable.setState(arrayOfInt);
    }
    localDrawable = m.getBackground();
    if (localDrawable != null) {
      localDrawable.setState(arrayOfInt);
    }
    invalidate();
  }
  
  void a(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = a("android.intent.action.SEARCH", null, null, paramString2, paramInt, paramString1);
    getContext().startActivity(paramString1);
  }
  
  void a(CharSequence paramCharSequence)
  {
    setQuery(paramCharSequence);
  }
  
  boolean a(int paramInt1, int paramInt2, String paramString)
  {
    if ((C != null) && (C.onSuggestionClick(paramInt1))) {
      return false;
    }
    b(paramInt1, 0, null);
    a.setImeVisibility(false);
    p();
    return true;
  }
  
  boolean a(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (h == null) {
      return false;
    }
    if (g == null) {
      return false;
    }
    if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.hasNoModifiers())) {
      if ((paramInt != 66) && (paramInt != 84) && (paramInt != 61))
      {
        if ((paramInt != 21) && (paramInt != 22))
        {
          if ((paramInt == 19) && (a.getListSelection() == 0)) {
            return false;
          }
        }
        else
        {
          if (paramInt == 21) {
            paramInt = 0;
          } else {
            paramInt = a.length();
          }
          a.setSelection(paramInt);
          a.setListSelection(0);
          a.clearListSelection();
          i.a(a, true);
          return true;
        }
      }
      else {
        return a(a.getListSelection(), 0, null);
      }
    }
    return false;
  }
  
  void b()
  {
    Editable localEditable = a.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0) && ((A == null) || (!A.onQueryTextSubmit(localEditable.toString()))))
    {
      if (h != null) {
        a(0, null, localEditable.toString());
      }
      a.setImeVisibility(false);
      p();
    }
  }
  
  void b(CharSequence paramCharSequence)
  {
    Editable localEditable = a.getText();
    N = localEditable;
    boolean bool2 = TextUtils.isEmpty(localEditable);
    boolean bool1 = true;
    bool2 ^= true;
    b(bool2);
    if (bool2) {
      bool1 = false;
    }
    c(bool1);
    l();
    k();
    if ((A != null) && (!TextUtils.equals(paramCharSequence, M))) {
      A.onQueryTextChange(paramCharSequence.toString());
    }
    M = paramCharSequence.toString();
  }
  
  void c()
  {
    if (TextUtils.isEmpty(a.getText()))
    {
      if ((E) && ((B == null) || (!B.onClose())))
      {
        clearFocus();
        a(true);
      }
    }
    else
    {
      a.setText("");
      a.requestFocus();
      a.setImeVisibility(true);
    }
  }
  
  boolean c(int paramInt)
  {
    if ((C != null) && (C.onSuggestionSelect(paramInt))) {
      return false;
    }
    d(paramInt);
    return true;
  }
  
  public void clearFocus()
  {
    J = true;
    super.clearFocus();
    a.clearFocus();
    a.setImeVisibility(false);
    J = false;
  }
  
  void d()
  {
    a(false);
    a.requestFocus();
    a.setImeVisibility(true);
    if (D != null) {
      D.onClick(this);
    }
  }
  
  void e()
  {
    if (h == null) {
      return;
    }
    Object localObject = h;
    try
    {
      if (((SearchableInfo)localObject).getVoiceSearchLaunchWebSearch())
      {
        localObject = a(x, (SearchableInfo)localObject);
        getContext().startActivity((Intent)localObject);
        return;
      }
      if (!((SearchableInfo)localObject).getVoiceSearchLaunchRecognizer()) {
        break label75;
      }
      localObject = b(y, (SearchableInfo)localObject);
      getContext().startActivity((Intent)localObject);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      label75:
      for (;;) {}
    }
    Log.w("SearchView", "Could not find voice search activity");
  }
  
  void f()
  {
    a(isIconified());
    m();
    if (a.hasFocus()) {
      h();
    }
  }
  
  void g()
  {
    if (n.getWidth() > 1)
    {
      Resources localResources = getContext().getResources();
      int i3 = l.getPaddingLeft();
      Rect localRect = new Rect();
      boolean bool = ViewUtils.isLayoutRtl(this);
      int i1;
      if (E) {
        i1 = localResources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) + localResources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left);
      } else {
        i1 = 0;
      }
      a.getDropDownBackground().getPadding(localRect);
      if (bool) {
        i2 = -left;
      } else {
        i2 = i3 - (left + i1);
      }
      a.setDropDownHorizontalOffset(i2);
      int i2 = n.getWidth();
      int i4 = left;
      int i5 = right;
      a.setDropDownWidth(i2 + i4 + i5 + i1 - i3);
    }
  }
  
  public int getImeOptions()
  {
    return a.getImeOptions();
  }
  
  public int getInputType()
  {
    return a.getInputType();
  }
  
  public int getMaxWidth()
  {
    return K;
  }
  
  public CharSequence getQuery()
  {
    return a.getText();
  }
  
  @Nullable
  public CharSequence getQueryHint()
  {
    if (H != null) {
      return H;
    }
    if ((h != null) && (h.getHintId() != 0)) {
      return getContext().getText(h.getHintId());
    }
    return z;
  }
  
  int getSuggestionCommitIconResId()
  {
    return w;
  }
  
  int getSuggestionRowLayout()
  {
    return v;
  }
  
  public CursorAdapter getSuggestionsAdapter()
  {
    return g;
  }
  
  void h()
  {
    i.a(a);
    i.b(a);
  }
  
  public boolean isIconfiedByDefault()
  {
    return E;
  }
  
  public boolean isIconified()
  {
    return F;
  }
  
  public boolean isQueryRefinementEnabled()
  {
    return I;
  }
  
  public boolean isSubmitButtonEnabled()
  {
    return G;
  }
  
  public void onActionViewCollapsed()
  {
    setQuery("", false);
    clearFocus();
    a(true);
    a.setImeOptions(P);
    O = false;
  }
  
  public void onActionViewExpanded()
  {
    if (O) {
      return;
    }
    O = true;
    P = a.getImeOptions();
    a.setImeOptions(P | 0x2000000);
    a.setText("");
    setIconified(false);
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(R);
    post(S);
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean)
    {
      a(a, p);
      q.set(p.left, 0, p.right, paramInt4 - paramInt2);
      if (o == null)
      {
        o = new c(q, p, a);
        setTouchDelegate(o);
        return;
      }
      o.a(q, p);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (isIconified())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    if (i2 != Integer.MIN_VALUE)
    {
      if (i2 != 0)
      {
        if (i2 != 1073741824)
        {
          paramInt1 = i1;
        }
        else
        {
          paramInt1 = i1;
          if (K > 0) {
            paramInt1 = Math.min(K, i1);
          }
        }
      }
      else if (K > 0) {
        paramInt1 = K;
      } else {
        paramInt1 = getPreferredWidth();
      }
    }
    else if (K > 0) {
      paramInt1 = Math.min(K, i1);
    } else {
      paramInt1 = Math.min(getPreferredWidth(), i1);
    }
    i1 = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (i1 != Integer.MIN_VALUE)
    {
      if (i1 == 0) {
        paramInt2 = getPreferredHeight();
      }
    }
    else {
      paramInt2 = Math.min(getPreferredHeight(), paramInt2);
    }
    super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
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
    a(a);
    requestLayout();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    b localB = new b(super.onSaveInstanceState());
    a = isIconified();
    return localB;
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    m();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (J) {
      return false;
    }
    if (!isFocusable()) {
      return false;
    }
    if (!isIconified())
    {
      boolean bool = a.requestFocus(paramInt, paramRect);
      if (bool) {
        a(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setAppSearchData(Bundle paramBundle)
  {
    Q = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      c();
      return;
    }
    d();
  }
  
  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (E == paramBoolean) {
      return;
    }
    E = paramBoolean;
    a(paramBoolean);
    n();
  }
  
  public void setImeOptions(int paramInt)
  {
    a.setImeOptions(paramInt);
  }
  
  public void setInputType(int paramInt)
  {
    a.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    K = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(OnCloseListener paramOnCloseListener)
  {
    B = paramOnCloseListener;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    f = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(OnQueryTextListener paramOnQueryTextListener)
  {
    A = paramOnQueryTextListener;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    D = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(OnSuggestionListener paramOnSuggestionListener)
  {
    C = paramOnSuggestionListener;
  }
  
  public void setQuery(CharSequence paramCharSequence, boolean paramBoolean)
  {
    a.setText(paramCharSequence);
    if (paramCharSequence != null)
    {
      a.setSelection(a.length());
      N = paramCharSequence;
    }
    if ((paramBoolean) && (!TextUtils.isEmpty(paramCharSequence))) {
      b();
    }
  }
  
  public void setQueryHint(@Nullable CharSequence paramCharSequence)
  {
    H = paramCharSequence;
    n();
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    I = paramBoolean;
    if ((g instanceof ab))
    {
      ab localAb = (ab)g;
      int i1;
      if (paramBoolean) {
        i1 = 2;
      } else {
        i1 = 1;
      }
      localAb.a(i1);
    }
  }
  
  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    h = paramSearchableInfo;
    if (h != null)
    {
      o();
      n();
    }
    L = i();
    if (L) {
      a.setPrivateImeOptions("nm");
    }
    a(isIconified());
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    G = paramBoolean;
    a(isIconified());
  }
  
  public void setSuggestionsAdapter(CursorAdapter paramCursorAdapter)
  {
    g = paramCursorAdapter;
    a.setAdapter(g);
  }
  
  public static abstract interface OnCloseListener
  {
    public abstract boolean onClose();
  }
  
  public static abstract interface OnQueryTextListener
  {
    public abstract boolean onQueryTextChange(String paramString);
    
    public abstract boolean onQueryTextSubmit(String paramString);
  }
  
  public static abstract interface OnSuggestionListener
  {
    public abstract boolean onSuggestionClick(int paramInt);
    
    public abstract boolean onSuggestionSelect(int paramInt);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class SearchAutoComplete
    extends AppCompatAutoCompleteTextView
  {
    final Runnable a = new Runnable()
    {
      public void run()
      {
        b();
      }
    };
    private int b = getThreshold();
    private SearchView c;
    private boolean d;
    
    public SearchAutoComplete(Context paramContext)
    {
      this(paramContext, null);
    }
    
    public SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet)
    {
      this(paramContext, paramAttributeSet, R.attr.autoCompleteTextViewStyle);
    }
    
    public SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
    }
    
    private int getSearchViewTextMinWidthDp()
    {
      Configuration localConfiguration = getResources().getConfiguration();
      int i = screenWidthDp;
      int j = screenHeightDp;
      if ((i >= 960) && (j >= 720) && (orientation == 2)) {
        return 256;
      }
      if ((i < 600) && ((i < 640) || (j < 480))) {
        return 160;
      }
      return 192;
    }
    
    boolean a()
    {
      return TextUtils.getTrimmedLength(getText()) == 0;
    }
    
    void b()
    {
      if (d)
      {
        ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(this, 0);
        d = false;
      }
    }
    
    public boolean enoughToFilter()
    {
      return (b <= 0) || (super.enoughToFilter());
    }
    
    public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
    {
      paramEditorInfo = super.onCreateInputConnection(paramEditorInfo);
      if (d)
      {
        removeCallbacks(a);
        post(a);
      }
      return paramEditorInfo;
    }
    
    protected void onFinishInflate()
    {
      super.onFinishInflate();
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      setMinWidth((int)TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), localDisplayMetrics));
    }
    
    protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
    {
      super.onFocusChanged(paramBoolean, paramInt, paramRect);
      c.f();
    }
    
    public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 4)
      {
        KeyEvent.DispatcherState localDispatcherState;
        if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
        {
          localDispatcherState = getKeyDispatcherState();
          if (localDispatcherState != null) {
            localDispatcherState.startTracking(paramKeyEvent, this);
          }
          return true;
        }
        if (paramKeyEvent.getAction() == 1)
        {
          localDispatcherState = getKeyDispatcherState();
          if (localDispatcherState != null) {
            localDispatcherState.handleUpEvent(paramKeyEvent);
          }
          if ((paramKeyEvent.isTracking()) && (!paramKeyEvent.isCanceled()))
          {
            c.clearFocus();
            setImeVisibility(false);
            return true;
          }
        }
      }
      return super.onKeyPreIme(paramInt, paramKeyEvent);
    }
    
    public void onWindowFocusChanged(boolean paramBoolean)
    {
      super.onWindowFocusChanged(paramBoolean);
      if ((paramBoolean) && (c.hasFocus()) && (getVisibility() == 0))
      {
        d = true;
        if (SearchView.a(getContext())) {
          SearchView.i.a(this, true);
        }
      }
    }
    
    public void performCompletion() {}
    
    protected void replaceText(CharSequence paramCharSequence) {}
    
    void setImeVisibility(boolean paramBoolean)
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
      if (!paramBoolean)
      {
        d = false;
        removeCallbacks(a);
        localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        return;
      }
      if (localInputMethodManager.isActive(this))
      {
        d = false;
        removeCallbacks(a);
        localInputMethodManager.showSoftInput(this, 0);
        return;
      }
      d = true;
    }
    
    void setSearchView(SearchView paramSearchView)
    {
      c = paramSearchView;
    }
    
    public void setThreshold(int paramInt)
    {
      super.setThreshold(paramInt);
      b = paramInt;
    }
  }
  
  private static class a
  {
    private Method a;
    private Method b;
    private Method c;
    
    a()
    {
      try
      {
        a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
        a.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException1)
      {
        try
        {
          for (;;)
          {
            b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
            b.setAccessible(true);
            try
            {
              c = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[] { Boolean.TYPE });
              c.setAccessible(true);
              return;
            }
            catch (NoSuchMethodException localNoSuchMethodException3) {}
            localNoSuchMethodException1 = localNoSuchMethodException1;
          }
        }
        catch (NoSuchMethodException localNoSuchMethodException2)
        {
          for (;;) {}
        }
      }
    }
    
    void a(AutoCompleteTextView paramAutoCompleteTextView)
    {
      if (a != null) {}
      try
      {
        a.invoke(paramAutoCompleteTextView, new Object[0]);
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
    
    void a(AutoCompleteTextView paramAutoCompleteTextView, boolean paramBoolean)
    {
      if (c != null) {}
      try
      {
        c.invoke(paramAutoCompleteTextView, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
    
    void b(AutoCompleteTextView paramAutoCompleteTextView)
    {
      if (b != null) {}
      try
      {
        b.invoke(paramAutoCompleteTextView, new Object[0]);
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
  }
  
  static class b
    extends AbsSavedState
  {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public SearchView.b a(Parcel paramAnonymousParcel)
      {
        return new SearchView.b(paramAnonymousParcel, null);
      }
      
      public SearchView.b a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new SearchView.b(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public SearchView.b[] a(int paramAnonymousInt)
      {
        return new SearchView.b[paramAnonymousInt];
      }
    };
    boolean a;
    
    public b(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      a = ((Boolean)paramParcel.readValue(null)).booleanValue();
    }
    
    b(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("SearchView.SavedState{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" isIconified=");
      localStringBuilder.append(a);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeValue(Boolean.valueOf(a));
    }
  }
  
  private static class c
    extends TouchDelegate
  {
    private final View a;
    private final Rect b;
    private final Rect c;
    private final Rect d;
    private final int e;
    private boolean f;
    
    public c(Rect paramRect1, Rect paramRect2, View paramView)
    {
      super(paramView);
      e = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
      b = new Rect();
      d = new Rect();
      c = new Rect();
      a(paramRect1, paramRect2);
      a = paramView;
    }
    
    public void a(Rect paramRect1, Rect paramRect2)
    {
      b.set(paramRect1);
      d.set(paramRect1);
      d.inset(-e, -e);
      c.set(paramRect2);
    }
    
    public boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      int k = (int)paramMotionEvent.getX();
      int m = (int)paramMotionEvent.getY();
      int i = paramMotionEvent.getAction();
      int j = 1;
      boolean bool2 = false;
      switch (i)
      {
      default: 
        break;
      case 3: 
        bool1 = f;
        f = false;
        i = j;
        break;
      case 1: 
      case 2: 
        boolean bool3 = f;
        bool1 = bool3;
        i = j;
        if (!bool3) {
          break label153;
        }
        bool1 = bool3;
        i = j;
        if (d.contains(k, m)) {
          break label153;
        }
        i = 0;
        bool1 = bool3;
        break;
      case 0: 
        if (b.contains(k, m))
        {
          f = true;
          bool1 = true;
          i = j;
        }
        break;
      }
      boolean bool1 = false;
      i = j;
      label153:
      if (bool1)
      {
        if ((i != 0) && (!c.contains(k, m))) {
          paramMotionEvent.setLocation(a.getWidth() / 2, a.getHeight() / 2);
        } else {
          paramMotionEvent.setLocation(k - c.left, m - c.top);
        }
        bool2 = a.dispatchTouchEvent(paramMotionEvent);
      }
      return bool2;
    }
  }
}
