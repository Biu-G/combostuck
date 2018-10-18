.class public final Lcom/dropbox/core/v2/team/FeatureValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/FeatureValue$a;,
        Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/FeatureValue;


# instance fields
.field private a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

.field private b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

.field private c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

.field private d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

.field private e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/FeatureValue;->a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/FeatureValue;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 1

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 1

    .line 132
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    .line 133
    iput-object p1, v0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    .line 134
    iput-object p2, v0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 1

    .line 149
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    .line 150
    iput-object p1, v0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    .line 151
    iput-object p2, v0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 1

    .line 115
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    .line 117
    iput-object p2, v0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 1

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    .line 99
    iput-object p1, v0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    .line 100
    iput-object p2, v0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    return-object p0
.end method

.method public static hasTeamFileEvents(Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    .line 295
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_FILE_EVENTS:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object p0

    return-object p0

    .line 293
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasTeamSelectiveSync(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    .line 342
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object p0

    return-object p0

    .line 340
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasTeamSharedDropbox(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    .line 248
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uploadApiRateLimit(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    .line 201
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->a(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object p0

    return-object p0

    .line 199
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

    .line 392
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/FeatureValue;

    if-eqz v2, :cond_b

    .line 393
    check-cast p1, Lcom/dropbox/core/v2/team/FeatureValue;

    .line 394
    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 397
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/FeatureValue$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 405
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 403
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 401
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    .line 399
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_3
    return v0

    :cond_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHasTeamFileEventsValue()Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_FILE_EVENTS:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    return-object v0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.HAS_TEAM_FILE_EVENTS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHasTeamSelectiveSyncValue()Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    return-object v0

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.HAS_TEAM_SELECTIVE_SYNC, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHasTeamSharedDropboxValue()Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    return-object v0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUploadApiRateLimitValue()Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UPLOAD_API_RATE_LIMIT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 374
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHasTeamFileEvents()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_FILE_EVENTS:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHasTeamSelectiveSync()Z
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHasTeamSharedDropbox()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

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

    .line 369
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUploadApiRateLimit()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 419
    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$a;->a:Lcom/dropbox/core/v2/team/FeatureValue$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 431
    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$a;->a:Lcom/dropbox/core/v2/team/FeatureValue$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
