.class Landroid/support/v7/app/AppCompatDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDialog;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDialog$1;->a:Landroid/support/v7/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDialog$1;->a:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDialog;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
