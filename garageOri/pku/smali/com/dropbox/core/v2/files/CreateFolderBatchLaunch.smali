.class public final Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$a;,
        Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

.field private b:Ljava/lang/String;

.field private c:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a(Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;
    .locals 1

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;-><init>()V

    .line 86
    iput-object p1, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;Lcom/dropbox/core/v2/files/CreateFolderBatchResult;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;
    .locals 1

    .line 123
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;-><init>()V

    .line 124
    iput-object p1, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    .line 125
    iput-object p2, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;
    .locals 1

    .line 105
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;-><init>()V

    .line 106
    iput-object p1, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    .line 107
    iput-object p2, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;
    .locals 2

    if-eqz p0, :cond_1

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 181
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a(Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    move-result-object p0

    return-object p0

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;)Lcom/dropbox/core/v2/files/CreateFolderBatchResult;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    return-object p0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/CreateFolderBatchResult;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;
    .locals 2

    if-eqz p0, :cond_0

    .line 230
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a(Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;Lcom/dropbox/core/v2/files/CreateFolderBatchResult;)Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    move-result-object p0

    return-object p0

    .line 228
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

    .line 278
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    if-eqz v2, :cond_7

    .line 279
    check-cast p1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;

    .line 280
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 283
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 287
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/CreateFolderBatchResult;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 285
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->b:Ljava/lang/String;

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/CreateFolderBatchResult;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->name()Ljava/lang/String;

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

    .line 261
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 266
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isAsyncJobId()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

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

    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 301
    sget-object v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$a;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 313
    sget-object v0, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$a;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CreateFolderBatchLaunch$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
