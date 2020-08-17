#!/usr/bin/env bash

## call external file
source location.conf	

if [[ -z $output_pass ]]; then
	touch $output_pass
fi		

lynx --dump $pass | \
jq '.response[]' > $output_pass

printf "Your location:\n" && \
cat location.conf && printf "\n\n" && \
cat $output_pass && \
printf "\n"