# -*- coding: utf-8 -*-

try:
  import pytoml as toml
except:
  import toml

def dumps(data):
  return toml.dumps(data)
