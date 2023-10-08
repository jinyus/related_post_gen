#!/usr/bin/env bash

set -eo pipefail

none="\033[0m"
red="\033[31m"
green="\033[32m"
cyan="\033[36m"

correct_counts="correct_related.json"
python_related="related_posts_python.json"

if [[ -z $(which jd) ]]; then
    echo -e ${cyan}jd${none} must be available in \$PATH: \
            ${cyan}https://github.com/josephburnett/jd${none}
    exit 1
fi

if [[ -z ${1} ]]; then
    echo -e ${cyan}Usage:${none} verify.sh [file]
    exit 2
elif [[ ! -f ${1} ]]; then
    echo -e ${red}Error:${none} ${1} does not exist!
    exit 2
fi

if [[ ! -f ${correct_counts} ]]; then
    echo Generating ${correct_counts}
    if [[ ! -f ${python_related} ]]; then
        cd python
        if [[ ! -d "venv" ]]; then
            python3 -m venv venv
        fi
        source venv/bin/activate
        pip freeze | grep ujson || pip install -qqq -r requirements.txt
        python3 related.py &>/dev/null
        deactivate
        cd ..
    fi
    jq -cf verify.jq ${python_related} > ${correct_counts}
    rm ${python_related}
fi

if jq -f verify.jq ${1} | jd -color ${correct_counts}; then
    echo -e ${green}Success:${none} ${1} is valid!
else
    echo -e ${red}Error:${none} ${1} is invalid!
    exit 1
fi
