.class public final Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;,
        Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;
    }
.end annotation


# static fields
.field public static final FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field private c:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1

    .line 117
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    .line 118
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    .line 132
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 133
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1

    .line 146
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    .line 147
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 148
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 2

    if-eqz p0, :cond_0

    .line 198
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object p0

    return-object p0

    .line 196
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object p0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 2

    if-eqz p0, :cond_0

    .line 245
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object p0

    return-object p0

    .line 243
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

    .line 348
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    if-eqz v2, :cond_7

    .line 349
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 350
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 353
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ordinal()I

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

    .line 357
    :pswitch_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 355
    :pswitch_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

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

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->name()Ljava/lang/String;

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

    .line 332
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->c:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFolderOwner()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupAccess()Z
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMemberError()Z
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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

    .line 305
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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

    .line 327
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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

    .line 294
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooManyFiles()Z
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 381
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 393
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
