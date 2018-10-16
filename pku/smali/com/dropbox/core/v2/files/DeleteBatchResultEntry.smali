.class public final Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$a;,
        Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

.field private b:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

.field private c:Lcom/dropbox/core/v2/files/DeleteError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;)Lcom/dropbox/core/v2/files/DeleteBatchResultData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->b:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResultData;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 1

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;-><init>()V

    .line 66
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    .line 67
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->b:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 1

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;-><init>()V

    .line 81
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    .line 82
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->c:Lcom/dropbox/core/v2/files/DeleteError;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->c:Lcom/dropbox/core/v2/files/DeleteError;

    return-object p0
.end method

.method public static failure(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 2

    if-eqz p0, :cond_0

    .line 175
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    move-result-object p0

    return-object p0

    .line 173
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Lcom/dropbox/core/v2/files/DeleteBatchResultData;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 2

    if-eqz p0, :cond_0

    .line 129
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResultData;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    move-result-object p0

    return-object p0

    .line 127
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

    .line 211
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    if-eqz v2, :cond_7

    .line 212
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    .line 213
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 216
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 220
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->c:Lcom/dropbox/core/v2/files/DeleteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->c:Lcom/dropbox/core/v2/files/DeleteError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->c:Lcom/dropbox/core/v2/files/DeleteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->c:Lcom/dropbox/core/v2/files/DeleteError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/DeleteError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 218
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->b:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->b:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->b:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->b:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/DeleteBatchResultData;->equals(Ljava/lang/Object;)Z

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFailureValue()Lcom/dropbox/core/v2/files/DeleteError;
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->c:Lcom/dropbox/core/v2/files/DeleteError;

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILURE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/files/DeleteBatchResultData;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->b:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->name()Ljava/lang/String;

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

    .line 195
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->b:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->c:Lcom/dropbox/core/v2/files/DeleteError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFailure()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

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

    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$a;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 244
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$a;->a:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
