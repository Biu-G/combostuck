package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.support.annotation.RestrictTo;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ResultReceiver
  implements Parcelable
{
  public static final Parcelable.Creator<ResultReceiver> CREATOR = new Parcelable.Creator()
  {
    public ResultReceiver a(Parcel paramAnonymousParcel)
    {
      return new ResultReceiver(paramAnonymousParcel);
    }
    
    public ResultReceiver[] a(int paramAnonymousInt)
    {
      return new ResultReceiver[paramAnonymousInt];
    }
  };
  final boolean a;
  final Handler b;
  IResultReceiver c;
  
  public ResultReceiver(Handler paramHandler)
  {
    a = true;
    b = paramHandler;
  }
  
  ResultReceiver(Parcel paramParcel)
  {
    a = false;
    b = null;
    c = IResultReceiver.Stub.asInterface(paramParcel.readStrongBinder());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle) {}
  
  public void send(int paramInt, Bundle paramBundle)
  {
    if (a)
    {
      if (b != null)
      {
        b.post(new b(paramInt, paramBundle));
        return;
      }
      onReceiveResult(paramInt, paramBundle);
      return;
    }
    if (c != null) {}
    try
    {
      c.send(paramInt, paramBundle);
      return;
    }
    catch (RemoteException paramBundle) {}
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    try
    {
      if (c == null) {
        c = new a();
      }
      paramParcel.writeStrongBinder(c.asBinder());
      return;
    }
    finally {}
  }
  
  class a
    extends IResultReceiver.Stub
  {
    a() {}
    
    public void send(int paramInt, Bundle paramBundle)
    {
      if (b != null)
      {
        b.post(new ResultReceiver.b(ResultReceiver.this, paramInt, paramBundle));
        return;
      }
      onReceiveResult(paramInt, paramBundle);
    }
  }
  
  class b
    implements Runnable
  {
    final int a;
    final Bundle b;
    
    b(int paramInt, Bundle paramBundle)
    {
      a = paramInt;
      b = paramBundle;
    }
    
    public void run()
    {
      onReceiveResult(a, b);
    }
  }
}
