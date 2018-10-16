.class public final Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;,
        Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

.field private b:Ljava/lang/String;

.field private c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 1

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    .line 89
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    .line 90
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 1

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    .line 74
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    .line 75
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 2

    if-eqz p0, :cond_1

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 143
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object p0

    return-object p0

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object p0
.end method

.method public static complete(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 2

    if-eqz p0, :cond_0

    .line 192
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object p0

    return-object p0

    .line 190
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

    .line 229
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    if-eqz v2, :cond_7

    .line 230
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    .line 231
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 234
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 238
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 236
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->name()Ljava/lang/String;

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

    .line 212
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 217
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isAsyncJobId()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

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

    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 250
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 262
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
