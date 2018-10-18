package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

public class CheckBoxPreference
  extends TwoStatePreference
{
  private final a a = new a();
  
  public CheckBoxPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, TypedArrayUtils.getAttr(paramContext, R.attr.checkBoxPreferenceStyle, 16842895));
  }
  
  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CheckBoxPreference, paramInt1, paramInt2);
    setSummaryOn(TypedArrayUtils.getString(paramContext, R.styleable.CheckBoxPreference_summaryOn, R.styleable.CheckBoxPreference_android_summaryOn));
    setSummaryOff(TypedArrayUtils.getString(paramContext, R.styleable.CheckBoxPreference_summaryOff, R.styleable.CheckBoxPreference_android_summaryOff));
    setDisableDependentsState(TypedArrayUtils.getBoolean(paramContext, R.styleable.CheckBoxPreference_disableDependentsState, R.styleable.CheckBoxPreference_android_disableDependentsState, false));
    paramContext.recycle();
  }
  
  private void a(View paramView)
  {
    if (!((AccessibilityManager)getContext().getSystemService("accessibility")).isEnabled()) {
      return;
    }
    b(paramView.findViewById(16908289));
    syncSummaryView(paramView.findViewById(16908304));
  }
  
  private void b(View paramView)
  {
    boolean bool = paramView instanceof CompoundButton;
    if (bool) {
      ((CompoundButton)paramView).setOnCheckedChangeListener(null);
    }
    if ((paramView instanceof Checkable)) {
      ((Checkable)paramView).setChecked(mChecked);
    }
    if (bool) {
      ((CompoundButton)paramView).setOnCheckedChangeListener(a);
    }
  }
  
  public void onBindViewHolder(PreferenceViewHolder paramPreferenceViewHolder)
  {
    super.onBindViewHolder(paramPreferenceViewHolder);
    b(paramPreferenceViewHolder.findViewById(16908289));
    syncSummaryView(paramPreferenceViewHolder);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void performClick(View paramView)
  {
    super.performClick(paramView);
    a(paramView);
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
