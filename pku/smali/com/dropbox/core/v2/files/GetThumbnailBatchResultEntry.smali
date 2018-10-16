.class public final Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;,
        Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

.field private b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

.field private c:Lcom/dropbox/core/v2/files/ThumbnailError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->OTHER:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->OTHER:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 1

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    .line 77
    iput-object p1, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 1

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    .line 91
    iput-object p1, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    .line 92
    iput-object p2, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/ThumbnailError;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 1

    .line 106
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    .line 107
    iput-object p1, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    .line 108
    iput-object p2, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->c:Lcom/dropbox/core/v2/files/ThumbnailError;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;)Lcom/dropbox/core/v2/files/ThumbnailError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->c:Lcom/dropbox/core/v2/files/ThumbnailError;

    return-object p0
.end method

.method public static failure(Lcom/dropbox/core/v2/files/ThumbnailError;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 2

    if-eqz p0, :cond_0

    .line 204
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/ThumbnailError;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 2

    if-eqz p0, :cond_0

    .line 158
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    move-result-object p0

    return-object p0

    .line 156
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

    .line 253
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    if-eqz v2, :cond_7

    .line 254
    check-cast p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    .line 255
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 258
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 262
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->c:Lcom/dropbox/core/v2/files/ThumbnailError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->c:Lcom/dropbox/core/v2/files/ThumbnailError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->c:Lcom/dropbox/core/v2/files/ThumbnailError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->c:Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ThumbnailError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 260
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->equals(Ljava/lang/Object;)Z

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

.method public getFailureValue()Lcom/dropbox/core/v2/files/ThumbnailError;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->c:Lcom/dropbox/core/v2/files/ThumbnailError;

    return-object v0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILURE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->name()Ljava/lang/String;

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

    .line 237
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->b:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->c:Lcom/dropbox/core/v2/files/ThumbnailError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFailure()Z
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

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

    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->OTHER:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 276
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 288
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
