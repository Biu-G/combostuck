.class Landroid/support/v4/print/PrintHelper$b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$b$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/print/PrintHelper$b$1;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$b$1;)V
    .locals 0

    .line 429
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$b$1$1;->a:Landroid/support/v4/print/PrintHelper$b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 432
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$b$1$1;->a:Landroid/support/v4/print/PrintHelper$b$1;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$b$1;->e:Landroid/support/v4/print/PrintHelper$b;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelper$b;->a()V

    .line 433
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$b$1$1;->a:Landroid/support/v4/print/PrintHelper$b$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelper$b$1;->cancel(Z)Z

    return-void
.end method
