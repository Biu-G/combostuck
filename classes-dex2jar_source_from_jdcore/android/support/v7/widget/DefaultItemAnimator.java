package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DefaultItemAnimator
  extends SimpleItemAnimator
{
  private static TimeInterpolator i;
  ArrayList<ArrayList<RecyclerView.ViewHolder>> a = new ArrayList();
  ArrayList<ArrayList<b>> b = new ArrayList();
  ArrayList<ArrayList<a>> c = new ArrayList();
  ArrayList<RecyclerView.ViewHolder> d = new ArrayList();
  ArrayList<RecyclerView.ViewHolder> e = new ArrayList();
  ArrayList<RecyclerView.ViewHolder> f = new ArrayList();
  ArrayList<RecyclerView.ViewHolder> g = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> j = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> k = new ArrayList();
  private ArrayList<b> l = new ArrayList();
  private ArrayList<a> m = new ArrayList();
  
  public DefaultItemAnimator() {}
  
  private void a(List<a> paramList, RecyclerView.ViewHolder paramViewHolder)
  {
    int n = paramList.size() - 1;
    while (n >= 0)
    {
      a localA = (a)paramList.get(n);
      if ((a(localA, paramViewHolder)) && (a == null) && (b == null)) {
        paramList.remove(localA);
      }
      n -= 1;
    }
  }
  
  private boolean a(a paramA, RecyclerView.ViewHolder paramViewHolder)
  {
    RecyclerView.ViewHolder localViewHolder = b;
    boolean bool = false;
    if (localViewHolder == paramViewHolder)
    {
      b = null;
    }
    else
    {
      if (a != paramViewHolder) {
        break label69;
      }
      a = null;
      bool = true;
    }
    itemView.setAlpha(1.0F);
    itemView.setTranslationX(0.0F);
    itemView.setTranslationY(0.0F);
    dispatchChangeFinished(paramViewHolder, bool);
    return true;
    label69:
    return false;
  }
  
  private void b(a paramA)
  {
    if (a != null) {
      a(paramA, a);
    }
    if (b != null) {
      a(paramA, b);
    }
  }
  
  private void c(final RecyclerView.ViewHolder paramViewHolder)
  {
    final View localView = itemView;
    final ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
    f.add(paramViewHolder);
    localViewPropertyAnimator.setDuration(getRemoveDuration()).alpha(0.0F).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        localViewPropertyAnimator.setListener(null);
        localView.setAlpha(1.0F);
        dispatchRemoveFinished(paramViewHolder);
        f.remove(paramViewHolder);
        a();
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        dispatchRemoveStarting(paramViewHolder);
      }
    }).start();
  }
  
  private void d(RecyclerView.ViewHolder paramViewHolder)
  {
    if (i == null) {
      i = new ValueAnimator().getInterpolator();
    }
    itemView.animate().setInterpolator(i);
    endAnimation(paramViewHolder);
  }
  
  void a()
  {
    if (!isRunning()) {
      dispatchAnimationsFinished();
    }
  }
  
  void a(final a paramA)
  {
    Object localObject1 = a;
    final View localView = null;
    if (localObject1 == null) {
      localObject1 = null;
    } else {
      localObject1 = itemView;
    }
    Object localObject2 = b;
    if (localObject2 != null) {
      localView = itemView;
    }
    if (localObject1 != null)
    {
      localObject2 = ((View)localObject1).animate().setDuration(getChangeDuration());
      g.add(a);
      ((ViewPropertyAnimator)localObject2).translationX(e - c);
      ((ViewPropertyAnimator)localObject2).translationY(f - d);
      ((ViewPropertyAnimator)localObject2).alpha(0.0F).setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          b.setListener(null);
          c.setAlpha(1.0F);
          c.setTranslationX(0.0F);
          c.setTranslationY(0.0F);
          dispatchChangeFinished(paramAa, true);
          g.remove(paramAa);
          a();
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          dispatchChangeStarting(paramAa, true);
        }
      }).start();
    }
    if (localView != null)
    {
      localObject1 = localView.animate();
      g.add(b);
      ((ViewPropertyAnimator)localObject1).translationX(0.0F).translationY(0.0F).setDuration(getChangeDuration()).alpha(1.0F).setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          b.setListener(null);
          localView.setAlpha(1.0F);
          localView.setTranslationX(0.0F);
          localView.setTranslationY(0.0F);
          dispatchChangeFinished(paramAb, false);
          g.remove(paramAb);
          a();
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          dispatchChangeStarting(paramAb, false);
        }
      }).start();
    }
  }
  
  void a(final RecyclerView.ViewHolder paramViewHolder)
  {
    final View localView = itemView;
    final ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
    d.add(paramViewHolder);
    localViewPropertyAnimator.alpha(1.0F).setDuration(getAddDuration()).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        localView.setAlpha(1.0F);
      }
      
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        localViewPropertyAnimator.setListener(null);
        dispatchAddFinished(paramViewHolder);
        d.remove(paramViewHolder);
        a();
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        dispatchAddStarting(paramViewHolder);
      }
    }).start();
  }
  
  void a(final RecyclerView.ViewHolder paramViewHolder, final int paramInt1, final int paramInt2, int paramInt3, int paramInt4)
  {
    final View localView = itemView;
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if (paramInt1 != 0) {
      localView.animate().translationX(0.0F);
    }
    if (paramInt2 != 0) {
      localView.animate().translationY(0.0F);
    }
    final ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
    e.add(paramViewHolder);
    localViewPropertyAnimator.setDuration(getMoveDuration()).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        if (paramInt1 != 0) {
          localView.setTranslationX(0.0F);
        }
        if (paramInt2 != 0) {
          localView.setTranslationY(0.0F);
        }
      }
      
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        localViewPropertyAnimator.setListener(null);
        dispatchMoveFinished(paramViewHolder);
        e.remove(paramViewHolder);
        a();
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        dispatchMoveStarting(paramViewHolder);
      }
    }).start();
  }
  
  void a(List<RecyclerView.ViewHolder> paramList)
  {
    int n = paramList.size() - 1;
    while (n >= 0)
    {
      getitemView.animate().cancel();
      n -= 1;
    }
  }
  
  public boolean animateAdd(RecyclerView.ViewHolder paramViewHolder)
  {
    d(paramViewHolder);
    itemView.setAlpha(0.0F);
    k.add(paramViewHolder);
    return true;
  }
  
  public boolean animateChange(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramViewHolder1 == paramViewHolder2) {
      return animateMove(paramViewHolder1, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    float f1 = itemView.getTranslationX();
    float f2 = itemView.getTranslationY();
    float f3 = itemView.getAlpha();
    d(paramViewHolder1);
    int n = (int)(paramInt3 - paramInt1 - f1);
    int i1 = (int)(paramInt4 - paramInt2 - f2);
    itemView.setTranslationX(f1);
    itemView.setTranslationY(f2);
    itemView.setAlpha(f3);
    if (paramViewHolder2 != null)
    {
      d(paramViewHolder2);
      itemView.setTranslationX(-n);
      itemView.setTranslationY(-i1);
      itemView.setAlpha(0.0F);
    }
    m.add(new a(paramViewHolder1, paramViewHolder2, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public boolean animateMove(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = itemView;
    paramInt1 += (int)itemView.getTranslationX();
    paramInt2 += (int)itemView.getTranslationY();
    d(paramViewHolder);
    int n = paramInt3 - paramInt1;
    int i1 = paramInt4 - paramInt2;
    if ((n == 0) && (i1 == 0))
    {
      dispatchMoveFinished(paramViewHolder);
      return false;
    }
    if (n != 0) {
      localView.setTranslationX(-n);
    }
    if (i1 != 0) {
      localView.setTranslationY(-i1);
    }
    l.add(new b(paramViewHolder, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public boolean animateRemove(RecyclerView.ViewHolder paramViewHolder)
  {
    d(paramViewHolder);
    j.add(paramViewHolder);
    return true;
  }
  
  public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull List<Object> paramList)
  {
    return (!paramList.isEmpty()) || (super.canReuseUpdatedViewHolder(paramViewHolder, paramList));
  }
  
  public void endAnimation(RecyclerView.ViewHolder paramViewHolder)
  {
    View localView = itemView;
    localView.animate().cancel();
    int n = l.size() - 1;
    while (n >= 0)
    {
      if (l.get(n)).a == paramViewHolder)
      {
        localView.setTranslationY(0.0F);
        localView.setTranslationX(0.0F);
        dispatchMoveFinished(paramViewHolder);
        l.remove(n);
      }
      n -= 1;
    }
    a(m, paramViewHolder);
    if (j.remove(paramViewHolder))
    {
      localView.setAlpha(1.0F);
      dispatchRemoveFinished(paramViewHolder);
    }
    if (k.remove(paramViewHolder))
    {
      localView.setAlpha(1.0F);
      dispatchAddFinished(paramViewHolder);
    }
    n = c.size() - 1;
    ArrayList localArrayList;
    while (n >= 0)
    {
      localArrayList = (ArrayList)c.get(n);
      a(localArrayList, paramViewHolder);
      if (localArrayList.isEmpty()) {
        c.remove(n);
      }
      n -= 1;
    }
    n = b.size() - 1;
    while (n >= 0)
    {
      localArrayList = (ArrayList)b.get(n);
      int i1 = localArrayList.size() - 1;
      while (i1 >= 0)
      {
        if (geta == paramViewHolder)
        {
          localView.setTranslationY(0.0F);
          localView.setTranslationX(0.0F);
          dispatchMoveFinished(paramViewHolder);
          localArrayList.remove(i1);
          if (!localArrayList.isEmpty()) {
            break;
          }
          b.remove(n);
          break;
        }
        i1 -= 1;
      }
      n -= 1;
    }
    n = a.size() - 1;
    while (n >= 0)
    {
      localArrayList = (ArrayList)a.get(n);
      if (localArrayList.remove(paramViewHolder))
      {
        localView.setAlpha(1.0F);
        dispatchAddFinished(paramViewHolder);
        if (localArrayList.isEmpty()) {
          a.remove(n);
        }
      }
      n -= 1;
    }
    f.remove(paramViewHolder);
    d.remove(paramViewHolder);
    g.remove(paramViewHolder);
    e.remove(paramViewHolder);
    a();
  }
  
  public void endAnimations()
  {
    int n = l.size() - 1;
    Object localObject1;
    Object localObject2;
    while (n >= 0)
    {
      localObject1 = (b)l.get(n);
      localObject2 = a.itemView;
      ((View)localObject2).setTranslationY(0.0F);
      ((View)localObject2).setTranslationX(0.0F);
      dispatchMoveFinished(a);
      l.remove(n);
      n -= 1;
    }
    n = j.size() - 1;
    while (n >= 0)
    {
      dispatchRemoveFinished((RecyclerView.ViewHolder)j.get(n));
      j.remove(n);
      n -= 1;
    }
    n = k.size() - 1;
    while (n >= 0)
    {
      localObject1 = (RecyclerView.ViewHolder)k.get(n);
      itemView.setAlpha(1.0F);
      dispatchAddFinished((RecyclerView.ViewHolder)localObject1);
      k.remove(n);
      n -= 1;
    }
    n = m.size() - 1;
    while (n >= 0)
    {
      b((a)m.get(n));
      n -= 1;
    }
    m.clear();
    if (!isRunning()) {
      return;
    }
    n = b.size() - 1;
    int i1;
    while (n >= 0)
    {
      localObject1 = (ArrayList)b.get(n);
      i1 = ((ArrayList)localObject1).size() - 1;
      while (i1 >= 0)
      {
        localObject2 = (b)((ArrayList)localObject1).get(i1);
        View localView = a.itemView;
        localView.setTranslationY(0.0F);
        localView.setTranslationX(0.0F);
        dispatchMoveFinished(a);
        ((ArrayList)localObject1).remove(i1);
        if (((ArrayList)localObject1).isEmpty()) {
          b.remove(localObject1);
        }
        i1 -= 1;
      }
      n -= 1;
    }
    n = a.size() - 1;
    while (n >= 0)
    {
      localObject1 = (ArrayList)a.get(n);
      i1 = ((ArrayList)localObject1).size() - 1;
      while (i1 >= 0)
      {
        localObject2 = (RecyclerView.ViewHolder)((ArrayList)localObject1).get(i1);
        itemView.setAlpha(1.0F);
        dispatchAddFinished((RecyclerView.ViewHolder)localObject2);
        ((ArrayList)localObject1).remove(i1);
        if (((ArrayList)localObject1).isEmpty()) {
          a.remove(localObject1);
        }
        i1 -= 1;
      }
      n -= 1;
    }
    n = c.size() - 1;
    while (n >= 0)
    {
      localObject1 = (ArrayList)c.get(n);
      i1 = ((ArrayList)localObject1).size() - 1;
      while (i1 >= 0)
      {
        b((a)((ArrayList)localObject1).get(i1));
        if (((ArrayList)localObject1).isEmpty()) {
          c.remove(localObject1);
        }
        i1 -= 1;
      }
      n -= 1;
    }
    a(f);
    a(e);
    a(d);
    a(g);
    dispatchAnimationsFinished();
  }
  
  public boolean isRunning()
  {
    return (!k.isEmpty()) || (!m.isEmpty()) || (!l.isEmpty()) || (!j.isEmpty()) || (!e.isEmpty()) || (!f.isEmpty()) || (!d.isEmpty()) || (!g.isEmpty()) || (!b.isEmpty()) || (!a.isEmpty()) || (!c.isEmpty());
  }
  
  public void runPendingAnimations()
  {
    boolean bool1 = j.isEmpty() ^ true;
    boolean bool2 = l.isEmpty() ^ true;
    boolean bool3 = m.isEmpty() ^ true;
    boolean bool4 = k.isEmpty() ^ true;
    if ((!bool1) && (!bool2) && (!bool4) && (!bool3)) {
      return;
    }
    Object localObject1 = j.iterator();
    while (((Iterator)localObject1).hasNext()) {
      c((RecyclerView.ViewHolder)((Iterator)localObject1).next());
    }
    j.clear();
    Object localObject2;
    if (bool2)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(l);
      b.add(localObject1);
      l.clear();
      localObject2 = new Runnable()
      {
        public void run()
        {
          Iterator localIterator = a.iterator();
          while (localIterator.hasNext())
          {
            DefaultItemAnimator.b localB = (DefaultItemAnimator.b)localIterator.next();
            a(a, b, c, d, e);
          }
          a.clear();
          b.remove(a);
        }
      };
      if (bool1) {
        ViewCompat.postOnAnimationDelayed(get0a.itemView, (Runnable)localObject2, getRemoveDuration());
      } else {
        ((Runnable)localObject2).run();
      }
    }
    if (bool3)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(m);
      c.add(localObject1);
      m.clear();
      localObject2 = new Runnable()
      {
        public void run()
        {
          Iterator localIterator = a.iterator();
          while (localIterator.hasNext())
          {
            DefaultItemAnimator.a localA = (DefaultItemAnimator.a)localIterator.next();
            a(localA);
          }
          a.clear();
          c.remove(a);
        }
      };
      if (bool1) {
        ViewCompat.postOnAnimationDelayed(get0a.itemView, (Runnable)localObject2, getRemoveDuration());
      } else {
        ((Runnable)localObject2).run();
      }
    }
    if (bool4)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(k);
      a.add(localObject1);
      k.clear();
      localObject2 = new Runnable()
      {
        public void run()
        {
          Iterator localIterator = a.iterator();
          while (localIterator.hasNext())
          {
            RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)localIterator.next();
            a(localViewHolder);
          }
          a.clear();
          a.remove(a);
        }
      };
      if ((!bool1) && (!bool2) && (!bool3))
      {
        ((Runnable)localObject2).run();
        return;
      }
      long l3 = 0L;
      long l1;
      if (bool1) {
        l1 = getRemoveDuration();
      } else {
        l1 = 0L;
      }
      if (bool2) {
        l2 = getMoveDuration();
      } else {
        l2 = 0L;
      }
      if (bool3) {
        l3 = getChangeDuration();
      }
      long l2 = Math.max(l2, l3);
      ViewCompat.postOnAnimationDelayed(get0itemView, (Runnable)localObject2, l1 + l2);
    }
  }
  
  private static class a
  {
    public RecyclerView.ViewHolder a;
    public RecyclerView.ViewHolder b;
    public int c;
    public int d;
    public int e;
    public int f;
    
    private a(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2)
    {
      a = paramViewHolder1;
      b = paramViewHolder2;
    }
    
    a(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this(paramViewHolder1, paramViewHolder2);
      c = paramInt1;
      d = paramInt2;
      e = paramInt3;
      f = paramInt4;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ChangeInfo{oldHolder=");
      localStringBuilder.append(a);
      localStringBuilder.append(", newHolder=");
      localStringBuilder.append(b);
      localStringBuilder.append(", fromX=");
      localStringBuilder.append(c);
      localStringBuilder.append(", fromY=");
      localStringBuilder.append(d);
      localStringBuilder.append(", toX=");
      localStringBuilder.append(e);
      localStringBuilder.append(", toY=");
      localStringBuilder.append(f);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  private static class b
  {
    public RecyclerView.ViewHolder a;
    public int b;
    public int c;
    public int d;
    public int e;
    
    b(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a = paramViewHolder;
      b = paramInt1;
      c = paramInt2;
      d = paramInt3;
      e = paramInt4;
    }
  }
}
