.class public final Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$a;,
        Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

.field public static final OTHER:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

.field private b:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

.field private c:Lcom/dropbox/core/v2/files/CreateFolderBatchError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a(Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->OTHER:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a(Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->OTHER:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;
    .locals 1

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/CreateFolderBatchError;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;
    .locals 1

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;-><init>()V

    .line 119
    iput-object p1, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    .line 120
    iput-object p2, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/CreateFolderBatchResult;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;
    .locals 1

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;-><init>()V

    .line 103
    iput-object p1, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    .line 104
    iput-object p2, v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;)Lcom/dropbox/core/v2/files/CreateFolderBatchResult;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;)Lcom/dropbox/core/v2/files/CreateFolderBatchError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchError;

    return-object p0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/CreateFolderBatchResult;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 181
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a(Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/CreateFolderBatchResult;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    move-result-object p0

    return-object p0

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static failed(Lcom/dropbox/core/v2/files/CreateFolderBatchError;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 229
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a(Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/CreateFolderBatchError;)Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    move-result-object p0

    return-object p0

    .line 227
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

    .line 279
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    if-eqz v2, :cond_7

    .line 280
    check-cast p1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;

    .line 281
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 284
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 290
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/CreateFolderBatchError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 288
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/CreateFolderBatchResult;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :pswitch_3
    return v0

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/CreateFolderBatchResult;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/files/CreateFolderBatchError;
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchError;

    return-object v0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->name()Ljava/lang/String;

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

    .line 262
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->b:Lcom/dropbox/core/v2/files/CreateFolderBatchResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->c:Lcom/dropbox/core/v2/files/CreateFolderBatchError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 267
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isComplete()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailed()Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInProgress()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

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

    .line 257
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;->OTHER:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$a;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$a;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CreateFolderBatchJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
