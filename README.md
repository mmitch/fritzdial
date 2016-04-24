fritzdial - simple commandline dial help for AVM Fritz!Box
==========================================================

[![Build Status](https://travis-ci.org/mmitch/fritzdial.svg?branch=master)](https://travis-ci.org/mmitch/fritzdial)
[![GPL 2+](https://img.shields.io/badge/license-GPL%202%2B-blue.svg)](http://www.gnu.org/licenses/gpl-2.0-standalone.html)


license/copyright
-----------------

Copyright (C) 2015 by  Christian Garbs <mitch@cgarbs.de>  
Licensed under GNU GPL v2 or later.


project homepage
----------------

  https://github.com/mmitch/fritzdial


installation
------------

1. run ``git submodule init`` and ``git submodule update`` after ``git clone``
   to get the Fritz modules

2. enable TR-064 remote control and dial help on your Fritz!Box

3. create a user with VoIP permissions on your Fritz!Box

4. create ``~/.fritzdialrc`` with the following key/value pairs:
    ```
    username = <fritzbox user>
    password = <fritzbox user's password>
    ```
    
5. if you want to enable SSL, add this line to ``~/.fritzdialrc``:
    ```
    url = https://fritz.box:49443
    ```
   see Fritz documentation for more options (look for ``upnp_url``)

6. to set up dial shortcuts, just list any additional keys in ``~/.fritzdialrc``:
    ```
    mom  = 555 41234
    work = 555 12345
    ```
   if multiple shortcuts map to the same number, the last one is used for
   reverse lookups (showing names instead of numbers in the calllist)

7. don't forget to update the submodule after a ``git update``, just run
   ``git submodule update`` again


usage
-----

* run ``fritzdial.pl`` to use it interactively

* run ``fritzdial.pl -`` to read commands from stdin (no ``Term::ReadLine`` used)


test suite
----------

The ``features`` directory contains Cucumber test files (features,
step definition and some stubbing magic).

To run the tests, install ``Test::BDD::Cucumber`` and ``Expect`` and
run the ``pherkin`` command.
