#!/usr/bin/env bash

s3cmd -r get $1/images /code
python /code/run.py code
s3cmd -r put /code/odm_orthophoto $1/
s3cmd -r put /code/odm_georeferencing $1/
