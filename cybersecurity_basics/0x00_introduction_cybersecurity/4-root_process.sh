#!/bin/bash
ps u -U root | grep -vE ' 0 +0'
