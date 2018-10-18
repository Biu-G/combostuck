.class Landroid/support/v7/graphics/drawable/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/graphics/drawable/a;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/graphics/drawable/a;


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/drawable/a;)V
    .locals 0

    .line 471
    iput-object p1, p0, Landroid/support/v7/graphics/drawable/a$1;->a:Landroid/support/v7/graphics/drawable/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 474
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/a$1;->a:Landroid/support/v7/graphics/drawable/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/a;->a(Z)V

    .line 475
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/a$1;->a:Landroid/support/v7/graphics/drawable/a;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/a;->invalidateSelf()V

    return-void
.end method
