# Install stuff

Do

```
brew install wxmac
```

check:

```
which wx-config
```

it should return **NOT** return  `/usr/bin/wx-config` (`/usr/local/bin/wx-config` should be good).

# Compile and run

Run

```
cabal install wx cabal-macosx
```

To compile:

```
ghc -package wx -o hello Hello.hs
```

and the run `./hello`.

To interpret:

```
ghci hello
```
.