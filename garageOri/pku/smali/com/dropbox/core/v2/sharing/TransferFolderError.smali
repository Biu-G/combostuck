.class public final Lcom/dropbox/core/v2/sharing/TransferFolderError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/TransferFolderError$a;,
        Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 103
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/TransferFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 1

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    .line 121
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 1

    .line 134
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    .line 135
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 136
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 2

    if-eqz p0, :cond_0

    .line 186
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object p0

    return-object p0

    .line 184
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

    .line 299
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    if-eqz v2, :cond_5

    .line 300
    check-cast p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 301
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 304
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/TransferFolderError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ordinal()I

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

    :pswitch_6
    return v0

    .line 306
    :pswitch_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

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

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->name()Ljava/lang/String;

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

    .line 284
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidDropboxId()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewOwnerEmailUnverified()Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewOwnerNotAMember()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewOwnerUnmounted()Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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

    .line 268
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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

    .line 279
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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

    .line 257
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 332
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$a;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 344
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$a;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
