package android.support.v7.widget;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.ResourceCursorAdapter;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

class ab
  extends ResourceCursorAdapter
  implements View.OnClickListener
{
  private final SearchManager a = (SearchManager)mContext.getSystemService("search");
  private final SearchView b;
  private final SearchableInfo c;
  private final Context d;
  private final WeakHashMap<String, Drawable.ConstantState> e;
  private final int f;
  private boolean g = false;
  private int h = 1;
  private ColorStateList i;
  private int j = -1;
  private int k = -1;
  private int l = -1;
  private int m = -1;
  private int n = -1;
  private int o = -1;
  
  public ab(Context paramContext, SearchView paramSearchView, SearchableInfo paramSearchableInfo, WeakHashMap<String, Drawable.ConstantState> paramWeakHashMap)
  {
    super(paramContext, paramSearchView.getSuggestionRowLayout(), null, true);
    b = paramSearchView;
    c = paramSearchableInfo;
    f = paramSearchView.getSuggestionCommitIconResId();
    d = paramContext;
    e = paramWeakHashMap;
  }
  
  private Drawable a(ComponentName paramComponentName)
  {
    String str = paramComponentName.flattenToShortString();
    boolean bool = e.containsKey(str);
    Object localObject = null;
    if (bool)
    {
      paramComponentName = (Drawable.ConstantState)e.get(str);
      if (paramComponentName == null) {
        return null;
      }
      return paramComponentName.newDrawable(d.getResources());
    }
    Drawable localDrawable = b(paramComponentName);
    if (localDrawable == null) {
      paramComponentName = localObject;
    } else {
      paramComponentName = localDrawable.getConstantState();
    }
    e.put(str, paramComponentName);
    return localDrawable;
  }
  
  private Drawable a(String paramString)
  {
    if ((paramString != null) && (!paramString.isEmpty())) {
      if ("0".equals(paramString)) {
        return null;
      }
    }
    try
    {
      int i1 = Integer.parseInt(paramString);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("android.resource://");
      ((StringBuilder)localObject).append(d.getPackageName());
      ((StringBuilder)localObject).append("/");
      ((StringBuilder)localObject).append(i1);
      localObject = ((StringBuilder)localObject).toString();
      Drawable localDrawable = b((String)localObject);
      if (localDrawable != null) {
        return localDrawable;
      }
      localDrawable = ContextCompat.getDrawable(d, i1);
      a((String)localObject, localDrawable);
      return localDrawable;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Object localObject;
      for (;;) {}
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      for (;;) {}
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Icon resource not found: ");
    ((StringBuilder)localObject).append(paramString);
    Log.w("SuggestionsAdapter", ((StringBuilder)localObject).toString());
    return null;
    localObject = b(paramString);
    if (localObject != null) {
      return localObject;
    }
    localObject = b(Uri.parse(paramString));
    a(paramString, (Drawable)localObject);
    return localObject;
    return null;
  }
  
  private CharSequence a(CharSequence paramCharSequence)
  {
    if (i == null)
    {
      localObject = new TypedValue();
      mContext.getTheme().resolveAttribute(R.attr.textColorSearchUrl, (TypedValue)localObject, true);
      i = mContext.getResources().getColorStateList(resourceId);
    }
    Object localObject = new SpannableString(paramCharSequence);
    ((SpannableString)localObject).setSpan(new TextAppearanceSpan(null, 0, 0, i, null), 0, paramCharSequence.length(), 33);
    return localObject;
  }
  
  private static String a(Cursor paramCursor, int paramInt)
  {
    if (paramInt == -1) {
      return null;
    }
    try
    {
      paramCursor = paramCursor.getString(paramInt);
      return paramCursor;
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", paramCursor);
    }
    return null;
  }
  
  public static String a(Cursor paramCursor, String paramString)
  {
    return a(paramCursor, paramCursor.getColumnIndex(paramString));
  }
  
  private void a(Cursor paramCursor)
  {
    if (paramCursor != null) {
      paramCursor = paramCursor.getExtras();
    } else {
      paramCursor = null;
    }
    if ((paramCursor != null) && (paramCursor.getBoolean("in_progress"))) {}
  }
  
  private void a(ImageView paramImageView, Drawable paramDrawable, int paramInt)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if (paramDrawable == null)
    {
      paramImageView.setVisibility(paramInt);
      return;
    }
    paramImageView.setVisibility(0);
    paramDrawable.setVisible(false, false);
    paramDrawable.setVisible(true, false);
  }
  
  private void a(TextView paramTextView, CharSequence paramCharSequence)
  {
    paramTextView.setText(paramCharSequence);
    if (TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
  }
  
  private void a(String paramString, Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      e.put(paramString, paramDrawable.getConstantState());
    }
  }
  
  private Drawable b(ComponentName paramComponentName)
  {
    Object localObject = mContext.getPackageManager();
    try
    {
      ActivityInfo localActivityInfo = ((PackageManager)localObject).getActivityInfo(paramComponentName, 128);
      int i1 = localActivityInfo.getIconResource();
      if (i1 == 0) {
        return null;
      }
      localObject = ((PackageManager)localObject).getDrawable(paramComponentName.getPackageName(), i1, applicationInfo);
      if (localObject == null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Invalid icon resource ");
        ((StringBuilder)localObject).append(i1);
        ((StringBuilder)localObject).append(" for ");
        ((StringBuilder)localObject).append(paramComponentName.flattenToShortString());
        Log.w("SuggestionsAdapter", ((StringBuilder)localObject).toString());
        return null;
      }
      return localObject;
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.w("SuggestionsAdapter", paramComponentName.toString());
    }
    return null;
  }
  
  private Drawable b(Cursor paramCursor)
  {
    if (m == -1) {
      return null;
    }
    Drawable localDrawable = a(paramCursor.getString(m));
    if (localDrawable != null) {
      return localDrawable;
    }
    return d(paramCursor);
  }
  
  private Drawable b(Uri paramUri)
  {
    try
    {
      boolean bool = "android.resource".equals(paramUri.getScheme());
      if (!bool) {}
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Object localObject1;
      label23:
      InputStream localInputStream;
      StringBuilder localStringBuilder1;
      StringBuilder localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append("Icon not found: ");
      localStringBuilder2.append(paramUri);
      localStringBuilder2.append(", ");
      localStringBuilder2.append(localFileNotFoundException.getMessage());
      Log.w("SuggestionsAdapter", localStringBuilder2.toString());
      return null;
    }
    try
    {
      localObject1 = a(paramUri);
      return localObject1;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      break label23;
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("Resource does not exist: ");
    ((StringBuilder)localObject1).append(paramUri);
    throw new FileNotFoundException(((StringBuilder)localObject1).toString());
    localInputStream = d.getContentResolver().openInputStream(paramUri);
    if (localInputStream != null) {
      try
      {
        localObject1 = Drawable.createFromStream(localInputStream, null);
        StringBuilder localStringBuilder3;
        try
        {
          localInputStream.close();
          return localObject1;
        }
        catch (IOException localIOException1)
        {
          localStringBuilder3 = new StringBuilder();
          localStringBuilder3.append("Error closing icon stream for ");
          localStringBuilder3.append(paramUri);
          Log.e("SuggestionsAdapter", localStringBuilder3.toString(), localIOException1);
          return localObject1;
        }
        localStringBuilder1 = new StringBuilder();
      }
      finally
      {
        try
        {
          localIOException1.close();
        }
        catch (IOException localIOException2)
        {
          localStringBuilder3 = new StringBuilder();
          localStringBuilder3.append("Error closing icon stream for ");
          localStringBuilder3.append(paramUri);
          Log.e("SuggestionsAdapter", localStringBuilder3.toString(), localIOException2);
        }
      }
    }
    localStringBuilder1.append("Failed to open ");
    localStringBuilder1.append(paramUri);
    throw new FileNotFoundException(localStringBuilder1.toString());
  }
  
  private Drawable b(String paramString)
  {
    paramString = (Drawable.ConstantState)e.get(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.newDrawable();
  }
  
  private Drawable c(Cursor paramCursor)
  {
    if (n == -1) {
      return null;
    }
    return a(paramCursor.getString(n));
  }
  
  private Drawable d(Cursor paramCursor)
  {
    paramCursor = a(c.getSearchActivity());
    if (paramCursor != null) {
      return paramCursor;
    }
    return mContext.getPackageManager().getDefaultActivityIcon();
  }
  
  Cursor a(SearchableInfo paramSearchableInfo, String paramString, int paramInt)
  {
    Object localObject1 = null;
    if (paramSearchableInfo == null) {
      return null;
    }
    Object localObject2 = paramSearchableInfo.getSuggestAuthority();
    if (localObject2 == null) {
      return null;
    }
    localObject2 = new Uri.Builder().scheme("content").authority((String)localObject2).query("").fragment("");
    String str = paramSearchableInfo.getSuggestPath();
    if (str != null) {
      ((Uri.Builder)localObject2).appendEncodedPath(str);
    }
    ((Uri.Builder)localObject2).appendPath("search_suggest_query");
    str = paramSearchableInfo.getSuggestSelection();
    if (str != null)
    {
      paramSearchableInfo = new String[1];
      paramSearchableInfo[0] = paramString;
    }
    for (;;)
    {
      break;
      ((Uri.Builder)localObject2).appendPath(paramString);
      paramSearchableInfo = localObject1;
    }
    if (paramInt > 0) {
      ((Uri.Builder)localObject2).appendQueryParameter("limit", String.valueOf(paramInt));
    }
    paramString = ((Uri.Builder)localObject2).build();
    return mContext.getContentResolver().query(paramString, null, str, paramSearchableInfo, null);
  }
  
  Drawable a(Uri paramUri)
    throws FileNotFoundException
  {
    Object localObject = paramUri.getAuthority();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {}
    for (;;)
    {
      try
      {
        localResources = mContext.getPackageManager().getResourcesForApplication((String)localObject);
        localList = paramUri.getPathSegments();
        if (localList != null)
        {
          i1 = localList.size();
          if (i1 != 1) {}
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Resources localResources;
        List localList;
        int i1;
        continue;
      }
      try
      {
        i1 = Integer.parseInt((String)localList.get(0));
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Single path segment is not a resource ID: ");
    ((StringBuilder)localObject).append(paramUri);
    throw new FileNotFoundException(((StringBuilder)localObject).toString());
    if (i1 == 2)
    {
      i1 = localResources.getIdentifier((String)localList.get(1), (String)localList.get(0), (String)localObject);
      if (i1 != 0) {
        return localResources.getDrawable(i1);
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("No resource found for: ");
      ((StringBuilder)localObject).append(paramUri);
      throw new FileNotFoundException(((StringBuilder)localObject).toString());
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("More than two path segments: ");
    ((StringBuilder)localObject).append(paramUri);
    throw new FileNotFoundException(((StringBuilder)localObject).toString());
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("No path: ");
    ((StringBuilder)localObject).append(paramUri);
    throw new FileNotFoundException(((StringBuilder)localObject).toString());
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("No package found for authority: ");
    ((StringBuilder)localObject).append(paramUri);
    throw new FileNotFoundException(((StringBuilder)localObject).toString());
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("No authority: ");
    ((StringBuilder)localObject).append(paramUri);
    throw new FileNotFoundException(((StringBuilder)localObject).toString());
  }
  
  public void a(int paramInt)
  {
    h = paramInt;
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramContext = (a)paramView.getTag();
    int i1;
    if (o != -1) {
      i1 = paramCursor.getInt(o);
    } else {
      i1 = 0;
    }
    if (a != null)
    {
      paramView = a(paramCursor, j);
      a(a, paramView);
    }
    if (b != null)
    {
      paramView = a(paramCursor, l);
      if (paramView != null) {
        paramView = a(paramView);
      } else {
        paramView = a(paramCursor, k);
      }
      if (TextUtils.isEmpty(paramView))
      {
        if (a != null)
        {
          a.setSingleLine(false);
          a.setMaxLines(2);
        }
      }
      else if (a != null)
      {
        a.setSingleLine(true);
        a.setMaxLines(1);
      }
      a(b, paramView);
    }
    if (c != null) {
      a(c, b(paramCursor), 4);
    }
    if (d != null) {
      a(d, c(paramCursor), 8);
    }
    if ((h != 2) && ((h != 1) || ((i1 & 0x1) == 0)))
    {
      e.setVisibility(8);
      return;
    }
    e.setVisibility(0);
    e.setTag(a.getText());
    e.setOnClickListener(this);
  }
  
  public void changeCursor(Cursor paramCursor)
  {
    if (g)
    {
      Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
      if (paramCursor != null) {
        paramCursor.close();
      }
      return;
    }
    try
    {
      super.changeCursor(paramCursor);
      if (paramCursor != null)
      {
        j = paramCursor.getColumnIndex("suggest_text_1");
        k = paramCursor.getColumnIndex("suggest_text_2");
        l = paramCursor.getColumnIndex("suggest_text_2_url");
        m = paramCursor.getColumnIndex("suggest_icon_1");
        n = paramCursor.getColumnIndex("suggest_icon_2");
        o = paramCursor.getColumnIndex("suggest_flags");
        return;
      }
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "error changing cursor and caching columns", paramCursor);
    }
  }
  
  public CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return null;
    }
    String str = a(paramCursor, "suggest_intent_query");
    if (str != null) {
      return str;
    }
    if (c.shouldRewriteQueryFromData())
    {
      str = a(paramCursor, "suggest_intent_data");
      if (str != null) {
        return str;
      }
    }
    if (c.shouldRewriteQueryFromText())
    {
      paramCursor = a(paramCursor, "suggest_text_1");
      if (paramCursor != null) {
        return paramCursor;
      }
    }
    return null;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getDropDownView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = newDropDownView(mContext, mCursor, paramViewGroup);
      if (paramViewGroup != null) {
        getTaga.setText(paramView.toString());
      }
    }
    return paramViewGroup;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = newView(mContext, mCursor, paramViewGroup);
      if (paramViewGroup != null) {
        getTaga.setText(paramView.toString());
      }
    }
    return paramViewGroup;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = super.newView(paramContext, paramCursor, paramViewGroup);
    paramContext.setTag(new a(paramContext));
    ((ImageView)paramContext.findViewById(R.id.edit_query)).setImageResource(f);
    return paramContext;
  }
  
  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    a(getCursor());
  }
  
  public void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    a(getCursor());
  }
  
  public void onClick(View paramView)
  {
    paramView = paramView.getTag();
    if ((paramView instanceof CharSequence)) {
      b.a((CharSequence)paramView);
    }
  }
  
  public Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      paramCharSequence = "";
    } else {
      paramCharSequence = paramCharSequence.toString();
    }
    if (b.getVisibility() == 0)
    {
      if (b.getWindowVisibility() != 0) {
        return null;
      }
      try
      {
        paramCharSequence = a(c, paramCharSequence, 50);
        if (paramCharSequence != null)
        {
          paramCharSequence.getCount();
          return paramCharSequence;
        }
      }
      catch (RuntimeException paramCharSequence)
      {
        Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", paramCharSequence);
      }
      return null;
    }
    return null;
  }
  
  private static final class a
  {
    public final TextView a;
    public final TextView b;
    public final ImageView c;
    public final ImageView d;
    public final ImageView e;
    
    public a(View paramView)
    {
      a = ((TextView)paramView.findViewById(16908308));
      b = ((TextView)paramView.findViewById(16908309));
      c = ((ImageView)paramView.findViewById(16908295));
      d = ((ImageView)paramView.findViewById(16908296));
      e = ((ImageView)paramView.findViewById(R.id.edit_query));
    }
  }
}
