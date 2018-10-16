.class Landroid/support/v7/util/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/util/a;->a(Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/util/a$a;

.field final synthetic b:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

.field final synthetic c:Landroid/support/v7/util/a;

.field private final d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v7/util/a;Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Landroid/support/v7/util/a$1;->c:Landroid/support/v7/util/a;

    iput-object p2, p0, Landroid/support/v7/util/a$1;->b:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Landroid/support/v7/util/a$a;

    invoke-direct {p1}, Landroid/support/v7/util/a$a;-><init>()V

    iput-object p1, p0, Landroid/support/v7/util/a$1;->a:Landroid/support/v7/util/a$a;

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/support/v7/util/a$1;->d:Landroid/os/Handler;

    .line 59
    new-instance p1, Landroid/support/v7/util/a$1$1;

    invoke-direct {p1, p0}, Landroid/support/v7/util/a$1$1;-><init>(Landroid/support/v7/util/a$1;)V

    iput-object p1, p0, Landroid/support/v7/util/a$1;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/support/v7/util/a$b;)V
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v7/util/a$1;->a:Landroid/support/v7/util/a$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/a$a;->b(Landroid/support/v7/util/a$b;)V

    .line 56
    iget-object p1, p0, Landroid/support/v7/util/a$1;->d:Landroid/os/Handler;

    iget-object v0, p0, Landroid/support/v7/util/a$1;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addTile(ILandroid/support/v7/util/TileList$Tile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v7/util/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 46
    invoke-static {v0, p1, p2}, Landroid/support/v7/util/a$b;->a(IILjava/lang/Object;)Landroid/support/v7/util/a$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/util/a$1;->a(Landroid/support/v7/util/a$b;)V

    return-void
.end method

.method public removeTile(II)V
    .locals 1

    const/4 v0, 0x3

    .line 51
    invoke-static {v0, p1, p2}, Landroid/support/v7/util/a$b;->a(III)Landroid/support/v7/util/a$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/util/a$1;->a(Landroid/support/v7/util/a$b;)V

    return-void
.end method

.method public updateItemCount(II)V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-static {v0, p1, p2}, Landroid/support/v7/util/a$b;->a(III)Landroid/support/v7/util/a$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/util/a$1;->a(Landroid/support/v7/util/a$b;)V

    return-void
.end method
