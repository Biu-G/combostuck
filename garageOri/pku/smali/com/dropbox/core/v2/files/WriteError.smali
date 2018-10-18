.class public final Lcom/dropbox/core/v2/files/WriteError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/WriteError$a;,
        Lcom/dropbox/core/v2/files/WriteError$Tag;
    }
.end annotation


# static fields
.field public static final DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

.field public static final INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

.field public static final NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/WriteError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/WriteError;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field private b:Ljava/lang/String;

.field private c:Lcom/dropbox/core/v2/files/WriteConflictError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->a(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->a(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->a(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->a(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->a(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/WriteError;

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->a(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->OTHER:Lcom/dropbox/core/v2/files/WriteError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    .line 121
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/WriteError$Tag;Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .line 146
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    .line 147
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 148
    iput-object p2, v0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .line 130
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    .line 131
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 132
    iput-object p2, v0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/WriteError;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/WriteConflictError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object p0
.end method

.method public static conflict(Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 2

    if-eqz p0, :cond_0

    .line 254
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/WriteError;->a(Lcom/dropbox/core/v2/files/WriteError$Tag;Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static malformedPath()Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-static {v0}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    return-object v0
.end method

.method public static malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 2

    .line 193
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/WriteError;->a(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p0

    return-object p0
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

    .line 358
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/WriteError;

    if-eqz v2, :cond_7

    .line 359
    check-cast p1, Lcom/dropbox/core/v2/files/WriteError;

    .line 360
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 363
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/WriteError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/WriteError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :pswitch_5
    return v0

    .line 367
    :pswitch_6
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/WriteConflictError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 365
    :pswitch_7
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConflictValue()Lcom/dropbox/core/v2/files/WriteConflictError;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object v0

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CONFLICT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/WriteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMalformedPathValue()Ljava/lang/String;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MALFORMED_PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/WriteError$Tag;->name()Ljava/lang/String;

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

    .line 342
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/WriteError;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/WriteError;->c:Lcom/dropbox/core/v2/files/WriteConflictError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConflict()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisallowedName()Z
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsufficientSpace()Z
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMalformedPath()Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoWritePermission()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

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

    .line 337
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeamFolder()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooManyWriteOperations()Z
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/WriteError$Tag;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->a:Lcom/dropbox/core/v2/files/WriteError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 391
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 403
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
