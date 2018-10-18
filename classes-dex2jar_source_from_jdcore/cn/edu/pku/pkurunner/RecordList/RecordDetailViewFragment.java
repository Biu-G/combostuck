package cn.edu.pku.pkurunner.RecordList;

import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.constraint.Guideline;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetBehavior.BottomSheetCallback;
import android.support.design.widget.BottomSheetDialogFragment;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import cn.edu.pku.pkurunner.Data;
import cn.edu.pku.pkurunner.Exception.ServerException;
import cn.edu.pku.pkurunner.GlideApp;
import cn.edu.pku.pkurunner.GlideRequest;
import cn.edu.pku.pkurunner.GlideRequests;
import cn.edu.pku.pkurunner.Model.Point;
import cn.edu.pku.pkurunner.Model.Record;
import cn.edu.pku.pkurunner.Model.Record.RecordPlace;
import cn.edu.pku.pkurunner.Model.User;
import com.amap.api.maps2d.AMap;
import com.amap.api.maps2d.CameraUpdateFactory;
import com.amap.api.maps2d.MapView;
import com.amap.api.maps2d.UiSettings;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.PolylineOptions;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.xutils.common.util.LogUtil;

public class RecordDetailViewFragment
  extends BottomSheetDialogFragment
{
  private static SimpleDateFormat j = new SimpleDateFormat("MM-dd\nHH:mm");
  private final int A = 72;
  private final int B = 8;
  private MapView k;
  private TextView l;
  private TextView m;
  private TextView n;
  private TextView o;
  private TextView p;
  private TextView q;
  private TextView r;
  private TextView s;
  private ImageView t;
  private ImageView u;
  private AMap v;
  private Window w;
  private float x;
  private final int y = 200;
  private final int z = 112;
  
  public RecordDetailViewFragment() {}
  
  private double a(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    return (paramArrayOfDouble1[0] * paramArrayOfDouble2[0] + paramArrayOfDouble1[1] * paramArrayOfDouble2[1]) / (Math.hypot(paramArrayOfDouble1[0], paramArrayOfDouble1[1]) * Math.hypot(paramArrayOfDouble2[0], paramArrayOfDouble2[1]));
  }
  
  private float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return paramFloat2 + Math.min(Math.max(paramFloat1, 0.0F), 1.0F) * (paramFloat3 - paramFloat2);
  }
  
  private void a()
  {
    BottomSheetBehavior localBottomSheetBehavior = BottomSheetBehavior.from(w.findViewById(2131296332));
    x = getResourcesgetDisplayMetricsdensity;
    if (localBottomSheetBehavior != null) {
      localBottomSheetBehavior.setBottomSheetCallback(new BottomSheetBehavior.BottomSheetCallback()
      {
        public void onSlide(@NonNull View paramAnonymousView, float paramAnonymousFloat)
        {
          Guideline localGuideline1 = (Guideline)paramAnonymousView.findViewById(2131296383);
          Guideline localGuideline2 = (Guideline)paramAnonymousView.findViewById(2131296382);
          Guideline localGuideline3 = (Guideline)paramAnonymousView.findViewById(2131296381);
          Guideline localGuideline4 = (Guideline)paramAnonymousView.findViewById(2131296380);
          paramAnonymousView = (ImageView)paramAnonymousView.findViewById(2131296387);
          float f = RecordDetailViewFragment.a(RecordDetailViewFragment.this, paramAnonymousFloat, 200.0F, 72.0F);
          localGuideline1.setGuidelineBegin((int)(RecordDetailViewFragment.a(RecordDetailViewFragment.this) * f));
          localGuideline2.setGuidelineBegin((int)((56.0F + f) * RecordDetailViewFragment.a(RecordDetailViewFragment.this)));
          f += 112.0F;
          localGuideline3.setGuidelineBegin((int)(RecordDetailViewFragment.a(RecordDetailViewFragment.this) * f));
          localGuideline4.setGuidelineBegin((int)((f + 8.0F) * RecordDetailViewFragment.a(RecordDetailViewFragment.this)));
          paramAnonymousView.setTranslationY(RecordDetailViewFragment.a(RecordDetailViewFragment.this, paramAnonymousFloat, 0.0F, -200.0F) * RecordDetailViewFragment.a(RecordDetailViewFragment.this));
        }
        
        public void onStateChanged(@NonNull View paramAnonymousView, int paramAnonymousInt)
        {
          if (paramAnonymousInt != 1) {
            switch (paramAnonymousInt)
            {
            default: 
              
            case 5: 
              dismiss();
            }
          }
        }
      });
    }
  }
  
  private void a(Record paramRecord)
  {
    int i;
    if (Data.getUser().isOffline().booleanValue())
    {
      Data.getRecordPlaceHintForOfflineUser(paramRecord).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.RecordDetailViewFragment.41LoWwwnHyzEXTRyHPl_RNvVpkA(this), -..Lambda.Jxp4LOjD5wh7hYvpBAWXzgH0LNY.INSTANCE);
    }
    else
    {
      localObject = paramRecord.getPlace();
      String str = Record.getPlaceString((Record.RecordPlace)localObject);
      Drawable localDrawable = t.getDrawable();
      Resources localResources = getResources();
      if (localObject == Record.RecordPlace.UNKNOWN) {
        i = 2131099718;
      } else {
        i = 2131100032;
      }
      localDrawable.setTint(localResources.getColor(i));
      l.setText(str);
      q.setText(str);
    }
    m.setText(getString(2131689804, new Object[] { Double.valueOf(paramRecord.getDistance() / 1000.0D) }));
    if (Data.getUser().isOffline().booleanValue())
    {
      n.setText(2131689622);
      n.setTextColor(getResources().getColor(2131099959));
    }
    else if (!paramRecord.isUploaded())
    {
      n.setText(2131689624);
    }
    else if (!paramRecord.isVerified())
    {
      n.setText(getString(2131689625, new Object[] { ServerException.getLocalizedMessage(paramRecord.getInvalidReason()) }));
    }
    else
    {
      n.setText(2131689623);
      n.setTextColor(getResources().getColor(2131099830));
    }
    o.setText(j.format(paramRecord.getDate()));
    int i1 = (int)(paramRecord.getAccumulateBearing() / 6.283185307179586D);
    if (i1 == 0)
    {
      p.setText(2131689620);
    }
    else
    {
      localObject = p;
      if (i1 > 0) {
        i = 2131689617;
      } else {
        i = 2131689618;
      }
      ((TextView)localObject).setText(getString(2131689619, new Object[] { getString(i), Integer.valueOf(i1) }));
    }
    r.setText(getString(2131689626, new Object[] { Integer.valueOf(paramRecord.getStep()) }));
    s.setText(getString(2131689621, new Object[] { Double.valueOf(paramRecord.getDistance() * 1.0D / paramRecord.getDuration()) }));
    a(paramRecord.getTrack());
    Object localObject = paramRecord.getPhotoRemotePath();
    if ((localObject != null) && (!"".equals(localObject)))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("https://pkunewyouth.pku.edu.cn/");
      ((StringBuilder)localObject).append(paramRecord.getPhotoRemotePath());
      paramRecord = ((StringBuilder)localObject).toString();
      GlideApp.with(this).load(paramRecord).placeholder(2131099832).error(2131230866).centerCrop().diskCacheStrategy(DiskCacheStrategy.AUTOMATIC).transition(DrawableTransitionOptions.withCrossFade()).into(u);
      return;
    }
    u.setImageResource(2131230842);
    u.setScaleType(ImageView.ScaleType.CENTER_CROP);
  }
  
  private void a(ArrayList<Point> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() != 0))
    {
      paramArrayList = b(paramArrayList);
      double d3 = 90.0D;
      Object localObject = paramArrayList.iterator();
      double d4 = 0.0D;
      double d2 = 0.0D;
      double d1 = 180.0D;
      Point localPoint1;
      while (((Iterator)localObject).hasNext())
      {
        localPoint1 = (Point)((Iterator)localObject).next();
        double d8 = localPoint1.getLatitude();
        d5 = localPoint1.getLongitude();
        d6 = d4;
        if (d8 > d4) {
          d6 = d8;
        }
        double d7 = d3;
        if (d8 < d3) {
          d7 = d8;
        }
        d8 = d2;
        if (d5 > d2) {
          d8 = d5;
        }
        d3 = d7;
        d4 = d6;
        d2 = d8;
        if (d5 < d1)
        {
          d1 = d5;
          d3 = d7;
          d4 = d6;
          d2 = d8;
        }
      }
      double d6 = (d4 + d3) / 2.0D;
      double d5 = (d2 + d1) / 2.0D;
      int i = 1;
      for (;;)
      {
        localObject = this;
        if (i >= paramArrayList.size()) {
          break;
        }
        localPoint1 = (Point)paramArrayList.get(i - 1);
        Point localPoint2 = (Point)paramArrayList.get(i);
        if ((localPoint1.getStatus() == 2) && (localPoint2.getStatus() == 1))
        {
          v.addMarker(new MarkerOptions().position(localPoint1.toLatLng()).title(((RecordDetailViewFragment)localObject).getString(2131689628)));
          v.addMarker(new MarkerOptions().position(localPoint2.toLatLng()).title(((RecordDetailViewFragment)localObject).getString(2131689629)));
        }
        else
        {
          v.addPolyline(new PolylineOptions().add(new LatLng[] { localPoint1.toLatLng(), localPoint2.toLatLng() }).color(getResources().getColor(2131100004)));
        }
        i += 1;
      }
      d3 = Math.log(d4 - d3) / Math.log(2.0D);
      d1 = Math.log((d2 - d1) * Math.cos(3.141592653589793D * d6 / 180.0D)) / Math.log(2.0D);
      v.addMarker(new MarkerOptions().position(((Point)paramArrayList.get(0)).toLatLng()).title(getString(2131689630)));
      v.addMarker(new MarkerOptions().position(((Point)paramArrayList.get(paramArrayList.size() - 1)).toLatLng()).title(getString(2131689627)));
      v.moveCamera(CameraUpdateFactory.changeLatLng(new LatLng(d6, d5)));
      v.moveCamera(CameraUpdateFactory.zoomTo((float)Math.min(9.0D - d3, 9.0D - d1)));
      return;
    }
  }
  
  private ArrayList<Point> b(ArrayList<Point> paramArrayList)
  {
    Object localObject1 = new double[2];
    Object tmp5_4 = localObject1;
    tmp5_4[0] = 1.0D;
    Object tmp9_5 = tmp5_4;
    tmp9_5[1] = 0.0D;
    tmp9_5;
    ArrayList localArrayList = new ArrayList();
    a localA = new a(5);
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Point)localIterator.next();
      switch (((Point)localObject2).getStatus())
      {
      default: 
        break;
      case 2: 
        localArrayList.add(localObject2);
        localA.a();
        break;
      case 1: 
        localArrayList.add(localObject2);
        localA.a((Point)localObject2);
        break;
      case 0: 
        localA.a((Point)localObject2);
        localObject2 = localA.b();
        if (a((double[])localObject1, (double[])localObject2) < 0.94D)
        {
          localArrayList.add(localA.c());
          localObject1 = localObject2;
        }
        break;
      }
    }
    localArrayList.add(paramArrayList.get(paramArrayList.size() - 1));
    return localArrayList;
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = super.onCreateDialog(paramBundle);
    w = paramBundle.getWindow();
    return paramBundle;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2131492919, paramViewGroup, false);
    k = ((MapView)paramLayoutInflater.findViewById(2131296390));
    t = ((ImageView)paramLayoutInflater.findViewById(2131296379));
    l = ((TextView)paramLayoutInflater.findViewById(2131296395));
    m = ((TextView)paramLayoutInflater.findViewById(2131296392));
    n = ((TextView)paramLayoutInflater.findViewById(2131296397));
    o = ((TextView)paramLayoutInflater.findViewById(2131296391));
    p = ((TextView)paramLayoutInflater.findViewById(2131296393));
    q = ((TextView)paramLayoutInflater.findViewById(2131296394));
    r = ((TextView)paramLayoutInflater.findViewById(2131296398));
    s = ((TextView)paramLayoutInflater.findViewById(2131296396));
    u = ((ImageView)paramLayoutInflater.findViewById(2131296387));
    k.onCreate(paramBundle);
    v = k.getMap();
    v.getUiSettings().setMyLocationButtonEnabled(false);
    v.getUiSettings().setScaleControlsEnabled(false);
    v.getUiSettings().setZoomControlsEnabled(false);
    v.getUiSettings().setCompassEnabled(false);
    v.getUiSettings().setScrollGesturesEnabled(false);
    v.getUiSettings().setZoomGesturesEnabled(false);
    v.setMyLocationEnabled(false);
    a((Record)getArguments().getParcelable("record"));
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    k.onDestroy();
    k = null;
    v = null;
  }
  
  public void onPause()
  {
    super.onPause();
    k.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    k.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    k.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    a();
  }
  
  private static class a
  {
    private List<Point> a = new LinkedList();
    private int b;
    
    a(int paramInt)
    {
      b = paramInt;
    }
    
    void a()
    {
      a.clear();
    }
    
    void a(Point paramPoint)
    {
      if (a.size() > b) {
        a.remove(0);
      }
      a.add(paramPoint);
    }
    
    double[] b()
    {
      if (a.size() < 2) {
        return new double[] { Math.random(), Math.random() };
      }
      Point localPoint1 = (Point)a.get(0);
      Point localPoint2 = (Point)a.get(a.size() - 1);
      return new double[] { localPoint2.getLongitude() - localPoint1.getLongitude(), localPoint2.getLatitude() - localPoint1.getLatitude() };
    }
    
    Point c()
    {
      if (a.size() == 0) {
        LogUtil.e("Critical error in simplifying track!");
      }
      return (Point)a.get(0);
    }
  }
}
