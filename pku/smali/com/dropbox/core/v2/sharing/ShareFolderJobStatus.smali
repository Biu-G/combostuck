.class public final Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;,
        Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

.field private c:Lcom/dropbox/core/v2/sharing/ShareFolderError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 1

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    .line 64
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 1

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    .line 94
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    .line 95
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->c:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 1

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    .line 79
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    .line 80
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->b:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->b:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;)Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->c:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    return-object p0
.end method

.method public static complete(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 154
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object p0

    return-object p0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static failed(Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 202
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object p0

    return-object p0

    .line 200
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

    .line 239
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    if-eqz v2, :cond_7

    .line 240
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    .line 241
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 244
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 250
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->c:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->c:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->c:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->c:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 248
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->b:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->b:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->b:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->b:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :pswitch_2
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

.method public getCompleteValue()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->b:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->c:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->name()Ljava/lang/String;

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

    .line 222
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->b:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->c:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 227
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isComplete()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

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

    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

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

    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 262
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 274
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
