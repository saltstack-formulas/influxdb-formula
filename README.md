# InfluxDB

Install and configure the [InfluxDB](http://influxdb.com/) service.

[pip-formula](https://github.com/saltstack-formulas/pip-formula) for installing
the [toml Python module](https://github.com/hit9/toml.py), so please configure
that formula also.


## Available States

#### ``influxdb``

Installs InfluxDB from [provided packages](http://influxdb.com/download/)

#### ``influxdb.cli``

Installs the [influxdb-cli](https://github.com/phstc/influxdb-cli) gem system wide.

#### ``influxdb.config``

Renders the InfluxDB configuration from data provided in the ``influxdb:conf``
pillar.

It requires the installation of the
[toml Python module](https://github.com/hit9/toml.py) via pip, for which you
have to also include the
[pip-formula](https://github.com/saltstack-formulas/pip-formula).

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

## Author

[Alfredo Palhares](https://github.com/masterkorp) \<afp@seegno.com\>
