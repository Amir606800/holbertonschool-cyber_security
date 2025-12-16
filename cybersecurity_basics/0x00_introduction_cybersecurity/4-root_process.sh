#!/bin/bash
ps aux -U root --no-headers | grep -vE ' 0 +0'
