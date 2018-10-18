.class public final Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$a;,
        Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->OTHER:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    .locals 1

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    .line 80
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    .locals 1

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    .line 94
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    .line 95
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;
    .locals 2

    if-eqz p0, :cond_0

    .line 145
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    move-result-object p0

    return-object p0

    .line 143
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

    .line 203
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    if-eqz v2, :cond_5

    .line 204
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    .line 205
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 208
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    .line 210
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->name()Ljava/lang/String;

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

    .line 188
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidCursor()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

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

    .line 183
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 226
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$a;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 238
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$a;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
