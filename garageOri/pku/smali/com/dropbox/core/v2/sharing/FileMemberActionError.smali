.class public final Lcom/dropbox/core/v2/sharing/FileMemberActionError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;,
        Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private c:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 1

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 1

    .line 130
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>()V

    .line 131
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    .line 132
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->c:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 1

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>()V

    .line 113
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    .line 114
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->b:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->b:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object p0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 2

    if-eqz p0, :cond_0

    .line 204
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->c:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object p0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 2

    if-eqz p0, :cond_0

    .line 255
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object p0

    return-object p0

    .line 253
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

    .line 307
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    if-eqz v2, :cond_7

    .line 308
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 309
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 312
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/FileMemberActionError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 320
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->c:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->c:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->c:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->c:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->b:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->b:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->b:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->b:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :cond_7
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

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->b:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->c:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->name()Ljava/lang/String;

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

    .line 291
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->b:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->c:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidMember()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

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

    .line 233
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoPermission()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

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
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 334
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 346
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
