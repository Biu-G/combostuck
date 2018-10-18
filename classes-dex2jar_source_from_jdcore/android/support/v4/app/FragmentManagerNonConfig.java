package android.support.v4.app;

import android.arch.lifecycle.ViewModelStore;
import java.util.List;

public class FragmentManagerNonConfig
{
  private final List<Fragment> a;
  private final List<FragmentManagerNonConfig> b;
  private final List<ViewModelStore> c;
  
  FragmentManagerNonConfig(List<Fragment> paramList, List<FragmentManagerNonConfig> paramList1, List<ViewModelStore> paramList2)
  {
    a = paramList;
    b = paramList1;
    c = paramList2;
  }
  
  List<Fragment> a()
  {
    return a;
  }
  
  List<FragmentManagerNonConfig> b()
  {
    return b;
  }
  
  List<ViewModelStore> c()
  {
    return c;
  }
}
