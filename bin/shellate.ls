## Module shellate #####################################################
#
# Templating for Shell scripts.
#
# 
# Copyright (c) 2013 Quildreen "Sorella" Motta <quildreen@gmail.com>
# 
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation files
# (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge,
# publish, distribute, sublicense, and/or sell copies of the Software,
# and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

### -- Usage -----------------------------------------------------------
doc = '''
      Shellate --- Templating for shell scripts.

      Usage:
        shellate <files>...
        shellate [<in] [>out]
        shellate -h | --help
        shellate --version

      Options:
        -h, --help              Displays this screen and exits.
        -v, --version           Display the version and exits.
      '''

### -- Dependencies ----------------------------------------------------
{read, read-all, replace} = require '../'
{print}                   = require 'util'


### -- Aliases ---------------------------------------------------------
shellate = print . replace


### -- Main ------------------------------------------------------------
{docopt} = require 'docopt'
pkg-meta = require '../package'


let args = docopt doc, version: pkg-meta.version
    switch
    | args['<files>']?.length => shellate (read-all args['<files>'])
    | otherwise               => shellate (read '/dev/stdin')
