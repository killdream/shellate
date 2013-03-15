## Module shellate
#
# Templating for Shell scripts.
#
# 
# Copyright (c) $(date +%Y) Quildreen "Sorella" Motta <quildreen@gmail.com>
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


### -- Dependencies ----------------------------------------------------
fs           = require 'fs'
spice        = require 'spice'


### -- Helpers ---------------------------------------------------------

#### λ read
# Reads a file from the given path.
#
# :: String -> String
read = (name) -> fs.read-file-sync name, 'utf-8'

#### λ read-all
# Reads all files and returns the concatenated text.
#
# :: [String] -> String
read-all = (xs) -> (xs.map read) .join ''

#### λ replace
# Processes an input replacing env variables by their values.
#
# :: String -> String
replace = (text) -> spice text, process.env




### -- Exports ---------------------------------------------------------
module.exports = { read, read-all, replace }
