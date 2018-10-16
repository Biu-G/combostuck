.class public final Lcom/dropbox/core/v2/sharing/JobError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/JobError$a;,
        Lcom/dropbox/core/v2/sharing/JobError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/JobError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

.field private c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field private d:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/JobError;->a(Lcom/dropbox/core/v2/sharing/JobError$Tag;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobError;->OTHER:Lcom/dropbox/core/v2/sharing/JobError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/JobError$Tag;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    .line 97
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1

    .line 157
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    .line 158
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    .line 159
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/JobError;->d:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1

    .line 136
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    .line 137
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    .line 138
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/JobError;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1

    .line 115
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    .line 117
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/JobError;->b:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobError;->b:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobError;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/JobError;->d:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    return-object p0
.end method

.method public static relinquishFolderMembershipError(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 2

    if-eqz p0, :cond_0

    .line 317
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->RELINQUISH_FOLDER_MEMBERSHIP_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/JobError;->a(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object p0

    return-object p0

    .line 315
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeFolderMemberError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 2

    if-eqz p0, :cond_0

    .line 263
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->REMOVE_FOLDER_MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/JobError;->a(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object p0

    return-object p0

    .line 261
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unshareFolderError(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 2

    if-eqz p0, :cond_0

    .line 210
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->UNSHARE_FOLDER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/JobError;->a(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object p0

    return-object p0

    .line 208
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

    .line 372
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/JobError;

    if-eqz v2, :cond_9

    .line 373
    check-cast p1, Lcom/dropbox/core/v2/sharing/JobError;

    .line 374
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 377
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/JobError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 383
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->d:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->d:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->d:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/JobError;->d:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 381
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/JobError;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 379
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->b:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->b:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->b:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/JobError;->b:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->equals(Ljava/lang/Object;)Z

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

.method public getRelinquishFolderMembershipErrorValue()Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->RELINQUISH_FOLDER_MEMBERSHIP_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->d:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRemoveFolderMemberErrorValue()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->REMOVE_FOLDER_MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.REMOVE_FOLDER_MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnshareFolderErrorValue()Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->UNSHARE_FOLDER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->b:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UNSHARE_FOLDER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->name()Ljava/lang/String;

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

    .line 355
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/JobError;->b:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/JobError;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/JobError;->d:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRelinquishFolderMembershipError()Z
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->RELINQUISH_FOLDER_MEMBERSHIP_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoveFolderMemberError()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->REMOVE_FOLDER_MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnshareFolderError()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->UNSHARE_FOLDER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/JobError$Tag;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->a:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 397
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$a;->a:Lcom/dropbox/core/v2/sharing/JobError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 409
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$a;->a:Lcom/dropbox/core/v2/sharing/JobError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
