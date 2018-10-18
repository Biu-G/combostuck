.class public final Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;,
        Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

.field public static final NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 1

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    .line 91
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 1

    .line 105
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    .line 106
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    .line 107
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 2

    if-eqz p0, :cond_0

    .line 180
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object p0

    return-object p0

    .line 178
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

    .line 229
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    if-eqz v2, :cond_5

    .line 230
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 231
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 234
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 240
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_2
    return v0

    :pswitch_3
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

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->name()Ljava/lang/String;

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

    .line 214
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInvalidDropboxId()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

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

    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotAMember()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

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

    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 266
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
