package cn.edu.pku.pkurunner.TaskList;

import android.content.Context;
import android.support.annotation.StringRes;
import android.view.LayoutInflater;
import cn.edu.pku.pkurunner.Contract.BasePresenter;
import cn.edu.pku.pkurunner.Contract.BaseView;

public abstract interface TaskListContract
{
  public static abstract interface Presenter
    extends BasePresenter
  {
    public abstract void refreshList();
    
    public abstract void syncData();
  }
  
  public static abstract interface View
    extends BaseView<TaskListContract.Presenter>
  {
    public abstract void cancelRefresh();
    
    public abstract void dismissWaitingDialog();
    
    public abstract Context getContext();
    
    public abstract LayoutInflater getLayoutInflater();
    
    public abstract TaskCardAdapter getTaskCardAdapter();
    
    public abstract void makeSnackBar(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs);
    
    public abstract void makeToast(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs);
    
    public abstract void showCongratulationsDialog(@StringRes int paramInt1, @StringRes int paramInt2);
    
    public abstract void showTaskDetailDialog(String paramString1, String paramString2);
    
    public abstract void showWaitingDialog(int paramInt);
    
    public abstract void toggleNotice(Boolean paramBoolean);
    
    public abstract void updateWaitingDialog(int paramInt);
  }
}
