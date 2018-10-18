package cn.edu.pku.pkurunner.RecordList;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.util.Pair;
import cn.edu.pku.pkurunner.Contract.BasePresenter;
import cn.edu.pku.pkurunner.Contract.BaseView;
import cn.edu.pku.pkurunner.MainActivity;
import io.reactivex.Observable;
import java.io.File;

public abstract interface RecordListContract
{
  public static abstract interface Presenter
    extends BasePresenter
  {
    public abstract void deleteRecord(int paramInt1, int paramInt2);
    
    public abstract void refreshList();
    
    public abstract void showRecordDetail(int paramInt);
    
    public abstract void start(boolean paramBoolean);
    
    public abstract void syncData();
    
    public abstract void uploadVerifyRecord(int paramInt1, int paramInt2);
  }
  
  public static abstract interface View
    extends BaseView<RecordListContract.Presenter>
  {
    public abstract Observable<Boolean> callSystemCamera(File paramFile);
    
    public abstract void cancelRefresh();
    
    public abstract void dismissWaitDialog();
    
    public abstract Context getContext();
    
    public abstract File getExternalPhotoDir();
    
    public abstract MainActivity getMainActivity();
    
    public abstract RecordCardAdapter getRecordCardAdapter();
    
    public abstract Observable<Pair<String, String>> launchIaaaLogin();
    
    public abstract void makeSnackBar(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs);
    
    public abstract void makeToast(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs);
    
    public abstract void scrollRecyclerViewToTop();
    
    public abstract void setWaitingDialogMessage(@StringRes int paramInt);
    
    public abstract Observable<Boolean> showConfirmDialog(@StringRes int paramInt1, @StringRes int paramInt2);
    
    public abstract Observable<PhotoStatus> showPhotoDialog(@StringRes int paramInt1, @StringRes int paramInt2);
    
    public abstract void showRecordDetailSheet(Bundle paramBundle);
    
    public abstract void showWaitingDialog();
    
    public abstract void toggleLoadingNotice(boolean paramBoolean);
    
    public abstract void toggleNoDataNotice(boolean paramBoolean);
    
    public static enum PhotoStatus
    {
      static
      {
        Ignored = new PhotoStatus("Ignored", 2);
      }
      
      private PhotoStatus() {}
    }
  }
}
