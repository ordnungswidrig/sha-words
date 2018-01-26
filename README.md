# sha-words

A clojure program to turn a sha hash into list of nouns in a predictable jar.

## Usage

```
$ java -jar sha-words.jar b67d6eafeae1d5a424a609864fad10665453afa5
```

Actually any hex number should work fine. It happens to be optimized for 64bits.

## Example

```
$ git rev-parse HEAD
5379784cf5f6ebf5cc62cf8b9972870bb4e42c05

$ git rev-parse HEAD | xargs java -jar sha-words.jar
observation-obedient-bedroom-sweet-electric
```

## License

Copyright © 2018 Philipp Meier

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
