.class Landroid/support/v4/app/NotificationManagerCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/content/ComponentName;

.field final b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$c;->a:Landroid/content/ComponentName;

    .line 582
    iput-object p2, p0, Landroid/support/v4/app/NotificationManagerCompat$c;->b:Landroid/os/IBinder;

    return-void
.end method
