package cn.edu.pku.pkurunner.RecordList;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.Pair;
import cn.edu.pku.pkurunner.Data;
import cn.edu.pku.pkurunner.Model.Record;
import cn.edu.pku.pkurunner.Model.User;
import cn.edu.pku.pkurunner.Photo.PhotoFile;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class RecordListPresenter
  implements RecordListContract.Presenter
{
  private RecordListContract.View a;
  private Disposable b;
  
  public RecordListPresenter(@NonNull RecordListContract.View paramView)
  {
    a = paramView;
    a.setPresenter(this);
  }
  
  private Observable<Boolean> a(Record paramRecord)
  {
    try
    {
      File localFile = PhotoFile.createPhotoFile(a.getExternalPhotoDir());
      return a.callSystemCamera(localFile).observeOn(AndroidSchedulers.mainThread()).flatMap(new -..Lambda.RecordListPresenter.e_CHSI5w0ngqjDxgfEx-iSJ9ZBM(this, localFile, paramRecord)).subscribeOn(AndroidSchedulers.mainThread());
    }
    catch (IOException paramRecord)
    {
      paramRecord.printStackTrace();
    }
    return Observable.error(new Throwable(String.format(a.getContext().getString(2131689732, tmp73_70), tmp87_84)));
  }
  
  private void a()
  {
    if (a.getRecordCardAdapter().getItemCount() > 0)
    {
      a.scrollRecyclerViewToTop();
      a.getRecordCardAdapter().notifyFirstElementElevation();
    }
  }
  
  private Observable<Boolean> b(Record paramRecord)
  {
    String str = Data.getLastUsedPhoto();
    if ("".equals(str)) {
      return Observable.error(new Throwable(a.getContext().getString(2131689733)));
    }
    return Data.setPhotoForRecord(paramRecord, str);
  }
  
  public void deleteRecord(int paramInt1, int paramInt2)
  {
    b = a.showConfirmDialog(2131689724, 2131689720).observeOn(AndroidSchedulers.mainThread()).flatMap(new -..Lambda.RecordListPresenter.RkXN8f-ZcZIRpRWbr0_GiJ30yq0(this, paramInt1, paramInt2)).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.RecordListPresenter.zbTduRgE5DVTV8nrjih2ftc_z6w(this, paramInt2), new -..Lambda.RecordListPresenter.M-koaPgwP2Xdyf-Wx--yN37Qj04(this));
  }
  
  public void handleIaaaLogin(Pair<String, String> paramPair, int paramInt1, int paramInt2)
  {
    a.setWaitingDialogMessage(2131689742);
    Data.changeUserToken((String)second).observeOn(AndroidSchedulers.mainThread()).flatMap(-..Lambda.RecordListPresenter.NAqtrOkTwe8dddL7P45qVFfTDJs.INSTANCE).observeOn(AndroidSchedulers.mainThread()).flatMap(new -..Lambda.RecordListPresenter.EBdi0g2AXFLY5wnz49vMLZsWtLk(paramInt1)).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.RecordListPresenter.Gyh0hH67M0_HK2UZr4CHrWLHYQI(this, paramInt2), new -..Lambda.RecordListPresenter.S4QcdbDTcV5r-go3wO9pB5wtyq8(this));
  }
  
  public void handleIaaaLoginError(Throwable paramThrowable)
  {
    if (!"cancel".equals(paramThrowable.getMessage())) {
      a.makeToast(2131689728, 0, new Object[] { paramThrowable.getLocalizedMessage() });
    }
    a.dismissWaitDialog();
  }
  
  public void refreshList()
  {
    a.getRecordCardAdapter().notifyDataInvalid();
    a.getRecordCardAdapter().notifyDataSetChanged();
    RecordListContract.View localView = a;
    boolean bool;
    if (a.getRecordCardAdapter().getItemCount() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    localView.toggleNoDataNotice(bool);
    a.toggleLoadingNotice(false);
  }
  
  public void showRecordDetail(int paramInt)
  {
    Record localRecord = Data.getSingleRecord(paramInt);
    if (localRecord == null)
    {
      a.makeToast(2131689725, 1, new Object[0]);
      return;
    }
    a.showWaitingDialog();
    a.setWaitingDialogMessage(2131689742);
    Observable.create(new -..Lambda.RecordListPresenter.Ws6RBo0i2jO0CCLbAyfPd-KiuFk(localRecord, paramInt)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.RecordListPresenter.eQ8yGUcbZ5ENUsPZwaquXpwtJhY(this), new -..Lambda.RecordListPresenter.5An_RL-PczYVDiUfPn1CU6R4Zv4(this));
  }
  
  public void start()
  {
    start(false);
  }
  
  public void start(boolean paramBoolean)
  {
    if (Data.isValid())
    {
      a.toggleLoadingNotice(true);
      refreshList();
      if (paramBoolean) {
        a();
      }
    }
  }
  
  public void syncData()
  {
    if (Data.getUser().isOffline().booleanValue())
    {
      a.cancelRefresh();
      return;
    }
    Data.getRecordsFromServer().observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.RecordListPresenter.F1qV9parfRHK3OX61PYRaDEkCCY(this), new -..Lambda.RecordListPresenter.Q-sCTOsGI-ZIwQM0mrF7_x9rF6w(this));
  }
  
  public void uploadVerifyRecord(int paramInt1, int paramInt2)
  {
    Object localObject = Data.getSingleRecord(paramInt1);
    if (((Record)localObject).getPhotoName() == null) {
      localObject = a.showPhotoDialog(2131689736, 2131689735).observeOn(AndroidSchedulers.mainThread()).flatMap(new -..Lambda.RecordListPresenter.UA-Oyjxv4TzbopTJCg-u88c5qJ0(this, (Record)localObject));
    } else {
      localObject = Observable.just(Boolean.valueOf(true));
    }
    ((Observable)localObject).observeOn(AndroidSchedulers.mainThread()).flatMap(new -..Lambda.RecordListPresenter.qmGJgpQ4uvz-1GbYycUdi3DV5PM(this)).delay(1500L, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).flatMap(new -..Lambda.RecordListPresenter.DA-e70eP_hhYCrqg6yOzCsU_qdQ(this)).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.RecordListPresenter.WEddssAP6mOLF7LHIgZJEiZUU9I(this, paramInt1, paramInt2), new -..Lambda.tj-jlNMxKhaOBuaoDCCcEIo7Xsg(this));
  }
}
