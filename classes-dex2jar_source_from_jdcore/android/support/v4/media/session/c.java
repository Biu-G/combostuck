package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.media.session.PlaybackState.Builder;
import android.media.session.PlaybackState.CustomAction;
import android.media.session.PlaybackState.CustomAction.Builder;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import java.util.Iterator;
import java.util.List;

@RequiresApi(21)
class c
{
  public static int a(Object paramObject)
  {
    return ((PlaybackState)paramObject).getState();
  }
  
  public static Object a(int paramInt, long paramLong1, long paramLong2, float paramFloat, long paramLong3, CharSequence paramCharSequence, long paramLong4, List<Object> paramList, long paramLong5)
  {
    PlaybackState.Builder localBuilder = new PlaybackState.Builder();
    localBuilder.setState(paramInt, paramLong1, paramFloat, paramLong4);
    localBuilder.setBufferedPosition(paramLong2);
    localBuilder.setActions(paramLong3);
    localBuilder.setErrorMessage(paramCharSequence);
    paramCharSequence = paramList.iterator();
    while (paramCharSequence.hasNext()) {
      localBuilder.addCustomAction((PlaybackState.CustomAction)paramCharSequence.next());
    }
    localBuilder.setActiveQueueItemId(paramLong5);
    return localBuilder.build();
  }
  
  public static long b(Object paramObject)
  {
    return ((PlaybackState)paramObject).getPosition();
  }
  
  public static long c(Object paramObject)
  {
    return ((PlaybackState)paramObject).getBufferedPosition();
  }
  
  public static float d(Object paramObject)
  {
    return ((PlaybackState)paramObject).getPlaybackSpeed();
  }
  
  public static long e(Object paramObject)
  {
    return ((PlaybackState)paramObject).getActions();
  }
  
  public static CharSequence f(Object paramObject)
  {
    return ((PlaybackState)paramObject).getErrorMessage();
  }
  
  public static long g(Object paramObject)
  {
    return ((PlaybackState)paramObject).getLastPositionUpdateTime();
  }
  
  public static List<Object> h(Object paramObject)
  {
    return ((PlaybackState)paramObject).getCustomActions();
  }
  
  public static long i(Object paramObject)
  {
    return ((PlaybackState)paramObject).getActiveQueueItemId();
  }
  
  static final class a
  {
    public static Object a(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle)
    {
      paramString = new PlaybackState.CustomAction.Builder(paramString, paramCharSequence, paramInt);
      paramString.setExtras(paramBundle);
      return paramString.build();
    }
    
    public static String a(Object paramObject)
    {
      return ((PlaybackState.CustomAction)paramObject).getAction();
    }
    
    public static CharSequence b(Object paramObject)
    {
      return ((PlaybackState.CustomAction)paramObject).getName();
    }
    
    public static int c(Object paramObject)
    {
      return ((PlaybackState.CustomAction)paramObject).getIcon();
    }
    
    public static Bundle d(Object paramObject)
    {
      return ((PlaybackState.CustomAction)paramObject).getExtras();
    }
  }
}
