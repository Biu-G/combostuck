.class Landroid/support/design/widget/b$e;
.super Landroid/support/design/widget/b$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;)V
    .locals 1

    .line 689
    iput-object p1, p0, Landroid/support/design/widget/b$e;->a:Landroid/support/design/widget/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/b$f;-><init>(Landroid/support/design/widget/b;Landroid/support/design/widget/b$1;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    .line 693
    iget-object v0, p0, Landroid/support/design/widget/b$e;->a:Landroid/support/design/widget/b;

    iget v0, v0, Landroid/support/design/widget/b;->k:F

    return v0
.end method
