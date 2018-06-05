schedule(X, Y, Z) :- enroll (X, K), where(K, Y), when(K, Z)

usage (X, Y) :- where (K, X), when (K, Y)

conflict (X, Y) :- when(X, K), where (X, W), when(Y, K), where (Y, W)

meet (X, Y) :- enroll(X, K), where (K, W), when (K, T)