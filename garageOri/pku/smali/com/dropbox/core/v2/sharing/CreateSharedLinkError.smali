.class public final Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$a;,
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

.field private b:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->OTHER:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    .locals 1

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;-><init>()V

    .line 73
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    .locals 1

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;-><init>()V

    .line 87
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    .line 88
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    .locals 2

    if-eqz p0, :cond_0

    .line 138
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    move-result-object p0

    return-object p0

    .line 136
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

    .line 184
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    if-eqz v2, :cond_5

    .line 185
    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    .line 186
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 189
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 191
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->b:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->name()Ljava/lang/String;

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

    .line 169
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->b:Lcom/dropbox/core/v2/files/LookupError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPath()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$a;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 217
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$a;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
