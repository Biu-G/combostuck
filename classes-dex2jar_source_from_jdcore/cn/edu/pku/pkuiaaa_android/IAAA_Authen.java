package cn.edu.pku.pkuiaaa_android;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Timer;
import java.util.TimerTask;

public class IAAA_Authen
  extends AppCompatActivity
{
  static String a;
  static Timer b = new Timer();
  int c = 0;
  boolean d = false;
  boolean e = false;
  final int f = 2000;
  final int g = 60;
  boolean h = false;
  boolean i = false;
  TextView j;
  TextView k;
  TextView l;
  EditText m;
  EditText n;
  EditText o;
  LinearLayout p;
  String q;
  String r;
  String s;
  
  public IAAA_Authen() {}
  
  static AlertDialog a(View paramView, String paramString)
  {
    return new AlertDialog.Builder(paramView.getContext()).setTitle(R.string.error).setMessage(paramString).setNegativeButton(R.string.ok, null).create();
  }
  
  public static void a(Activity paramActivity)
  {
    View localView = paramActivity.getWindow().getCurrentFocus();
    if (localView != null) {
      ((InputMethodManager)paramActivity.getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
    }
  }
  
  static ProgressDialog b(Activity paramActivity)
  {
    paramActivity = new ProgressDialog(paramActivity);
    paramActivity.setProgressStyle(0);
    paramActivity.setMessage("请稍候...");
    paramActivity.setIndeterminate(true);
    paramActivity.setCancelable(false);
    return paramActivity;
  }
  
  static AlertDialog b(View paramView, String paramString)
  {
    return new AlertDialog.Builder(paramView.getContext()).setTitle(R.string.notice).setMessage(paramString).setNegativeButton(R.string.ok, null).create();
  }
  
  final void a(final TextView paramTextView)
  {
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public final void run()
      {
        if (c <= 0)
        {
          paramTextView.setText(getResources().getString(R.string.sendcode));
          paramTextView.setTextColor(ContextCompat.getColor(getApplicationContext(), R.color.black1));
          paramTextView.setEnabled(true);
          IAAA_Authen.b.cancel();
          IAAA_Authen.b = null;
          d = false;
          return;
        }
        c -= 2;
        TextView localTextView = paramTextView;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(getResources().getString(R.string.sendcode_wait));
        localStringBuilder.append(c);
        localTextView.setText(localStringBuilder.toString());
      }
    });
  }
  
  final void a(final boolean paramBoolean)
  {
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public final void run()
      {
        m.setEnabled(paramBoolean);
        n.setEnabled(paramBoolean);
        o.setEnabled(paramBoolean);
        l.setEnabled(paramBoolean);
        j.setEnabled(paramBoolean);
        k.setEnabled(paramBoolean);
        if ((!h) && (!i))
        {
          p.setVisibility(8);
          return;
        }
        p.setVisibility(0);
        if (h)
        {
          l.setVisibility(0);
          o.setHint(getResources().getString(R.string.hint_msgcode));
          return;
        }
        l.setVisibility(4);
        o.setHint(getResources().getString(R.string.hint_otpcode));
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.activity_login);
    paramBundle = getIntent();
    a = paramBundle.getStringExtra("iAAA_APPID");
    q = paramBundle.getStringExtra("iAAA_UID");
    if ((a == null) || (a.equals(""))) {
      a = "NA";
    }
    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
    h = false;
    i = false;
    e = false;
    if (q == null) {
      q = "";
    }
    r = "";
    s = "";
    j = ((TextView)findViewById(R.id.login));
    k = ((TextView)findViewById(R.id.cancel));
    l = ((TextView)findViewById(R.id.sendcodes));
    m = ((EditText)findViewById(R.id.userName));
    if (!q.equals("")) {
      m.setText(q);
    }
    n = ((EditText)findViewById(R.id.passwd));
    o = ((EditText)findViewById(R.id.msgcodes));
    p = ((LinearLayout)findViewById(R.id.msgcodecontainer));
    if ((!h) && (!i))
    {
      p.setVisibility(8);
    }
    else
    {
      p.setVisibility(0);
      EditText localEditText;
      if (h)
      {
        l.setVisibility(0);
        localEditText = o;
        paramBundle = getResources();
      }
      for (int i1 = R.string.hint_msgcode;; i1 = R.string.hint_otpcode)
      {
        localEditText.setHint(paramBundle.getString(i1));
        break;
        l.setVisibility(4);
        localEditText = o;
        paramBundle = getResources();
      }
    }
    if (d)
    {
      new Handler(Looper.getMainLooper()).post(new Runnable()
      {
        public final void run()
        {
          l.setEnabled(false);
          l.setTextColor(ContextCompat.getColor(getApplicationContext(), R.color.colorIPGWGray));
          TextView localTextView = l;
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append(getResources().getString(R.string.sendcode_wait));
          localStringBuilder.append(c);
          localTextView.setText(localStringBuilder.toString());
        }
      });
      if (b != null) {
        b.cancel();
      }
      b = new Timer();
      paramBundle = new TimerTask()
      {
        public final void run()
        {
          a(l);
        }
      };
      b.schedule(paramBundle, 0L, 2000L);
    }
    j.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        IAAA_Authen.a(IAAA_Authen.this);
        Object localObject1 = m.getText().toString().trim();
        Object localObject2 = n.getText().toString().trim();
        if ((((String)localObject1).length() != 0) && (((String)localObject2).length() != 0)) {
          if ((((String)localObject1).length() >= 2) && (((String)localObject2).length() >= 8))
          {
            if (!q.equals(localObject1))
            {
              e = false;
              h = false;
              i = false;
            }
            if (h)
            {
              paramAnonymousView = o.getText().toString().trim();
              if (paramAnonymousView.length() == 0)
              {
                IAAA_Authen.a(getWindow().getDecorView().getRootView(), getResources().getString(R.string.enter_msgcode)).show();
                return;
              }
              if ((paramAnonymousView.length() < 4) || (paramAnonymousView.length() > 6)) {}
            }
          }
        }
        for (;;)
        {
          try
          {
            Integer.parseInt(paramAnonymousView);
            s = paramAnonymousView;
          }
          catch (Exception paramAnonymousView)
          {
            continue;
          }
          IAAA_Authen.a(getWindow().getDecorView().getRootView(), getResources().getString(R.string.wrong_msgcode)).show();
          return;
          IAAA_Authen.a(getWindow().getDecorView().getRootView(), getResources().getString(R.string.wrong_msgcode)).show();
          return;
          if (!i) {
            continue;
          }
          paramAnonymousView = o.getText().toString().trim();
          if (paramAnonymousView.length() == 0)
          {
            IAAA_Authen.a(getWindow().getDecorView().getRootView(), getResources().getString(R.string.enter_otpcode)).show();
            return;
          }
          if ((paramAnonymousView.length() < 4) || (paramAnonymousView.length() > 6)) {
            continue;
          }
          try
          {
            Integer.parseInt(paramAnonymousView);
          }
          catch (Exception paramAnonymousView)
          {
            boolean bool;
            continue;
            paramAnonymousView = "";
            continue;
            paramAnonymousView = "";
          }
        }
        IAAA_Authen.a(getWindow().getDecorView().getRootView(), getResources().getString(R.string.wrong_otpcode)).show();
        return;
        IAAA_Authen.a(getWindow().getDecorView().getRootView(), getResources().getString(R.string.wrong_otpcode)).show();
        return;
        s = "";
        q = ((String)localObject1);
        r = ((String)localObject2);
        a(false);
        localObject1 = IAAA_Authen.b(IAAA_Authen.this);
        ((ProgressDialog)localObject1).show();
        if (!e)
        {
          h = false;
          i = false;
          try
          {
            paramAnonymousView = a.b(q, IAAA_Authen.a);
            bool = paramAnonymousView.equals("");
            if (bool) {
              try
              {
                if (h)
                {
                  paramAnonymousView = "SMS";
                }
                else
                {
                  if (!i) {
                    break label1042;
                  }
                  paramAnonymousView = "OTP";
                }
                paramAnonymousView = a.a(q, r, s, IAAA_Authen.a, paramAnonymousView);
                localObject2 = new Intent();
                ((Intent)localObject2).putExtra("iAAA_RESULT", "success");
                ((Intent)localObject2).putExtra("iAAA_UID", q);
                ((Intent)localObject2).putExtra("iAAA_TOKEN", paramAnonymousView);
                setResult(-1, (Intent)localObject2);
                ((ProgressDialog)localObject1).dismiss();
                a(true);
                finish();
                return;
              }
              catch (Exception paramAnonymousView)
              {
                IAAA_Authen.a(getWindow().getDecorView().getRootView(), paramAnonymousView.getMessage()).show();
              }
            }
            if (paramAnonymousView.equals("SMS")) {
              h = true;
            } else {
              i = true;
            }
            e = true;
            ((ProgressDialog)localObject1).dismiss();
            a(true);
          }
          catch (Exception paramAnonymousView)
          {
            IAAA_Authen.a(getWindow().getDecorView().getRootView(), paramAnonymousView.getMessage()).show();
            ((ProgressDialog)localObject1).dismiss();
            a(true);
          }
        }
        try
        {
          if (h)
          {
            paramAnonymousView = "SMS";
          }
          else
          {
            if (!i) {
              break label1048;
            }
            paramAnonymousView = "OTP";
          }
          paramAnonymousView = a.a(q, r, s, IAAA_Authen.a, paramAnonymousView);
          localObject2 = new Intent();
          ((Intent)localObject2).putExtra("iAAA_RESULT", "success");
          ((Intent)localObject2).putExtra("iAAA_UID", q);
          ((Intent)localObject2).putExtra("iAAA_TOKEN", paramAnonymousView);
          setResult(-1, (Intent)localObject2);
          ((ProgressDialog)localObject1).dismiss();
          a(true);
          finish();
          return;
        }
        catch (Exception paramAnonymousView)
        {
          IAAA_Authen.a(getWindow().getDecorView().getRootView(), paramAnonymousView.getMessage()).show();
        }
        ((ProgressDialog)localObject1).dismiss();
        a(true);
        return;
        IAAA_Authen.a(getWindow().getDecorView().getRootView(), getResources().getString(R.string.wrong_username_passwd)).show();
        return;
        IAAA_Authen.a(getWindow().getDecorView().getRootView(), getResources().getString(R.string.enter_username_passwd)).show();
      }
    });
    k.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        IAAA_Authen.a(IAAA_Authen.this);
        paramAnonymousView = new Intent();
        paramAnonymousView.putExtra("iAAA_RESULT", "cancel");
        paramAnonymousView.putExtra("iAAA_UID", "");
        paramAnonymousView.putExtra("iAAA_TOKEN", "");
        setResult(-1, paramAnonymousView);
        finish();
      }
    });
    l.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        IAAA_Authen.a(IAAA_Authen.this);
        if (!h) {
          return;
        }
        paramAnonymousView = m.getText().toString().trim();
        Object localObject = n.getText().toString().trim();
        if ((paramAnonymousView.length() != 0) && (((String)localObject).length() != 0))
        {
          if ((paramAnonymousView.length() >= 2) && (((String)localObject).length() >= 8))
          {
            q = paramAnonymousView;
            r = ((String)localObject);
            d = true;
            new Handler(Looper.getMainLooper()).post(new Runnable()
            {
              public final void run()
              {
                l.setEnabled(false);
                l.setTextColor(ContextCompat.getColor(getApplicationContext(), R.color.colorIPGWGray));
              }
            });
            c = 60;
            if (IAAA_Authen.b == null) {
              IAAA_Authen.b = new Timer();
            }
            paramAnonymousView = new TimerTask()
            {
              public final void run()
              {
                a(l);
              }
            };
            IAAA_Authen.b.schedule(paramAnonymousView, 0L, 2000L);
            a(true);
            localObject = IAAA_Authen.b(IAAA_Authen.this);
            ((ProgressDialog)localObject).show();
            try
            {
              paramAnonymousView = a.a(q, IAAA_Authen.a);
              if (paramAnonymousView.equals(""))
              {
                paramAnonymousView = "验证码已经发送到您的手机！";
              }
              else
              {
                StringBuilder localStringBuilder = new StringBuilder("验证码已经发送到您的手机: ");
                localStringBuilder.append(paramAnonymousView);
                paramAnonymousView = localStringBuilder.toString();
              }
              a(true);
              ((ProgressDialog)localObject).dismiss();
              IAAA_Authen.b(getWindow().getDecorView().getRootView(), paramAnonymousView).show();
              return;
            }
            catch (Exception localException)
            {
              a(true);
              ((ProgressDialog)localObject).dismiss();
              paramAnonymousView = getWindow().getDecorView().getRootView();
              localObject = localException.getMessage();
            }
            IAAA_Authen.a(paramAnonymousView, (String)localObject).show();
            return;
          }
          paramAnonymousView = getWindow().getDecorView().getRootView();
          localObject = getResources();
        }
        for (int i = R.string.wrong_username_passwd;; i = R.string.enter_username_passwd)
        {
          localObject = ((Resources)localObject).getString(i);
          break;
          paramAnonymousView = getWindow().getDecorView().getRootView();
          localObject = getResources();
        }
      }
    });
    ((TextView)findViewById(R.id.cc_link)).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse("http://cc.pku.edu.cn"));
        startActivity(paramAnonymousView);
      }
    });
  }
}
