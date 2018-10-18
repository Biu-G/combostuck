package cn.edu.pku.pkurunner.RecordList;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v4.view.animation.LinearOutSlowInInterpolator;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.edu.pku.pkurunner.Data;
import cn.edu.pku.pkurunner.Model.Record;
import cn.edu.pku.pkurunner.Model.Record.RecordPlace;
import cn.edu.pku.pkurunner.Model.User;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;

public class RecordCardAdapter
  extends RecyclerView.Adapter<b>
  implements ItemTouchHelperCallback.b
{
  private static final SimpleDateFormat a = new SimpleDateFormat("MM-dd");
  private static final SimpleDateFormat b = new SimpleDateFormat("HH:mm");
  private ArrayList<Record> c;
  private Boolean d = Boolean.valueOf(false);
  private Boolean e = Boolean.valueOf(false);
  private RecordListContract.Presenter f;
  private c g;
  
  public RecordCardAdapter() {}
  
  private ArrayList<Record> a()
  {
    if (!d.booleanValue())
    {
      if (Data.isValid())
      {
        c = Data.getRecords();
        Collections.sort(c, -..Lambda.RecordCardAdapter.gJmJU-zL1hm4RG_tAJlU73OITJU.INSTANCE);
      }
      else
      {
        c = new ArrayList();
      }
      d = Boolean.valueOf(true);
    }
    return c;
  }
  
  private boolean b()
  {
    if (e.booleanValue())
    {
      e = Boolean.valueOf(false);
      return true;
    }
    return false;
  }
  
  public boolean canBeSwiped(int paramInt)
  {
    return ((Record)a().get(paramInt)).isUploaded() ^ true;
  }
  
  public int getItemCount()
  {
    return a().size();
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((Record)a().get(paramInt)).isUploaded() ^ true;
  }
  
  public void notifyDataInvalid()
  {
    d = Boolean.valueOf(false);
  }
  
  public void notifyFirstElementElevation()
  {
    e = Boolean.valueOf(true);
  }
  
  public void onBindViewHolder(b paramB, int paramInt)
  {
    Object localObject1 = (Record)a().get(paramInt);
    p.setText(g.getResource().getString(2131689804, new Object[] { Double.valueOf(((Record)localObject1).getDistance() / 1000.0D) }));
    Object localObject4 = ((Record)localObject1).getDate();
    Object localObject2 = a.format((Date)localObject4);
    Object localObject3 = b.format(new Date(((Date)localObject4).getTime() - ((Record)localObject1).getDuration() * 1000));
    localObject4 = b.format((Date)localObject4);
    r.setText((CharSequence)localObject2);
    q.setText(g.getResource().getString(2131689805, new Object[] { localObject3, localObject4 }));
    paramB.a(new -..Lambda.RecordCardAdapter.gMS3ZY47j_drYTSH0sLeUm1krLk(this, paramB));
    if ((paramB instanceof d))
    {
      u.setOnClickListener(new -..Lambda.RecordCardAdapter.RbMyWa-Zj0t_59cr6A7hFxCOw8s(this, paramB));
    }
    else
    {
      if (!((Record)localObject1).isVerified())
      {
        p.setPaintFlags(p.getPaintFlags() | 0x10);
        u.setImageResource(2131230872);
        u.getDrawable().setTint(g.getResource().getColor(2131099958));
      }
      else
      {
        p.setPaintFlags(p.getPaintFlags() & 0xFFFFFFEF);
        u.setImageResource(2131230870);
        u.getDrawable().setTint(g.getResource().getColor(2131099830));
      }
      if (Data.getUser().isOffline().booleanValue())
      {
        Data.getRecordPlaceHintForOfflineUser((Record)localObject1).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.RecordCardAdapter.-si97_09y1gJbVJqgXq0v24WEdI(paramB), -..Lambda.Jxp4LOjD5wh7hYvpBAWXzgH0LNY.INSTANCE);
      }
      else
      {
        localObject1 = ((Record)localObject1).getPlace();
        s.setText(Record.getPlaceString((Record.RecordPlace)localObject1));
        localObject2 = v.getDrawable();
        localObject3 = g.getResource();
        int i;
        if (localObject1 == Record.RecordPlace.UNKNOWN) {
          i = 2131099718;
        } else {
          i = 2131100032;
        }
        ((Drawable)localObject2).setTint(((Resources)localObject3).getColor(i));
      }
    }
    if ((paramInt == 0) && (b())) {
      paramB.v();
    }
  }
  
  public b onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return new d(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131492972, paramViewGroup, false));
    }
    return new b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131492973, paramViewGroup, false));
  }
  
  public void onItemSwiped(int paramInt)
  {
    f.deleteRecord(((Record)a().get(paramInt)).getId(), paramInt);
  }
  
  public void setPresenter(RecordListContract.Presenter paramPresenter, c paramC)
  {
    if (paramPresenter != null) {
      f = paramPresenter;
    }
    g = paramC;
  }
  
  static abstract interface a
  {
    public abstract void onClick(View paramView);
  }
  
  static class b
    extends RecyclerView.ViewHolder
  {
    protected TextView p;
    protected TextView q;
    protected TextView r;
    protected TextView s;
    protected RecordCardAdapter.a t;
    protected ImageView u;
    protected ImageView v;
    protected CardView w;
    
    b(View paramView)
    {
      super();
      p = ((TextView)paramView.findViewById(2131296596));
      q = ((TextView)paramView.findViewById(2131296598));
      r = ((TextView)paramView.findViewById(2131296595));
      u = ((ImageView)paramView.findViewById(2131296594));
      w = ((CardView)paramView.findViewById(2131296604));
      s = ((TextView)paramView.findViewById(2131296597));
      v = ((ImageView)paramView.findViewById(2131296593));
      paramView.setOnClickListener(new -..Lambda.RecordCardAdapter.b.Ep9SoLeqd-5mRuOD47g4F_FODIc(this));
    }
    
    void a(RecordCardAdapter.a paramA)
    {
      t = paramA;
    }
    
    void v()
    {
      float f1 = w.getCardElevation();
      Object localObject = w;
      float f2 = 4.0F * f1;
      localObject = ObjectAnimator.ofFloat(localObject, "cardElevation", new float[] { f1, f2 });
      ((ObjectAnimator)localObject).setInterpolator(new LinearOutSlowInInterpolator());
      ((ObjectAnimator)localObject).setDuration(250L);
      ((ObjectAnimator)localObject).setStartDelay(1000L);
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(w, "cardElevation", new float[] { f2, f1 });
      localObjectAnimator.setInterpolator(new FastOutSlowInInterpolator());
      localObjectAnimator.setDuration(250L);
      localObjectAnimator.setStartDelay(1000L);
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.playSequentially(new Animator[] { localObject, localObjectAnimator });
      localAnimatorSet.start();
    }
    
    public View w()
    {
      return p;
    }
    
    public View x()
    {
      return r;
    }
    
    public View y()
    {
      return u;
    }
  }
  
  static abstract interface c
  {
    public abstract Resources getResource();
  }
  
  static class d
    extends RecordCardAdapter.b
  {
    d(View paramView)
    {
      super();
    }
  }
}
