package cn.edu.pku.pkurunner.Permission;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import java.util.ArrayList;

public class PermissionDialog
  extends DialogFragment
{
  private View j;
  
  public PermissionDialog() {}
  
  private void a(TextView paramTextView, int paramInt, Boolean paramBoolean)
  {
    int i;
    if (paramBoolean.booleanValue()) {
      i = 2131689615;
    } else {
      i = 2131689614;
    }
    paramTextView.setText(Html.fromHtml(getString(paramInt, new Object[] { getString(i) })));
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new AlertDialog.Builder(getActivity());
    j = getActivity().getLayoutInflater().inflate(2131492918, null);
    paramBundle.setView(j);
    Object localObject = (TextView)j.findViewById(2131296377);
    TextView localTextView1 = (TextView)j.findViewById(2131296378);
    TextView localTextView2 = (TextView)j.findViewById(2131296376);
    if (Build.VERSION.SDK_INT >= 23)
    {
      int i = getActivity().checkSelfPermission("android.permission.READ_PHONE_STATE");
      boolean bool2 = false;
      if (i == 0) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      Boolean localBoolean1 = Boolean.valueOf(bool1);
      if (getActivity().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      Boolean localBoolean2 = Boolean.valueOf(bool1);
      boolean bool1 = bool2;
      if (getActivity().checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
        bool1 = true;
      }
      Boolean localBoolean3 = Boolean.valueOf(bool1);
      a((TextView)localObject, 2131689612, localBoolean1);
      a(localTextView1, 2131689613, localBoolean2);
      a(localTextView2, 2131689610, localBoolean3);
      localObject = new ArrayList();
      if (!localBoolean1.booleanValue()) {
        ((ArrayList)localObject).add("android.permission.READ_PHONE_STATE");
      }
      if (!localBoolean2.booleanValue()) {
        ((ArrayList)localObject).add("android.permission.WRITE_EXTERNAL_STORAGE");
      }
      if (!localBoolean3.booleanValue()) {
        ((ArrayList)localObject).add("android.permission.ACCESS_FINE_LOCATION");
      }
      if (((ArrayList)localObject).size() != 0)
      {
        paramBundle.setNegativeButton(2131689611, new -..Lambda.PermissionDialog.SkQ8vPMt0SrxekKVwWeQeRrnkpE(this));
        paramBundle.setPositiveButton(2131689607, new -..Lambda.PermissionDialog.uMw_izKjp_lceqD5hXE91yIiEb4(this, (ArrayList)localObject));
        return paramBundle.create();
      }
    }
    else
    {
      ((TextView)localObject).setVisibility(8);
      localTextView1.setVisibility(8);
      localTextView2.setVisibility(8);
    }
    paramBundle.setPositiveButton(2131689608, -..Lambda.PermissionDialog.ymTmgntY77MvroQb-BnaEs68OV0.INSTANCE);
    return paramBundle.create();
  }
}
