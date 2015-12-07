#!/usr/bin/env bash
rm -rf gen-javabean src/manning/schema
thrift -r --gen java:beans,hashcode,nocamel src/schema.thrift
mv gen-javabean/manning/schema src/manning/
rm -rf gen-javabean
