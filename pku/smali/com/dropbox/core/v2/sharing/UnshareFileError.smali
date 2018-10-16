.class public final Lcom/dropbox/core/v2/sharing/UnshareFileError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UnshareFileError$a;,
        Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UnshareFileError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharingUserError;

.field private c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;)Lcom/dropbox/core/v2/sharing/UnshareFileError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFileError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/UnshareFileError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 1

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    .line 77
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 1

    .line 107
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    .line 108
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    .line 109
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 1

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    .line 92
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    .line 93
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 2

    if-eqz p0, :cond_0

    .line 205
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;

    move-result-object p0

    return-object p0

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/UnshareFileError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object p0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 2

    if-eqz p0, :cond_0

    .line 159
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;

    move-result-object p0

    return-object p0

    .line 157
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
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    if-eqz v2, :cond_7

    .line 254
    check-cast p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    .line 255
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 258
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/UnshareFileError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 262
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

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

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->name()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->b:Lcom/dropbox/core/v2/sharing/SharingUserError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->c:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

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
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

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

    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 276
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFileError$a;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 288
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFileError$a;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
