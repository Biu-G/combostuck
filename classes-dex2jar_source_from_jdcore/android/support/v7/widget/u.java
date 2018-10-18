package android.support.v7.widget;

import android.view.View;

class u
{
  boolean a = true;
  int b;
  int c;
  int d;
  int e;
  int f = 0;
  int g = 0;
  boolean h;
  boolean i;
  
  u() {}
  
  View a(RecyclerView.Recycler paramRecycler)
  {
    paramRecycler = paramRecycler.getViewForPosition(c);
    c += d;
    return paramRecycler;
  }
  
  boolean a(RecyclerView.State paramState)
  {
    return (c >= 0) && (c < paramState.getItemCount());
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LayoutState{mAvailable=");
    localStringBuilder.append(b);
    localStringBuilder.append(", mCurrentPosition=");
    localStringBuilder.append(c);
    localStringBuilder.append(", mItemDirection=");
    localStringBuilder.append(d);
    localStringBuilder.append(", mLayoutDirection=");
    localStringBuilder.append(e);
    localStringBuilder.append(", mStartLine=");
    localStringBuilder.append(f);
    localStringBuilder.append(", mEndLine=");
    localStringBuilder.append(g);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}
