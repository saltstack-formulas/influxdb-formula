
Changelog
=========

`0.3.0 <https://github.com/saltstack-formulas/influxdb-formula/compare/v0.2.1...v0.3.0>`_ (2019-08-25)
----------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **gemfile:** don't put Gemfile.lock in repo (\ `c20c491 <https://github.com/saltstack-formulas/influxdb-formula/commit/c20c491>`_\ )
* **install:** fix systemd unit install on Suse (\ `94c5367 <https://github.com/saltstack-formulas/influxdb-formula/commit/94c5367>`_\ )
* **state:** fix int comparison (\ `4874c05 <https://github.com/saltstack-formulas/influxdb-formula/commit/4874c05>`_\ )
* **states:** use curl instead of wget (not installed everywhere) (\ `cfdfc38 <https://github.com/saltstack-formulas/influxdb-formula/commit/cfdfc38>`_\ )

Code Refactoring
^^^^^^^^^^^^^^^^


* **kitchen:** sync Kitchene file with template-formula (\ `5d40aec <https://github.com/saltstack-formulas/influxdb-formula/commit/5d40aec>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **travis:** default-debian-9-develop-py3 is buggy (\ `ec3e57d <https://github.com/saltstack-formulas/influxdb-formula/commit/ec3e57d>`_\ )
* **travis:** re-enable tests on default-debian-9-develop-py3 (\ `70f8d6f <https://github.com/saltstack-formulas/influxdb-formula/commit/70f8d6f>`_\ )
* **travis:** run tests first (\ `13a55a7 <https://github.com/saltstack-formulas/influxdb-formula/commit/13a55a7>`_\ )

Documentation
^^^^^^^^^^^^^


* **readme:** update readme and add some documentation (\ `d1fad82 <https://github.com/saltstack-formulas/influxdb-formula/commit/d1fad82>`_\ )

Features
^^^^^^^^


* **yamllint:** include for this repo and apply rules throughout (\ `f9e638c <https://github.com/saltstack-formulas/influxdb-formula/commit/f9e638c>`_\ )

Styles
^^^^^^


* **misc:** fix coding style (\ `cece6c8 <https://github.com/saltstack-formulas/influxdb-formula/commit/cece6c8>`_\ )

Tests
^^^^^


* **inspec:** use inspec to run tests (\ `34625cc <https://github.com/saltstack-formulas/influxdb-formula/commit/34625cc>`_\ )
* **kitchen:** add binstub for Kitchen (\ `77791d1 <https://github.com/saltstack-formulas/influxdb-formula/commit/77791d1>`_\ )
* **kitchen:** fix InfluxDB version in test pillar (and pillar.example) (\ `59d23b3 <https://github.com/saltstack-formulas/influxdb-formula/commit/59d23b3>`_\ )
* **kitchen:** update Gemfile (\ `630d762 <https://github.com/saltstack-formulas/influxdb-formula/commit/630d762>`_\ )
* **kitchen:** update test pillar (\ `3af72f6 <https://github.com/saltstack-formulas/influxdb-formula/commit/3af72f6>`_\ )

0.0.2 / 2014-08-20
------------------


* Use default mapping on the main state

0.0.1 / 2014-08-20
------------------


* Initial release


.. raw:: html

   <!--
    vi: set ft=markdown :
   -->

