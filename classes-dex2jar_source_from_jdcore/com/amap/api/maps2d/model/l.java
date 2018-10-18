package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class l
  implements Parcelable.Creator<VisibleRegion>
{
  l() {}
  
  static void a(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(paramVisibleRegion.a());
    paramParcel.writeParcelable(nearLeft, paramInt);
    paramParcel.writeParcelable(nearRight, paramInt);
    paramParcel.writeParcelable(farLeft, paramInt);
    paramParcel.writeParcelable(farRight, paramInt);
    paramParcel.writeParcelable(latLngBounds, paramInt);
  }
  
  /* Error */
  public VisibleRegion a(Parcel paramParcel)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 52	android/os/Parcel:readInt	()I
    //   4: istore_2
    //   5: aload_1
    //   6: ldc 54
    //   8: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   11: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   14: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   17: astore_3
    //   18: aload_1
    //   19: ldc 54
    //   21: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   24: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   27: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   30: astore 4
    //   32: aload_1
    //   33: ldc 54
    //   35: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   38: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   41: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   44: astore 5
    //   46: aload_1
    //   47: ldc 54
    //   49: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   52: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   55: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   58: astore 6
    //   60: aload_1
    //   61: ldc 66
    //   63: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   66: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   69: checkcast 66	com/amap/api/maps2d/model/LatLngBounds
    //   72: astore_1
    //   73: aload_1
    //   74: astore 7
    //   76: goto +71 -> 147
    //   79: astore 7
    //   81: aload 6
    //   83: astore_1
    //   84: goto +48 -> 132
    //   87: astore 7
    //   89: aconst_null
    //   90: astore_1
    //   91: goto +41 -> 132
    //   94: astore 7
    //   96: aconst_null
    //   97: astore_1
    //   98: aload_3
    //   99: astore 6
    //   101: aload_1
    //   102: astore_3
    //   103: goto +21 -> 124
    //   106: astore 7
    //   108: aload_3
    //   109: astore 6
    //   111: goto +8 -> 119
    //   114: astore 7
    //   116: aconst_null
    //   117: astore 6
    //   119: aconst_null
    //   120: astore 4
    //   122: aconst_null
    //   123: astore_3
    //   124: aload_3
    //   125: astore_1
    //   126: aload_3
    //   127: astore 5
    //   129: aload 6
    //   131: astore_3
    //   132: aload 7
    //   134: ldc 68
    //   136: ldc 70
    //   138: invokestatic 75	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   141: aconst_null
    //   142: astore 7
    //   144: aload_1
    //   145: astore 6
    //   147: new 16	com/amap/api/maps2d/model/VisibleRegion
    //   150: dup
    //   151: iload_2
    //   152: aload_3
    //   153: aload 4
    //   155: aload 5
    //   157: aload 6
    //   159: aload 7
    //   161: invokespecial 78	com/amap/api/maps2d/model/VisibleRegion:<init>	(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V
    //   164: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	l
    //   0	165	1	paramParcel	Parcel
    //   4	148	2	i	int
    //   17	136	3	localObject1	Object
    //   30	124	4	localLatLng	LatLng
    //   44	112	5	localObject2	Object
    //   58	100	6	localObject3	Object
    //   74	1	7	localParcel	Parcel
    //   79	1	7	localBadParcelableException1	android.os.BadParcelableException
    //   87	1	7	localBadParcelableException2	android.os.BadParcelableException
    //   94	1	7	localBadParcelableException3	android.os.BadParcelableException
    //   106	1	7	localBadParcelableException4	android.os.BadParcelableException
    //   114	19	7	localBadParcelableException5	android.os.BadParcelableException
    //   142	18	7	localLatLngBounds	LatLngBounds
    // Exception table:
    //   from	to	target	type
    //   60	73	79	android/os/BadParcelableException
    //   46	60	87	android/os/BadParcelableException
    //   32	46	94	android/os/BadParcelableException
    //   18	32	106	android/os/BadParcelableException
    //   5	18	114	android/os/BadParcelableException
  }
  
  public VisibleRegion[] a(int paramInt)
  {
    return new VisibleRegion[paramInt];
  }
}
