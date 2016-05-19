# InfluxDB

Install and configure the [InfluxDB](http://influxdb.com/) service.

## Available States

#### ``influxdb``

Installs InfluxDB from [provided packages](http://influxdb.com/download/)

At the moment you **have** to specify the InfluxDB version in the
``influxdb:version`` pillar.

#### ``influxdb.cli``

Installs the [influxdb-cli](https://github.com/phstc/influxdb-cli) gem system wide.

#### ``influxdb.config``

Renders the InfluxDB configuration from data provided in the ``influxdb:conf``
pillar.

It requires the installation of the
[toml Python module](https://github.com/hit9/toml.py) via pip, for which you
have to also include the
[pip-formula](https://github.com/saltstack-formulas/pip-formula).

The formula ships with default configuration settings for various minor versions
of InfluxDB. That means that, if you define configuration settings in your
``influxdb.conf`` pillar, your settings will be merged with the default ones of
that minor version. You can set ``influxdb:no_conf_defaults`` in your pillar if
you want to completely specify the configuration yourself, without falling back
to defaults.

## Testing

Testing is done with [kitchen-salt](https://github.com/simonmcc/kitchen-salt).

Install it via bundler:

```
bundle
```

Then run test-kitchen with:

```
kitchen converge
```

Make sure the tests pass:

```
kitchen verify
```
