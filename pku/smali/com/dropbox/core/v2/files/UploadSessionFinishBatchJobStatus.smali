.class public final Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;,
        Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

.field private b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 1

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>()V

    .line 64
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 1

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>()V

    .line 80
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    .line 81
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    return-object p0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 141
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object p0

    return-object p0

    .line 139
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

    .line 180
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    if-eqz v2, :cond_5

    .line 181
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    .line 182
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 185
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 189
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_1
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 164
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->b:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 168
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isComplete()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

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

    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 213
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
