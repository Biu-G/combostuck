.class public final Lcom/dropbox/core/v2/users/GetAccountBatchError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;,
        Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError;


# instance fields
.field private a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;)Lcom/dropbox/core/v2/users/GetAccountBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;)Lcom/dropbox/core/v2/users/GetAccountBatchError;
    .locals 1

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>()V

    .line 76
    iput-object p1, v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/users/GetAccountBatchError;
    .locals 1

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    .line 94
    iput-object p2, v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/users/GetAccountBatchError;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static noAccount(Ljava/lang/String;)Lcom/dropbox/core/v2/users/GetAccountBatchError;
    .locals 2

    if-eqz p0, :cond_2

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 152
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/users/GetAccountBatchError;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 40"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 40"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_2
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

    .line 201
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    if-eqz v2, :cond_5

    .line 202
    check-cast p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    .line 203
    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 206
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/users/GetAccountBatchError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 208
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getNoAccountValue()Ljava/lang/String;
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->b:Ljava/lang/String;

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NO_ACCOUNT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->name()Ljava/lang/String;

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

    .line 186
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNoAccount()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

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

    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->a:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 222
    sget-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 234
    sget-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method