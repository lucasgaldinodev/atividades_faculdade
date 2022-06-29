def genKey(p, q):
    print(f'Primo 1 -> {p}')
    print(f'Primo 2 -> {q}')

    n = p * q
    print(f'Valor de N -> {n}')

    on = (p - 1) * (q - 1)
    print(f'Valor de O(N) -> {on}')

    return (n, on)


pk = genKey(47, 71)
print(pk)
