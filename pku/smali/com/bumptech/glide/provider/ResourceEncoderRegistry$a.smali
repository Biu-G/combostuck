.class final Lcom/bumptech/glide/provider/ResourceEncoderRegistry$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/provider/ResourceEncoderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/ResourceEncoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$a;->b:Ljava/lang/Class;

    .line 48
    iput-object p2, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$a;->a:Lcom/bumptech/glide/load/ResourceEncoder;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Class;)Z
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/provider/ResourceEncoderRegistry$a;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
