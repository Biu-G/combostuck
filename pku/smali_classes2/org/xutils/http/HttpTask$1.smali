.class Lorg/xutils/http/HttpTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/HttpTask;->onFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/http/HttpTask;


# direct methods
.method constructor <init>(Lorg/xutils/http/HttpTask;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lorg/xutils/http/HttpTask$1;->a:Lorg/xutils/http/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/xutils/http/HttpTask$1;->a:Lorg/xutils/http/HttpTask;

    invoke-static {v0}, Lorg/xutils/http/HttpTask;->a(Lorg/xutils/http/HttpTask;)V

    return-void
.end method
