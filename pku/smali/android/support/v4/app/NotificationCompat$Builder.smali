.class public Landroid/support/v4/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field A:I

.field B:I

.field C:Landroid/app/Notification;

.field D:Landroid/widget/RemoteViews;

.field E:Landroid/widget/RemoteViews;

.field F:Landroid/widget/RemoteViews;

.field G:Ljava/lang/String;

.field H:I

.field I:Ljava/lang/String;

.field J:J

.field K:I

.field L:Landroid/app/Notification;

.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Landroid/support/v4/app/NotificationCompat$Style;

.field public mActions:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field n:Ljava/lang/CharSequence;

.field o:[Ljava/lang/CharSequence;

.field p:I

.field q:I

.field r:Z

.field s:Ljava/lang/String;

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Z

.field x:Z

.field y:Ljava/lang/String;

.field z:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 751
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 686
    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->k:Z

    const/4 v0, 0x0

    .line 697
    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->v:Z

    .line 702
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->A:I

    .line 703
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->B:I

    .line 709
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->H:I

    .line 712
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->K:I

    .line 713
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    .line 735
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 736
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->G:Ljava/lang/String;

    .line 739
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/app/Notification;->when:J

    .line 740
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 741
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->j:I

    .line 742
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_2

    .line 986
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 991
    sget v1, Landroid/support/compat/R$dimen;->compat_notification_large_icon_max_width:I

    .line 992
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 993
    sget v2, Landroid/support/compat/R$dimen;->compat_notification_large_icon_max_height:I

    .line 994
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 995
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    return-object p1

    :cond_1
    int-to-double v1, v1

    .line 1000
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    .line 1001
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 999
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1004
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1005
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1002
    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1186
    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 1188
    :cond_0
    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1590
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1591
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2

    .line 1355
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 1374
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 1295
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->z:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1296
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->z:Landroid/os/Bundle;

    goto :goto_0

    .line 1298
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->z:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public addInvisibleAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1390
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addInvisibleAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addInvisibleAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1403
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 1237
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .line 1585
    new-instance v0, Landroid/support/v4/app/h;

    invoke-direct {v0, p0}, Landroid/support/v4/app/h;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-virtual {v0}, Landroid/support/v4/app/h;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1568
    invoke-interface {p1, p0}, Landroid/support/v4/app/NotificationCompat$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public getBigContentView()Landroid/widget/RemoteViews;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1609
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->E:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1647
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->A:I

    return v0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1601
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->D:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1332
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->z:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->z:Landroid/os/Bundle;

    .line 1335
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->z:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1617
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1577
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1637
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->j:I

    return v0
.end method

.method public getWhenIfShowing()J
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1627
    iget-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    const/16 v0, 0x10

    .line 1139
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(IZ)V

    return-object p0
.end method

.method public setBadgeIconType(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1544
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->H:I

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1162
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->y:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1505
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->G:Ljava/lang/String;

    return-object p0
.end method

.method public setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1433
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->A:I

    return-object p0
.end method

.method public setColorized(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1118
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->w:Z

    const/4 p1, 0x1

    .line 1119
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->x:Z

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 898
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 879
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 911
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->d:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 828
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 820
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1482
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->E:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1469
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->D:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1495
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 1177
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 1179
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 923
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1317
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->z:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 946
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/PendingIntent;

    const/16 p1, 0x80

    .line 947
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->a(IZ)V

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1253
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->s:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1559
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->K:I

    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1265
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->t:Z

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 977
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->g:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1074
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1075
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->ledOnMS:I

    .line 1076
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput p3, p1, Landroid/app/Notification;->ledOffMS:I

    .line 1077
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->ledOnMS:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->ledOffMS:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1078
    :goto_0
    iget-object p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iget-object p3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iget p3, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, -0x2

    or-int/2addr p1, p3

    iput p1, p2, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1150
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->v:Z

    return-object p0
.end method

.method public setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 871
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->i:I

    return-object p0
.end method

.method public setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 1095
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(IZ)V

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    const/16 v0, 0x8

    .line 1128
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(IZ)V

    return-object p0
.end method

.method public setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1210
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->j:I

    return-object p0
.end method

.method public setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 888
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->p:I

    .line 889
    iput p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->q:I

    .line 890
    iput-boolean p3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->r:Z

    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1458
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->C:Landroid/app/Notification;

    return-object p0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 861
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->o:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1530
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->I:Ljava/lang/String;

    return-object p0
.end method

.method public setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 768
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->k:Z

    return-object p0
.end method

.method public setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 796
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 811
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 812
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->iconLevel:I

    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1282
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->u:Ljava/lang/String;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2

    .line 1018
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1019
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    const/4 v0, -0x1

    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1020
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1021
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 1022
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1023
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2

    .line 1041
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1042
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1043
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1044
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 1045
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1046
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 1047
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    iput-object p2, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 1416
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->m:Landroid/support/v4/app/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    .line 1417
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->m:Landroid/support/v4/app/NotificationCompat$Style;

    .line 1418
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->m:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz p1, :cond_0

    .line 1419
    iget-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->m:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {p1, p0}, Landroid/support/v4/app/NotificationCompat$Style;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 842
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->n:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 957
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 968
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 969
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->f:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setTimeoutAfter(J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1514
    iput-wide p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->J:J

    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 784
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->l:Z

    return-object p0
.end method

.method public setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 1064
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 1445
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->B:I

    return-object p0
.end method

.method public setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .line 759
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->L:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
