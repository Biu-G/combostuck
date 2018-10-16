.class public final Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$a;,
        Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;


# instance fields
.field private a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

.field private b:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

.field private c:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 1

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    .line 69
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 1

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    .line 101
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    .line 102
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->c:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 1

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    .line 84
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    .line 85
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->b:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->b:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->c:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    return-object p0
.end method

.method public static complete(Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 161
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object p0

    return-object p0

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static failed(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 211
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object p0

    return-object p0

    .line 209
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

    .line 251
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    if-eqz v2, :cond_7

    .line 252
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    .line 253
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 256
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 262
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->c:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->c:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->c:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->c:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 260
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->b:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->b:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->b:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->b:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->equals(Ljava/lang/Object;)Z

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

.method public getCompleteValue()Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->b:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->c:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->name()Ljava/lang/String;

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

    .line 234
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->b:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->c:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 239
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isComplete()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

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

    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

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

    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 274
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$a;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 286
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$a;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
