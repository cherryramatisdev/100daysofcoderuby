# typed: true

sig { params(args: T.any(T.proc.void, T.any)).returns(T.untyped) }
def expect(*args); end
sig { params(blk: T.untyped).returns(T.untyped) }
def eq(blk); end
sig { params(exception: T.untyped).returns(T.untyped) }
def raise_error(exception); end
