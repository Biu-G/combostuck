.class public interface abstract Lorg/xutils/common/Callback$TypedCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xutils/common/Callback$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TypedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$CommonCallback<",
        "TResultType;>;"
    }
.end annotation


# virtual methods
.method public abstract getLoadType()Ljava/lang/reflect/Type;
.end method