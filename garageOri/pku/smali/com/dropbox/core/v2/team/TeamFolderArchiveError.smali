.class public final Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderArchiveError$a;,
        Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;


# instance fields
.field private a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

.field private b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

.field private c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

.field private d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a(Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 1

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;-><init>()V

    .line 72
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 1

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;-><init>()V

    .line 86
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    .line 87
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 1

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;-><init>()V

    .line 101
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    .line 102
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 1

    .line 115
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    .line 117
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 2

    if-eqz p0, :cond_0

    .line 164
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a(Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object p0

    return-object p0

    .line 162
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object p0
.end method

.method public static statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 2

    if-eqz p0, :cond_0

    .line 211
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a(Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object p0

    return-object p0

    .line 209
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static teamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 2

    if-eqz p0, :cond_0

    .line 258
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a(Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object p0

    return-object p0

    .line 256
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

    .line 309
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    if-eqz v2, :cond_9

    .line 310
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    .line 311
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 314
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 320
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 318
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 316
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    :cond_9
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStatusErrorValue()Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.STATUS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTeamSharedDropboxErrorValue()Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object v0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 291
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->b:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->c:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->d:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 297
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isAccessError()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

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

    .line 286
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStatusError()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeamSharedDropboxError()Z
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 334
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 346
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
