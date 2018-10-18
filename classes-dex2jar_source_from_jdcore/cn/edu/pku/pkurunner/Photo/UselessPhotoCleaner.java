package cn.edu.pku.pkurunner.Photo;

import cn.edu.pku.pkurunner.Data;
import cn.edu.pku.pkurunner.Model.Record;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.xutils.common.util.LogUtil;

public abstract class UselessPhotoCleaner
{
  public UselessPhotoCleaner() {}
  
  public static void cleanAllUnused(File paramFile)
  {
    Object localObject1 = PhotoFile.getPhotoDir(paramFile);
    boolean bool = ((File)localObject1).exists();
    int j = 0;
    int k;
    int i;
    if ((bool) && (((File)localObject1).isDirectory()))
    {
      localObject1 = ((File)localObject1).listFiles();
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(localObject1.length);
      ((StringBuilder)localObject2).append(" photos found.");
      LogUtil.d(((StringBuilder)localObject2).toString());
      k = localObject1.length;
      i = 0;
      while (i < k)
      {
        localObject1[i].delete();
        i += 1;
      }
    }
    localObject1 = new HashSet();
    Object localObject2 = Data.getRecords().iterator();
    Object localObject3;
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Record)((Iterator)localObject2).next();
      if (!((Record)localObject3).isUploaded()) {
        ((Set)localObject1).add(((Record)localObject3).getPhotoName());
      }
    }
    localObject2 = Data.getLastUsedPhoto();
    if (!"".equals(localObject2)) {
      ((Set)localObject1).add(localObject2);
    }
    paramFile = PhotoFile.getCompressedPhotoDir(paramFile);
    if ((paramFile.exists()) && (paramFile.isDirectory()))
    {
      paramFile = paramFile.listFiles();
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(paramFile.length);
      ((StringBuilder)localObject2).append(" compressed photos found.");
      LogUtil.d(((StringBuilder)localObject2).toString());
      k = paramFile.length;
      i = j;
      while (i < k)
      {
        localObject2 = paramFile[i];
        if (!((Set)localObject1).contains(((File)localObject2).getName()))
        {
          localObject3 = new StringBuilder();
          ((StringBuilder)localObject3).append("ready to delete ");
          ((StringBuilder)localObject3).append(((File)localObject2).getName());
          LogUtil.d(((StringBuilder)localObject3).toString());
          ((File)localObject2).delete();
        }
        i += 1;
      }
    }
  }
}
