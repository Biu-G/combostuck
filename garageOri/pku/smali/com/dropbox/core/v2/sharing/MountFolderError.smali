.class public final Lcom/dropbox/core/v2/sharing/MountFolderError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/MountFolderError$a;,
        Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;
    }
.end annotation


# static fields
.field public static final ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field private c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 1

    .line 115
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 1

    .line 145
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    .line 146
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    .line 147
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 1

    .line 129
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    .line 130
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    .line 131
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 2

    if-eqz p0, :cond_0

    .line 197
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/MountFolderError;->a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object p0

    return-object p0

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    return-object p0
.end method

.method public static insufficientQuota(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 2

    if-eqz p0, :cond_0

    .line 256
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/MountFolderError;->a(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object p0

    return-object p0

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 339
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;

    if-eqz v2, :cond_7

    .line 340
    check-cast p1, Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 341
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 344
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/MountFolderError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    .line 350
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_5
    return v0

    .line 346
    :pswitch_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInsufficientQuotaValue()Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INSUFFICIENT_QUOTA, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 323
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->c:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlreadyMounted()Z
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsideSharedFolder()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsufficientQuota()Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoPermission()Z
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotMountable()Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 370
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 382
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
