#!/bin/bash
sort "$1" | uniq > "$1.deduped"
