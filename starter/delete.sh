#!/bin/bash
 find /path/to/folder -type f -mtime +10 -exec rm -v {} \;
