.class public final Lcom/dropbox/core/v2/files/WriteMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/WriteMode$a;,
        Lcom/dropbox/core/v2/files/WriteMode$Tag;
    }
.end annotation


# static fields
.field public static final ADD:Lcom/dropbox/core/v2/files/WriteMode;

.field public static final OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ADD:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteMode;->a(Lcom/dropbox/core/v2/files/WriteMode$Tag;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteMode;->a(Lcom/dropbox/core/v2/files/WriteMode$Tag;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteMode;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/WriteMode$Tag;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 1

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    .line 99
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/WriteMode$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 1

    .line 126
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    .line 127
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    .line 128
    iput-object p2, v0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/WriteMode;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static update(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 2

    if-eqz p0, :cond_2

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 204
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->UPDATE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/WriteMode;->a(Lcom/dropbox/core/v2/files/WriteMode$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 9"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
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

    .line 247
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/WriteMode;

    if-eqz v2, :cond_5

    .line 248
    check-cast p1, Lcom/dropbox/core/v2/files/WriteMode;

    .line 249
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 252
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/WriteMode$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 258
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
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

.method public getUpdateValue()Ljava/lang/String;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->UPDATE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    return-object v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UPDATE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/WriteMode$Tag;->name()Ljava/lang/String;

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

    .line 232
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAdd()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ADD:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverwrite()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdate()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->UPDATE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/WriteMode$Tag;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$a;->a:Lcom/dropbox/core/v2/files/WriteMode$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteMode$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 282
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$a;->a:Lcom/dropbox/core/v2/files/WriteMode$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteMode$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
