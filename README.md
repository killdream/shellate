# Shellate

[![Build Status](https://travis-ci.org/killdream/shellate.png)](https://travis-ci.org/killdream/shellate)

Templating for Shell scripts.


### Example

```bash
# Just give it some files
$ echo "There's no place like {:HOME}" > template
$ shellate template
# => There's no place like /home/queen

# Or pipe it through the STDIN like a boss
$ echo "There's no place like {:HOME}" | shellate
# => There's no place like /home/queen
``` 


### Installing

Just grab it from NPM:

    $ npm install -g shellate


### Documentation

A quick reference of the API can be built using [Calliope][]:

    $ npm install -g calliope
    $ calliope build


### Tests

You can run all tests using Mocha:

    $ npm test


### Licence

MIT/X11. ie.: do whatever you want.

[Calliope]: https://github.com/killdream/calliope
[es5-shim]: https://github.com/kriskowal/es5-shim
