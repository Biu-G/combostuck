package android.support.v14.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v7.preference.PreferenceViewHolder;
import android.support.v7.preference.R.attr;
import android.support.v7.preference.R.styleable;
import android.support.v7.preference.TwoStatePreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.Switch;

public class SwitchPreference
  extends TwoStatePreference
{
  private final a a = new a();
  private CharSequence b;
  private CharSequence c;
  
  public SwitchPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SwitchPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, TypedArrayUtils.getAttr(paramContext, R.attr.switchPreferenceStyle, 16843629));
  }
  
  public SwitchPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public SwitchPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SwitchPreference, paramInt1, paramInt2);
    setSummaryOn(TypedArrayUtils.getString(paramContext, R.styleable.SwitchPreference_summaryOn, R.styleable.SwitchPreference_android_summaryOn));
    setSummaryOff(TypedArrayUtils.getString(paramContext, R.styleable.SwitchPreference_summaryOff, R.styleable.SwitchPreference_android_summaryOff));
    setSwitchTextOn(TypedArrayUtils.getString(paramContext, R.styleable.SwitchPreference_switchTextOn, R.styleable.SwitchPreference_android_switchTextOn));
    setSwitchTextOff(TypedArrayUtils.getString(paramContext, R.styleable.SwitchPreference_switchTextOff, R.styleable.SwitchPreference_android_switchTextOff));
    setDisableDependentsState(TypedArrayUtils.getBoolean(paramContext, R.styleable.SwitchPreference_disableDependentsState, R.styleable.SwitchPreference_android_disableDependentsState, false));
    paramContext.recycle();
  }
  
  private void a(View paramView)
  {
    if (!((AccessibilityManager)getContext().getSystemService("accessibility")).isEnabled()) {
      return;
    }
    b(paramView.findViewById(16908352));
    syncSummaryView(paramView.findViewById(16908304));
  }
  
  private void b(View paramView)
  {
    boolean bool = paramView instanceof Switch;
    if (bool) {
      ((Switch)paramView).setOnCheckedChangeListener(null);
    }
    if ((paramView instanceof Checkable)) {
      ((Checkable)paramView).setChecked(mChecked);
    }
    if (bool)
    {
      paramView = (Switch)paramView;
      paramView.setTextOn(b);
      paramView.setTextOff(c);
      paramView.setOnCheckedChangeListener(a);
    }
  }
  
  public CharSequence getSwitchTextOff()
  {
    return c;
  }
  
  public CharSequence getSwitchTextOn()
  {
    return b;
  }
  
  public void onBindViewHolder(PreferenceViewHolder paramPreferenceViewHolder)
  {
    super.onBindViewHolder(paramPreferenceViewHolder);
    b(paramPreferenceViewHolder.findViewById(16908352));
    syncSummaryView(paramPreferenceViewHolder);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void performClick(View paramView)
  {
    super.performClick(paramView);
    a(paramView);
  }
  
  public void setSwitchTextOff(int paramInt)
  {
    setSwitchTextOff(getContext().getString(paramInt));
  }
  
  public void setSwitchTextOff(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    notifyChanged();
  }
  
  public void setSwitchTextOn(int paramInt)
  {
    setSwitchTextOn(getContext().getString(paramInt));
  }
  
  public void setSwitchTextOn(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    notifyChanged();
  }
  
  private class a
    implements CompoundButton.OnCheckedChangeListener
  {
    a() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (!callChangeListener(Boolean.valueOf(paramBoolean)))
      {
        paramCompoundButton.setChecked(paramBoolean ^ true);
        return;
      }
      setChecked(paramBoolean);
    }
  }
}
