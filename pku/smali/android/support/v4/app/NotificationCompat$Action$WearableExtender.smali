.class public final Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3452
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 2

    .line 3470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3452
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    .line 3471
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "flags"

    .line 3473
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    const-string v0, "inProgressLabel"

    .line 3474
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    const-string v0, "confirmLabel"

    .line 3475
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    const-string v0, "cancelLabel"

    .line 3476
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method private a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3539
    iget p2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    goto :goto_0

    .line 3541
    :cond_0
    iget p2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 2

    .line 3508
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;-><init>()V

    .line 3509
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    .line 3510
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    .line 3511
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    .line 3512
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3434
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Action$Builder;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 3

    .line 3487
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3489
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "flags"

    .line 3490
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3492
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const-string v1, "inProgressLabel"

    .line 3493
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3495
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    const-string v1, "confirmLabel"

    .line 3496
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3498
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    const-string v1, "cancelLabel"

    .line 3499
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3502
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getCancelLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3614
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getConfirmLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3590
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHintDisplayActionInline()Z
    .locals 1

    .line 3665
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHintLaunchesActivity()Z
    .locals 1

    .line 3638
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInProgressLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3566
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAvailableOffline()Z
    .locals 2

    .line 3534
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 1

    const/4 v0, 0x1

    .line 3523
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setCancelLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3602
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setConfirmLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3578
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHintDisplayActionInline(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 1

    const/4 v0, 0x4

    .line 3652
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setHintLaunchesActivity(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 1

    const/4 v0, 0x2

    .line 3626
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setInProgressLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3554
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->b:Ljava/lang/CharSequence;

    return-object p0
.end method