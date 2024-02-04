#!/bin/bash

set -e

CURR_DIR=$(readlink -f $(dirname $0))
source ${CURR_DIR}/common.sh

mgr_id=$(format_id $1)
port_num=$2
pv_path=$3

vg_name=$(get_vg_name ${mgr_id})

nvmet_cleanup ${port_num}
lvm_pv_and_vg_delete ${pv_path} ${vg_name}

echo "done"
