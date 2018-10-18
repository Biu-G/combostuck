package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.AttributeSet;

public abstract class DialogPreference
  extends Preference
{
  private CharSequence a;
  private CharSequence b;
  private Drawable c;
  private CharSequence d;
  private CharSequence e;
  private int f;
  
  public DialogPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, TypedArrayUtils.getAttr(paramContext, R.attr.dialogPreferenceStyle, 16842897));
  }
  
  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.DialogPreference, paramInt1, paramInt2);
    a = TypedArrayUtils.getString(paramContext, R.styleable.DialogPreference_dialogTitle, R.styleable.DialogPreference_android_dialogTitle);
    if (a == null) {
      a = getTitle();
    }
    b = TypedArrayUtils.getString(paramContext, R.styleable.DialogPreference_dialogMessage, R.styleable.DialogPreference_android_dialogMessage);
    c = TypedArrayUtils.getDrawable(paramContext, R.styleable.DialogPreference_dialogIcon, R.styleable.DialogPreference_android_dialogIcon);
    d = TypedArrayUtils.getString(paramContext, R.styleable.DialogPreference_positiveButtonText, R.styleable.DialogPreference_android_positiveButtonText);
    e = TypedArrayUtils.getString(paramContext, R.styleable.DialogPreference_negativeButtonText, R.styleable.DialogPreference_android_negativeButtonText);
    f = TypedArrayUtils.getResourceId(paramContext, R.styleable.DialogPreference_dialogLayout, R.styleable.DialogPreference_android_dialogLayout, 0);
    paramContext.recycle();
  }
  
  public Drawable getDialogIcon()
  {
    return c;
  }
  
  public int getDialogLayoutResource()
  {
    return f;
  }
  
  public CharSequence getDialogMessage()
  {
    return b;
  }
  
  public CharSequence getDialogTitle()
  {
    return a;
  }
  
  public CharSequence getNegativeButtonText()
  {
    return e;
  }
  
  public CharSequence getPositiveButtonText()
  {
    return d;
  }
  
  protected void onClick()
  {
    getPreferenceManager().showDialog(this);
  }
  
  public void setDialogIcon(int paramInt)
  {
    c = ContextCompat.getDrawable(getContext(), paramInt);
  }
  
  public void setDialogIcon(Drawable paramDrawable)
  {
    c = paramDrawable;
  }
  
  public void setDialogLayoutResource(int paramInt)
  {
    f = paramInt;
  }
  
  public void setDialogMessage(int paramInt)
  {
    setDialogMessage(getContext().getString(paramInt));
  }
  
  public void setDialogMessage(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
  }
  
  public void setDialogTitle(int paramInt)
  {
    setDialogTitle(getContext().getString(paramInt));
  }
  
  public void setDialogTitle(CharSequence paramCharSequence)
  {
    a = paramCharSequence;
  }
  
  public void setNegativeButtonText(int paramInt)
  {
    setNegativeButtonText(getContext().getString(paramInt));
  }
  
  public void setNegativeButtonText(CharSequence paramCharSequence)
  {
    e = paramCharSequence;
  }
  
  public void setPositiveButtonText(int paramInt)
  {
    setPositiveButtonText(getContext().getString(paramInt));
  }
  
  public void setPositiveButtonText(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
  }
  
  public static abstract interface TargetFragment
  {
    public abstract Preference findPreference(CharSequence paramCharSequence);
  }
}
