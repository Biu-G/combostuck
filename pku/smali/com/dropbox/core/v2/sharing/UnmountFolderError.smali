.class public final Lcom/dropbox/core/v2/sharing/UnmountFolderError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UnmountFolderError$a;,
        Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;
    }
.end annotation


# static fields
.field public static final NOT_UNMOUNTABLE:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UnmountFolderError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->NOT_UNMOUNTABLE:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->NOT_UNMOUNTABLE:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/UnmountFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;
    .locals 1

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    .line 92
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;
    .locals 1

    .line 105
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    .line 106
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    .line 107
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;
    .locals 2

    if-eqz p0, :cond_0

    .line 157
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    move-result-object p0

    return-object p0

    .line 155
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

    .line 226
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    if-eqz v2, :cond_5

    .line 227
    check-cast p1, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    .line 228
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 231
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/UnmountFolderError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->ordinal()I

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

    .line 233
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 211
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

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

    .line 184
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotUnmountable()Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->NOT_UNMOUNTABLE:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

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

    .line 206
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 251
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError$a;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError$a;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method