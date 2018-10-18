package android.support.constraint.solver.widgets;

import java.util.ArrayList;

public class ChainHead
{
  private int a;
  private boolean b = false;
  private boolean c;
  protected ConstraintWidget mFirst;
  protected ConstraintWidget mFirstMatchConstraintWidget;
  protected ConstraintWidget mFirstVisibleWidget;
  protected boolean mHasComplexMatchWeights;
  protected boolean mHasDefinedWeights;
  protected boolean mHasUndefinedWeights;
  protected ConstraintWidget mHead;
  protected ConstraintWidget mLast;
  protected ConstraintWidget mLastMatchConstraintWidget;
  protected ConstraintWidget mLastVisibleWidget;
  protected float mTotalWeight = 0.0F;
  protected ArrayList<ConstraintWidget> mWeightedMatchConstraintsWidgets;
  protected int mWidgetsCount;
  protected int mWidgetsMatchCount;
  
  public ChainHead(ConstraintWidget paramConstraintWidget, int paramInt, boolean paramBoolean)
  {
    mFirst = paramConstraintWidget;
    a = paramInt;
    b = paramBoolean;
  }
  
  private void a()
  {
    int j = a * 2;
    Object localObject2 = mFirst;
    Object localObject1 = mFirst;
    Object localObject3 = mFirst;
    boolean bool2 = false;
    int i = 0;
    while (i == 0)
    {
      mWidgetsCount += 1;
      Object localObject4 = mNextChainWidget;
      int k = a;
      localObject3 = null;
      localObject4[k] = null;
      mListNextMatchConstraintsWidget[a] = null;
      if (((ConstraintWidget)localObject1).getVisibility() != 8)
      {
        if (mFirstVisibleWidget == null) {
          mFirstVisibleWidget = ((ConstraintWidget)localObject1);
        }
        mLastVisibleWidget = ((ConstraintWidget)localObject1);
        if ((mListDimensionBehaviors[a] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && ((e[a] == 0) || (e[a] == 3) || (e[a] == 2)))
        {
          mWidgetsMatchCount += 1;
          float f = P[a];
          if (f > 0.0F) {
            mTotalWeight += P[a];
          }
          if (a((ConstraintWidget)localObject1, a))
          {
            if (f < 0.0F) {
              mHasUndefinedWeights = true;
            } else {
              mHasDefinedWeights = true;
            }
            if (mWeightedMatchConstraintsWidgets == null) {
              mWeightedMatchConstraintsWidgets = new ArrayList();
            }
            mWeightedMatchConstraintsWidgets.add(localObject1);
          }
          if (mFirstMatchConstraintWidget == null) {
            mFirstMatchConstraintWidget = ((ConstraintWidget)localObject1);
          }
          if (mLastMatchConstraintWidget != null) {
            mLastMatchConstraintWidget.mListNextMatchConstraintsWidget[a] = localObject1;
          }
          mLastMatchConstraintWidget = ((ConstraintWidget)localObject1);
        }
      }
      if (localObject2 != localObject1) {
        mNextChainWidget[a] = localObject1;
      }
      localObject4 = mListAnchors[(j + 1)].c;
      localObject2 = localObject3;
      if (localObject4 != null)
      {
        localObject4 = a;
        localObject2 = localObject3;
        if (mListAnchors[j].c != null) {
          if (mListAnchors[j].c.a != localObject1) {
            localObject2 = localObject3;
          } else {
            localObject2 = localObject4;
          }
        }
      }
      if (localObject2 == null)
      {
        localObject2 = localObject1;
        i = 1;
      }
      localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
    mLast = ((ConstraintWidget)localObject1);
    if ((a == 0) && (b)) {
      mHead = mLast;
    } else {
      mHead = mFirst;
    }
    boolean bool1 = bool2;
    if (mHasDefinedWeights)
    {
      bool1 = bool2;
      if (mHasUndefinedWeights) {
        bool1 = true;
      }
    }
    mHasComplexMatchWeights = bool1;
  }
  
  private static boolean a(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    return (paramConstraintWidget.getVisibility() != 8) && (mListDimensionBehaviors[paramInt] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && ((e[paramInt] == 0) || (e[paramInt] == 3));
  }
  
  public void define()
  {
    if (!c) {
      a();
    }
    c = true;
  }
  
  public ConstraintWidget getFirst()
  {
    return mFirst;
  }
  
  public ConstraintWidget getFirstMatchConstraintWidget()
  {
    return mFirstMatchConstraintWidget;
  }
  
  public ConstraintWidget getFirstVisibleWidget()
  {
    return mFirstVisibleWidget;
  }
  
  public ConstraintWidget getHead()
  {
    return mHead;
  }
  
  public ConstraintWidget getLast()
  {
    return mLast;
  }
  
  public ConstraintWidget getLastMatchConstraintWidget()
  {
    return mLastMatchConstraintWidget;
  }
  
  public ConstraintWidget getLastVisibleWidget()
  {
    return mLastVisibleWidget;
  }
  
  public float getTotalWeight()
  {
    return mTotalWeight;
  }
}
