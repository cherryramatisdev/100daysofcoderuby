# typed: true

sig { params(args: T.any(T.proc.void, T.any)).returns(T.untyped) }
def expect(*args); end
sig { params(blk: T.untyped).returns(T.untyped) }
def eq(blk); end
def be_truthy(); end
def be_falsy(); end
sig { params(exception: T.untyped).returns(T.untyped) }
def raise_error(exception); end
