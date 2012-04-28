Redmine Post Script
========================================
USE THIS PLUGIN AT YOUR OWN RISK!

This plugin execute any ruby script after observable objects created. 
For example, issue, journals, and so on.

Installation
-----------------------------
Type below commands:

    $ cd $RAILS_ROOT/vender/plugins
    $ git clone git://github.com/suer/redmine_post_script.git

Write a ruby code: $RAILS_ROOT/vender/plugins/redmine_post_script/bin/post_script.rb

post_script.rb is evaluated after observable objects created.

Authors
-----------------------------

* @suer

Requirements
----------------------------

* Redmine 1.4 or later

License
----------------------------
The MIT License (MIT) Copyright (c) 2012 suer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

