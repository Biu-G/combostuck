.class public final Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;,
        Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharingUserError;

.field private c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private d:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 1

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    .line 86
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 1

    .line 138
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    .line 139
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 140
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->d:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 1

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    .line 119
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 120
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 1

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    .line 102
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 103
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object p0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 2

    if-eqz p0, :cond_0

    .line 236
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->d:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object p0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 2

    if-eqz p0, :cond_0

    .line 285
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object p0

    return-object p0

    .line 283
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 2

    if-eqz p0, :cond_0

    .line 190
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object p0

    return-object p0

    .line 188
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

    .line 338
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    if-eqz v2, :cond_9

    .line 339
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    .line 340
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 343
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 349
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->d:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->d:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->d:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->d:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 347
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 345
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

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

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->d:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->name()Ljava/lang/String;

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

    .line 321
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->d:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoExplicitAccess()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

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

    .line 316
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserError()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 363
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 375
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
