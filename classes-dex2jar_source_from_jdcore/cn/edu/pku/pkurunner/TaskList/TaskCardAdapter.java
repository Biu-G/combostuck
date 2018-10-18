package cn.edu.pku.pkurunner.TaskList;

import android.support.annotation.LayoutRes;
import android.support.constraint.ConstraintLayout;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import cn.edu.pku.pkurunner.Data;
import cn.edu.pku.pkurunner.Model.Task;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public class TaskCardAdapter
  extends RecyclerView.Adapter<d>
{
  private ArrayList<Task> a;
  private Boolean b = Boolean.valueOf(false);
  private TaskListContract.View c;
  private TaskListContract.Presenter d;
  private b e;
  
  public TaskCardAdapter() {}
  
  @LayoutRes
  private int a(int paramInt)
  {
    if (paramInt != 20180420) {
      return 2131492978;
    }
    return 2131492979;
  }
  
  private d a(View paramView, int paramInt)
  {
    if (paramInt != 20180420) {
      return new d(paramView);
    }
    return new c(paramView);
  }
  
  private ArrayList<Task> a()
  {
    if (!b.booleanValue())
    {
      a = a(Data.getTasks(), -..Lambda.TaskCardAdapter.Wb4h2o8ADN_WN1BM704fE0CH62A.INSTANCE);
      Collections.sort(a, -..Lambda.TaskCardAdapter.AUoZuCnoXUPxeN7m7Sil3SJK6U0.INSTANCE);
      b = Boolean.valueOf(true);
    }
    return a;
  }
  
  private <T> ArrayList<T> a(ArrayList<T> paramArrayList, a<T> paramA)
  {
    ArrayList localArrayList = new ArrayList();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      Object localObject = paramArrayList.next();
      if (paramA.test(localObject)) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public int getItemCount()
  {
    return a().size();
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((Task)a().get(paramInt)).getActivityId();
  }
  
  public void notifyDataInvalid()
  {
    b = Boolean.valueOf(false);
  }
  
  public void onBindViewHolder(d paramD, int paramInt)
  {
    Task localTask = (Task)a().get(paramInt);
    TextView localTextView = r;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localTask.getId());
    localStringBuilder.append(localTask.getName());
    localTextView.setText(localStringBuilder.toString());
    s.setText(localTask.getDescription());
    paramD.a(new -..Lambda.TaskCardAdapter.lI872FYBXvRIOlIiRIMI92D8npk(this, localTask));
    u.setBadgeSeries("daily");
    switch (localTask.getStatus())
    {
    default: 
      break;
    case 2: 
      u.setStatus(true);
      break;
    case 1: 
      u.setStatus(false);
    }
    paramD.a(localTask, d);
  }
  
  public d onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    return a(LayoutInflater.from(paramViewGroup.getContext()).inflate(a(paramInt), paramViewGroup, false), paramInt);
  }
  
  public void setPresenter(TaskListContract.View paramView, TaskListContract.Presenter paramPresenter, b paramB)
  {
    c = paramView;
    d = paramPresenter;
    e = paramB;
  }
  
  static abstract interface a<T>
  {
    public abstract boolean test(T paramT);
  }
  
  static abstract interface b {}
  
  static class c
    extends TaskCardAdapter.d
  {
    Button p;
    Button q;
    
    c(View paramView)
    {
      super();
      p = ((Button)paramView.findViewById(2131296571));
      q = ((Button)paramView.findViewById(2131296570));
    }
    
    void a(Task paramTask, TaskListContract.Presenter paramPresenter)
    {
      p.setOnClickListener(new -..Lambda.TaskCardAdapter.c.ckdpsnL384u4-qUzPnaQ8L6jDhI(paramPresenter));
      q.setOnClickListener(new -..Lambda.TaskCardAdapter.c.IrdvLinCJnPXxjfeC3yiO8IoYhA(paramPresenter));
    }
  }
  
  static class d
    extends RecyclerView.ViewHolder
  {
    TextView r;
    TextView s;
    View.OnClickListener t;
    BadgeView u;
    ConstraintLayout v;
    
    d(View paramView)
    {
      super();
      r = ((TextView)paramView.findViewById(2131296603));
      s = ((TextView)paramView.findViewById(2131296602));
      u = ((BadgeView)paramView.findViewById(2131296601));
      v = ((ConstraintLayout)paramView.findViewById(2131296600));
      paramView.setOnClickListener(new -..Lambda.TaskCardAdapter.d.ZGVVPa6wkrObCpC4OyqcqGOCYEE(this));
    }
    
    void a(View.OnClickListener paramOnClickListener)
    {
      t = paramOnClickListener;
    }
    
    void a(Task paramTask, TaskListContract.Presenter paramPresenter) {}
  }
}
