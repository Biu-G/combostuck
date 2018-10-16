.class public Lcom/dropbox/core/v2/team/DevicesActive;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/DevicesActive$a;
    }
.end annotation


# instance fields
.field protected final android:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final ios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final linux:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final macos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final other:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final total:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'windows\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/DevicesActive;->windows:Ljava/util/List;

    if-eqz p2, :cond_13

    .line 75
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'macos\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->macos:Ljava/util/List;

    if-eqz p3, :cond_12

    .line 84
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_4

    goto :goto_2

    .line 86
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'linux\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_5
    iput-object p3, p0, Lcom/dropbox/core/v2/team/DevicesActive;->linux:Ljava/util/List;

    if-eqz p4, :cond_11

    .line 93
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_6

    goto :goto_3

    .line 95
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'ios\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_7
    iput-object p4, p0, Lcom/dropbox/core/v2/team/DevicesActive;->ios:Ljava/util/List;

    if-eqz p5, :cond_10

    .line 102
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_8

    goto :goto_4

    .line 104
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'android\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_9
    iput-object p5, p0, Lcom/dropbox/core/v2/team/DevicesActive;->android:Ljava/util/List;

    if-eqz p6, :cond_f

    .line 111
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_a

    goto :goto_5

    .line 113
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'other\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_b
    iput-object p6, p0, Lcom/dropbox/core/v2/team/DevicesActive;->other:Ljava/util/List;

    if-eqz p7, :cond_e

    .line 120
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_c

    goto :goto_6

    .line 122
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'total\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_d
    iput-object p7, p0, Lcom/dropbox/core/v2/team/DevicesActive;->total:Ljava/util/List;

    return-void

    .line 118
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'total\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'other\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'android\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'ios\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'linux\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'macos\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'windows\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 215
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 216
    check-cast p1, Lcom/dropbox/core/v2/team/DevicesActive;

    .line 217
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->windows:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->windows:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->windows:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->windows:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->macos:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->macos:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->macos:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->macos:Ljava/util/List;

    .line 218
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->linux:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->linux:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->linux:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->linux:Ljava/util/List;

    .line 219
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->ios:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->ios:Ljava/util/List;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->ios:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->ios:Ljava/util/List;

    .line 220
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->android:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->android:Ljava/util/List;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->android:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->android:Ljava/util/List;

    .line 221
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->other:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->other:Ljava/util/List;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->other:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->other:Ljava/util/List;

    .line 222
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->total:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DevicesActive;->total:Ljava/util/List;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DevicesActive;->total:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/DevicesActive;->total:Ljava/util/List;

    .line 223
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_0
    return v0

    :cond_a
    return v1
.end method

.method public getAndroid()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesActive;->android:Ljava/util/List;

    return-object v0
.end method

.method public getIos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesActive;->ios:Ljava/util/List;

    return-object v0
.end method

.method public getLinux()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesActive;->linux:Ljava/util/List;

    return-object v0
.end method

.method public getMacos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesActive;->macos:Ljava/util/List;

    return-object v0
.end method

.method public getOther()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesActive;->other:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesActive;->total:Ljava/util/List;

    return-object v0
.end method

.method public getWindows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesActive;->windows:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    .line 194
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DevicesActive;->windows:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DevicesActive;->macos:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DevicesActive;->linux:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DevicesActive;->ios:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DevicesActive;->android:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DevicesActive;->other:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DevicesActive;->total:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    sget-object v0, Lcom/dropbox/core/v2/team/DevicesActive$a;->a:Lcom/dropbox/core/v2/team/DevicesActive$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/DevicesActive$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 245
    sget-object v0, Lcom/dropbox/core/v2/team/DevicesActive$a;->a:Lcom/dropbox/core/v2/team/DevicesActive$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/DevicesActive$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
