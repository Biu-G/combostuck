.class public final Lcom/dropbox/core/v2/common/PathRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/common/PathRoot$Serializer;,
        Lcom/dropbox/core/v2/common/PathRoot$Tag;
    }
.end annotation


# static fields
.field public static final HOME:Lcom/dropbox/core/v2/common/PathRoot;

.field public static final OTHER:Lcom/dropbox/core/v2/common/PathRoot;


# instance fields
.field private a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->HOME:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/common/PathRoot;->a(Lcom/dropbox/core/v2/common/PathRoot$Tag;)Lcom/dropbox/core/v2/common/PathRoot;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/common/PathRoot;->HOME:Lcom/dropbox/core/v2/common/PathRoot;

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->OTHER:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/common/PathRoot;->a(Lcom/dropbox/core/v2/common/PathRoot$Tag;)Lcom/dropbox/core/v2/common/PathRoot;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/common/PathRoot;->OTHER:Lcom/dropbox/core/v2/common/PathRoot;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/common/PathRoot$Tag;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 1

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    .line 95
    iput-object p1, v0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/common/PathRoot$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 1

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    .line 112
    iput-object p1, v0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    .line 113
    iput-object p2, v0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/common/PathRoot;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/common/PathRoot$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 1

    .line 129
    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    .line 130
    iput-object p1, v0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    .line 131
    iput-object p2, v0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/common/PathRoot;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static namespaceId(Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 251
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->NAMESPACE_ID:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/common/PathRoot;->b(Lcom/dropbox/core/v2/common/PathRoot$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 249
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static root(Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 195
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->ROOT:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/common/PathRoot;->a(Lcom/dropbox/core/v2/common/PathRoot$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;

    move-result-object p0

    return-object p0

    .line 196
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 193
    :cond_1
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

    .line 306
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/common/PathRoot;

    if-eqz v2, :cond_7

    .line 307
    check-cast p1, Lcom/dropbox/core/v2/common/PathRoot;

    .line 308
    iget-object v2, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 311
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/common/PathRoot$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/common/PathRoot$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 317
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 315
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNamespaceIdValue()Ljava/lang/String;
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->NAMESPACE_ID:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NAMESPACE_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/common/PathRoot$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRootValue()Ljava/lang/String;
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->ROOT:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ROOT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/common/PathRoot$Tag;->name()Ljava/lang/String;

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

    .line 290
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHome()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->HOME:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNamespaceId()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->NAMESPACE_ID:Lcom/dropbox/core/v2/common/PathRoot$Tag;

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

    .line 285
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->OTHER:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoot()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->ROOT:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/common/PathRoot$Tag;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 331
    sget-object v0, Lcom/dropbox/core/v2/common/PathRoot$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/PathRoot$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/common/PathRoot$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 343
    sget-object v0, Lcom/dropbox/core/v2/common/PathRoot$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/PathRoot$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/common/PathRoot$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
