#!/bin/bash
ps aux -U root | grep -vE ' 0 +0'
