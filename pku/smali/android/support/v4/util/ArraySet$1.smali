.class Landroid/support/v4/util/ArraySet$1;
.super Landroid/support/v4/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/util/ArraySet;->b()Landroid/support/v4/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/b<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/util/ArraySet;


# direct methods
.method constructor <init>(Landroid/support/v4/util/ArraySet;)V
    .locals 0

    .line 667
    iput-object p1, p0, Landroid/support/v4/util/ArraySet$1;->a:Landroid/support/v4/util/ArraySet;

    invoke-direct {p0}, Landroid/support/v4/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 670
    iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->a:Landroid/support/v4/util/ArraySet;

    iget v0, v0, Landroid/support/v4/util/ArraySet;->b:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 1

    .line 680
    iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->a:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 0

    .line 675
    iget-object p2, p0, Landroid/support/v4/util/ArraySet$1;->a:Landroid/support/v4/util/ArraySet;

    iget-object p2, p2, Landroid/support/v4/util/ArraySet;->a:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 700
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(I)V
    .locals 1

    .line 705
    iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->a:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 695
    iget-object p2, p0, Landroid/support/v4/util/ArraySet$1;->a:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1

    .line 685
    iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->a:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()V
    .locals 1

    .line 710
    iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->a:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->clear()V

    return-void
.end method
