package cn.edu.pku.pkurunner.Utils;

import android.util.Base64;
import io.reactivex.Observable;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class SerializeHelper
{
  public SerializeHelper() {}
  
  public static String objectToString(Serializable paramSerializable)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
      localObjectOutputStream.writeObject(paramSerializable);
      localObjectOutputStream.close();
      paramSerializable = Base64.encodeToString(localByteArrayOutputStream.toByteArray(), 0);
      return paramSerializable;
    }
    catch (IOException paramSerializable)
    {
      paramSerializable.printStackTrace();
    }
    return null;
  }
  
  public static Observable<Serializable> stringToObject(String paramString)
  {
    paramString = Base64.decode(paramString, 0);
    try
    {
      paramString = Observable.just((Serializable)new ObjectInputStream(new ByteArrayInputStream(paramString)).readObject());
      return paramString;
    }
    catch (IOException|ClassNotFoundException|ClassCastException paramString) {}
    return Observable.error(paramString);
  }
}
