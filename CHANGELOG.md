# Changelog

## [0.3.3](https://github.com/saltstack-formulas/influxdb-formula/compare/v0.3.2...v0.3.3) (2020-12-16)


### Bug Fixes

* **release.config.js:** use full commit hash in commit link [skip ci] ([4f2c4a5](https://github.com/saltstack-formulas/influxdb-formula/commit/4f2c4a5973fb458ca02c0f1dd6c0dca2c2f65d8c))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([9ac0fac](https://github.com/saltstack-formulas/influxdb-formula/commit/9ac0facd41b53807362e77800dfa68b1e70f22d7))
* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([78abe11](https://github.com/saltstack-formulas/influxdb-formula/commit/78abe118ef5437306c3c179224d955a6d51a40c4))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([09e1ffe](https://github.com/saltstack-formulas/influxdb-formula/commit/09e1ffec12a94f76a4ba6c43dedb237ef2709abc))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([f2ba8bd](https://github.com/saltstack-formulas/influxdb-formula/commit/f2ba8bd011d19471c2d7e1cec2255bab45dbbe22))
* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([1ada26c](https://github.com/saltstack-formulas/influxdb-formula/commit/1ada26c8fc6b1775c3c629925f6f46733fb349f5))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([489ac8c](https://github.com/saltstack-formulas/influxdb-formula/commit/489ac8c796a97194a028237cd8e06196cd96a559))
* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([5ca8b9a](https://github.com/saltstack-formulas/influxdb-formula/commit/5ca8b9a0ea964378a106162b1c9430dff0577d5a))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([d8372de](https://github.com/saltstack-formulas/influxdb-formula/commit/d8372ded6b29dac3d00509ff884cfc86879b5269))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([61edc79](https://github.com/saltstack-formulas/influxdb-formula/commit/61edc797f94783cc76104af95910aad7f17d66b9))
* **pre-commit:** add to formula [skip ci] ([172b5b4](https://github.com/saltstack-formulas/influxdb-formula/commit/172b5b45c01e3a9802fe1e832d316e835ff49381))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([fabc9eb](https://github.com/saltstack-formulas/influxdb-formula/commit/fabc9eb9d3803619200260ccc9f203a49bf44ee9))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([c80c66e](https://github.com/saltstack-formulas/influxdb-formula/commit/c80c66eea00773693ad5175ec57387cc01f1dd19))
* **travis:** add notifications => zulip [skip ci] ([0bc4566](https://github.com/saltstack-formulas/influxdb-formula/commit/0bc456623511153e000f4644f0cffeafc2aa044c))
* **travis:** apply changes from build config validation [skip ci] ([c4ade2b](https://github.com/saltstack-formulas/influxdb-formula/commit/c4ade2b8971b6ef065ea324b5a4ffcf799766910))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([b09be58](https://github.com/saltstack-formulas/influxdb-formula/commit/b09be58fd99ef57b42bc1c6d83eeace9005ee884))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([c8f134e](https://github.com/saltstack-formulas/influxdb-formula/commit/c8f134ebd4fe919d8cf8ad5aaa7fe154d6d2eebb))
* **travis:** run `shellcheck` during lint job [skip ci] ([2994fa6](https://github.com/saltstack-formulas/influxdb-formula/commit/2994fa6301aea395c871704a0308b281ed8e854e))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([834e3df](https://github.com/saltstack-formulas/influxdb-formula/commit/834e3df3c8c22b82f50e5e0d62545c8bbdf61b63))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([3d280b1](https://github.com/saltstack-formulas/influxdb-formula/commit/3d280b14a7b0ebbac236987078fca62b3fd54fe3))
* **travis:** use build config validation (beta) [skip ci] ([b6cc703](https://github.com/saltstack-formulas/influxdb-formula/commit/b6cc703133f23594295915f80a1c6eb2ac052273))
* **workflows/commitlint:** add to repo [skip ci] ([d80c8c6](https://github.com/saltstack-formulas/influxdb-formula/commit/d80c8c63a159e3c22227153f7527cb0c1547d552))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([ff4f0fd](https://github.com/saltstack-formulas/influxdb-formula/commit/ff4f0fd5ea0556adb0b5aa92f67917dafc796276))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([f6d3bfb](https://github.com/saltstack-formulas/influxdb-formula/commit/f6d3bfbd0759bc28a1b3f6d2fe075f3e99fc9778))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([b995d48](https://github.com/saltstack-formulas/influxdb-formula/commit/b995d4888126b9119234e1fdf8fd1acfa3327b2b))

## [0.3.2](https://github.com/saltstack-formulas/influxdb-formula/compare/v0.3.1...v0.3.2) (2019-10-12)


### Bug Fixes

* **rubocop:** add fixes using `rubocop --safe-auto-correct` ([](https://github.com/saltstack-formulas/influxdb-formula/commit/a9245c2))


### Continuous Integration

* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/influxdb-formula/commit/b8049e2))
* **travis:** merge `rubocop` linter into main `lint` job ([](https://github.com/saltstack-formulas/influxdb-formula/commit/84c5486))

## [0.3.1](https://github.com/saltstack-formulas/influxdb-formula/compare/v0.3.0...v0.3.1) (2019-10-10)


### Bug Fixes

* **map.jinja:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/influxdb-formula/commit/d7b9682))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/influxdb-formula/commit/cbf8691))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/influxdb-formula/commit/a4718ee))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/influxdb-formula/commit/6690ed8))
* **kitchen+travis:** replace EOL pre-salted images ([](https://github.com/saltstack-formulas/influxdb-formula/commit/8d1a0ae))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([](https://github.com/saltstack-formulas/influxdb-formula/commit/c651f74))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/influxdb-formula/commit/ecfe10d))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/influxdb-formula/commit/9f4f588))
* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([](https://github.com/saltstack-formulas/influxdb-formula/commit/e36e78a))

# [0.3.0](https://github.com/saltstack-formulas/influxdb-formula/compare/v0.2.1...v0.3.0) (2019-08-25)


### Bug Fixes

* **gemfile:** don't put Gemfile.lock in repo ([c20c491](https://github.com/saltstack-formulas/influxdb-formula/commit/c20c491))
* **install:** fix systemd unit install on Suse ([94c5367](https://github.com/saltstack-formulas/influxdb-formula/commit/94c5367))
* **state:** fix int comparison ([4874c05](https://github.com/saltstack-formulas/influxdb-formula/commit/4874c05))
* **states:** use curl instead of wget (not installed everywhere) ([cfdfc38](https://github.com/saltstack-formulas/influxdb-formula/commit/cfdfc38))


### Code Refactoring

* **kitchen:** sync Kitchene file with template-formula ([5d40aec](https://github.com/saltstack-formulas/influxdb-formula/commit/5d40aec))


### Continuous Integration

* **travis:** default-debian-9-develop-py3 is buggy ([ec3e57d](https://github.com/saltstack-formulas/influxdb-formula/commit/ec3e57d))
* **travis:** re-enable tests on default-debian-9-develop-py3 ([70f8d6f](https://github.com/saltstack-formulas/influxdb-formula/commit/70f8d6f))
* **travis:** run tests first ([13a55a7](https://github.com/saltstack-formulas/influxdb-formula/commit/13a55a7))


### Documentation

* **readme:** update readme and add some documentation ([d1fad82](https://github.com/saltstack-formulas/influxdb-formula/commit/d1fad82))


### Features

* **yamllint:** include for this repo and apply rules throughout ([f9e638c](https://github.com/saltstack-formulas/influxdb-formula/commit/f9e638c))


### Styles

* **misc:** fix coding style ([cece6c8](https://github.com/saltstack-formulas/influxdb-formula/commit/cece6c8))


### Tests

* **inspec:** use inspec to run tests ([34625cc](https://github.com/saltstack-formulas/influxdb-formula/commit/34625cc))
* **kitchen:** add binstub for Kitchen ([77791d1](https://github.com/saltstack-formulas/influxdb-formula/commit/77791d1))
* **kitchen:** fix InfluxDB version in test pillar (and pillar.example) ([59d23b3](https://github.com/saltstack-formulas/influxdb-formula/commit/59d23b3))
* **kitchen:** update Gemfile ([630d762](https://github.com/saltstack-formulas/influxdb-formula/commit/630d762))
* **kitchen:** update test pillar ([3af72f6](https://github.com/saltstack-formulas/influxdb-formula/commit/3af72f6))

0.0.2 / 2014-08-20
==================

 * Use default mapping on the main state

0.0.1 / 2014-08-20
==================

 * Initial release

<!--
 vi: set ft=markdown :
-->
