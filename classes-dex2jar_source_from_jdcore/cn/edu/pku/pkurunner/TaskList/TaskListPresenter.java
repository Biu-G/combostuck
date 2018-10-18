package cn.edu.pku.pkurunner.TaskList;

import android.support.annotation.NonNull;
import cn.edu.pku.pkurunner.Data;
import cn.edu.pku.pkurunner.Model.User;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;

public class TaskListPresenter
  implements TaskListContract.Presenter
{
  private TaskListContract.View a;
  
  public TaskListPresenter(@NonNull TaskListContract.View paramView)
  {
    a = paramView;
    a.setPresenter(this);
  }
  
  public void refreshList()
  {
    a.getTaskCardAdapter().notifyDataInvalid();
    a.getTaskCardAdapter().notifyDataSetChanged();
    TaskListContract.View localView = a;
    boolean bool;
    if (a.getTaskCardAdapter().getItemCount() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    localView.toggleNotice(Boolean.valueOf(bool));
  }
  
  public void start()
  {
    refreshList();
  }
  
  public void syncData()
  {
    if (Data.getUser().isOffline().booleanValue())
    {
      a.makeToast(2131689769, 0, new Object[0]);
      a.cancelRefresh();
      return;
    }
    Data.getTasksFromServer().observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.TaskListPresenter.4KM9nZ9TfinzDbDl5H38NlClCyI(this), new -..Lambda.TaskListPresenter.q5IGBdc1AaHqNU-75bINybZcO1c(this));
  }
}
