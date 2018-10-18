package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.ArrayRes;
import android.support.annotation.AttrRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v7.appcompat.R.attr;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;

public class AlertDialog
  extends AppCompatDialog
  implements DialogInterface
{
  final AlertController a = new AlertController(getContext(), this, getWindow());
  
  protected AlertDialog(@NonNull Context paramContext)
  {
    this(paramContext, 0);
  }
  
  protected AlertDialog(@NonNull Context paramContext, @StyleRes int paramInt)
  {
    super(paramContext, a(paramContext, paramInt));
  }
  
  protected AlertDialog(@NonNull Context paramContext, boolean paramBoolean, @Nullable DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this(paramContext, 0);
    setCancelable(paramBoolean);
    setOnCancelListener(paramOnCancelListener);
  }
  
  static int a(@NonNull Context paramContext, @StyleRes int paramInt)
  {
    if ((paramInt >>> 24 & 0xFF) >= 1) {
      return paramInt;
    }
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(R.attr.alertDialogTheme, localTypedValue, true);
    return resourceId;
  }
  
  public Button getButton(int paramInt)
  {
    return a.d(paramInt);
  }
  
  public ListView getListView()
  {
    return a.b();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a.a();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (a.a(paramInt, paramKeyEvent)) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (a.b(paramInt, paramKeyEvent)) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void setButton(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.a(paramInt, paramCharSequence, paramOnClickListener, null, null);
  }
  
  public void setButton(int paramInt, CharSequence paramCharSequence, Drawable paramDrawable, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.a(paramInt, paramCharSequence, paramOnClickListener, null, paramDrawable);
  }
  
  public void setButton(int paramInt, CharSequence paramCharSequence, Message paramMessage)
  {
    a.a(paramInt, paramCharSequence, null, paramMessage, null);
  }
  
  public void setCustomTitle(View paramView)
  {
    a.b(paramView);
  }
  
  public void setIcon(int paramInt)
  {
    a.b(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    a.a(paramDrawable);
  }
  
  public void setIconAttribute(int paramInt)
  {
    TypedValue localTypedValue = new TypedValue();
    getContext().getTheme().resolveAttribute(paramInt, localTypedValue, true);
    a.b(resourceId);
  }
  
  public void setMessage(CharSequence paramCharSequence)
  {
    a.b(paramCharSequence);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    a.a(paramCharSequence);
  }
  
  public void setView(View paramView)
  {
    a.c(paramView);
  }
  
  public void setView(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static class Builder
  {
    private final AlertController.AlertParams a;
    private final int b;
    
    public Builder(@NonNull Context paramContext)
    {
      this(paramContext, AlertDialog.a(paramContext, 0));
    }
    
    public Builder(@NonNull Context paramContext, @StyleRes int paramInt)
    {
      a = new AlertController.AlertParams(new ContextThemeWrapper(paramContext, AlertDialog.a(paramContext, paramInt)));
      b = paramInt;
    }
    
    public AlertDialog create()
    {
      AlertDialog localAlertDialog = new AlertDialog(a.mContext, b);
      a.apply(a);
      localAlertDialog.setCancelable(a.mCancelable);
      if (a.mCancelable) {
        localAlertDialog.setCanceledOnTouchOutside(true);
      }
      localAlertDialog.setOnCancelListener(a.mOnCancelListener);
      localAlertDialog.setOnDismissListener(a.mOnDismissListener);
      if (a.mOnKeyListener != null) {
        localAlertDialog.setOnKeyListener(a.mOnKeyListener);
      }
      return localAlertDialog;
    }
    
    @NonNull
    public Context getContext()
    {
      return a.mContext;
    }
    
    public Builder setAdapter(ListAdapter paramListAdapter, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mAdapter = paramListAdapter;
      a.mOnClickListener = paramOnClickListener;
      return this;
    }
    
    public Builder setCancelable(boolean paramBoolean)
    {
      a.mCancelable = paramBoolean;
      return this;
    }
    
    public Builder setCursor(Cursor paramCursor, DialogInterface.OnClickListener paramOnClickListener, String paramString)
    {
      a.mCursor = paramCursor;
      a.mLabelColumn = paramString;
      a.mOnClickListener = paramOnClickListener;
      return this;
    }
    
    public Builder setCustomTitle(@Nullable View paramView)
    {
      a.mCustomTitleView = paramView;
      return this;
    }
    
    public Builder setIcon(@DrawableRes int paramInt)
    {
      a.mIconId = paramInt;
      return this;
    }
    
    public Builder setIcon(@Nullable Drawable paramDrawable)
    {
      a.mIcon = paramDrawable;
      return this;
    }
    
    public Builder setIconAttribute(@AttrRes int paramInt)
    {
      TypedValue localTypedValue = new TypedValue();
      a.mContext.getTheme().resolveAttribute(paramInt, localTypedValue, true);
      a.mIconId = resourceId;
      return this;
    }
    
    @Deprecated
    public Builder setInverseBackgroundForced(boolean paramBoolean)
    {
      a.mForceInverseBackground = paramBoolean;
      return this;
    }
    
    public Builder setItems(@ArrayRes int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mItems = a.mContext.getResources().getTextArray(paramInt);
      a.mOnClickListener = paramOnClickListener;
      return this;
    }
    
    public Builder setItems(CharSequence[] paramArrayOfCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mItems = paramArrayOfCharSequence;
      a.mOnClickListener = paramOnClickListener;
      return this;
    }
    
    public Builder setMessage(@StringRes int paramInt)
    {
      a.mMessage = a.mContext.getText(paramInt);
      return this;
    }
    
    public Builder setMessage(@Nullable CharSequence paramCharSequence)
    {
      a.mMessage = paramCharSequence;
      return this;
    }
    
    public Builder setMultiChoiceItems(@ArrayRes int paramInt, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
    {
      a.mItems = a.mContext.getResources().getTextArray(paramInt);
      a.mOnCheckboxClickListener = paramOnMultiChoiceClickListener;
      a.mCheckedItems = paramArrayOfBoolean;
      a.mIsMultiChoice = true;
      return this;
    }
    
    public Builder setMultiChoiceItems(Cursor paramCursor, String paramString1, String paramString2, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
    {
      a.mCursor = paramCursor;
      a.mOnCheckboxClickListener = paramOnMultiChoiceClickListener;
      a.mIsCheckedColumn = paramString1;
      a.mLabelColumn = paramString2;
      a.mIsMultiChoice = true;
      return this;
    }
    
    public Builder setMultiChoiceItems(CharSequence[] paramArrayOfCharSequence, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
    {
      a.mItems = paramArrayOfCharSequence;
      a.mOnCheckboxClickListener = paramOnMultiChoiceClickListener;
      a.mCheckedItems = paramArrayOfBoolean;
      a.mIsMultiChoice = true;
      return this;
    }
    
    public Builder setNegativeButton(@StringRes int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mNegativeButtonText = a.mContext.getText(paramInt);
      a.mNegativeButtonListener = paramOnClickListener;
      return this;
    }
    
    public Builder setNegativeButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mNegativeButtonText = paramCharSequence;
      a.mNegativeButtonListener = paramOnClickListener;
      return this;
    }
    
    public Builder setNegativeButtonIcon(Drawable paramDrawable)
    {
      a.mNegativeButtonIcon = paramDrawable;
      return this;
    }
    
    public Builder setNeutralButton(@StringRes int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mNeutralButtonText = a.mContext.getText(paramInt);
      a.mNeutralButtonListener = paramOnClickListener;
      return this;
    }
    
    public Builder setNeutralButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mNeutralButtonText = paramCharSequence;
      a.mNeutralButtonListener = paramOnClickListener;
      return this;
    }
    
    public Builder setNeutralButtonIcon(Drawable paramDrawable)
    {
      a.mNeutralButtonIcon = paramDrawable;
      return this;
    }
    
    public Builder setOnCancelListener(DialogInterface.OnCancelListener paramOnCancelListener)
    {
      a.mOnCancelListener = paramOnCancelListener;
      return this;
    }
    
    public Builder setOnDismissListener(DialogInterface.OnDismissListener paramOnDismissListener)
    {
      a.mOnDismissListener = paramOnDismissListener;
      return this;
    }
    
    public Builder setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
    {
      a.mOnItemSelectedListener = paramOnItemSelectedListener;
      return this;
    }
    
    public Builder setOnKeyListener(DialogInterface.OnKeyListener paramOnKeyListener)
    {
      a.mOnKeyListener = paramOnKeyListener;
      return this;
    }
    
    public Builder setPositiveButton(@StringRes int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mPositiveButtonText = a.mContext.getText(paramInt);
      a.mPositiveButtonListener = paramOnClickListener;
      return this;
    }
    
    public Builder setPositiveButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mPositiveButtonText = paramCharSequence;
      a.mPositiveButtonListener = paramOnClickListener;
      return this;
    }
    
    public Builder setPositiveButtonIcon(Drawable paramDrawable)
    {
      a.mPositiveButtonIcon = paramDrawable;
      return this;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public Builder setRecycleOnMeasureEnabled(boolean paramBoolean)
    {
      a.mRecycleOnMeasure = paramBoolean;
      return this;
    }
    
    public Builder setSingleChoiceItems(@ArrayRes int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mItems = a.mContext.getResources().getTextArray(paramInt1);
      a.mOnClickListener = paramOnClickListener;
      a.mCheckedItem = paramInt2;
      a.mIsSingleChoice = true;
      return this;
    }
    
    public Builder setSingleChoiceItems(Cursor paramCursor, int paramInt, String paramString, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mCursor = paramCursor;
      a.mOnClickListener = paramOnClickListener;
      a.mCheckedItem = paramInt;
      a.mLabelColumn = paramString;
      a.mIsSingleChoice = true;
      return this;
    }
    
    public Builder setSingleChoiceItems(ListAdapter paramListAdapter, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mAdapter = paramListAdapter;
      a.mOnClickListener = paramOnClickListener;
      a.mCheckedItem = paramInt;
      a.mIsSingleChoice = true;
      return this;
    }
    
    public Builder setSingleChoiceItems(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.mItems = paramArrayOfCharSequence;
      a.mOnClickListener = paramOnClickListener;
      a.mCheckedItem = paramInt;
      a.mIsSingleChoice = true;
      return this;
    }
    
    public Builder setTitle(@StringRes int paramInt)
    {
      a.mTitle = a.mContext.getText(paramInt);
      return this;
    }
    
    public Builder setTitle(@Nullable CharSequence paramCharSequence)
    {
      a.mTitle = paramCharSequence;
      return this;
    }
    
    public Builder setView(int paramInt)
    {
      a.mView = null;
      a.mViewLayoutResId = paramInt;
      a.mViewSpacingSpecified = false;
      return this;
    }
    
    public Builder setView(View paramView)
    {
      a.mView = paramView;
      a.mViewLayoutResId = 0;
      a.mViewSpacingSpecified = false;
      return this;
    }
    
    @Deprecated
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public Builder setView(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a.mView = paramView;
      a.mViewLayoutResId = 0;
      a.mViewSpacingSpecified = true;
      a.mViewSpacingLeft = paramInt1;
      a.mViewSpacingTop = paramInt2;
      a.mViewSpacingRight = paramInt3;
      a.mViewSpacingBottom = paramInt4;
      return this;
    }
    
    public AlertDialog show()
    {
      AlertDialog localAlertDialog = create();
      localAlertDialog.show();
      return localAlertDialog;
    }
  }
}
