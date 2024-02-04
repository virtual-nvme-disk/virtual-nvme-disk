#!/bin/bash

set -e

CURR_DIR=$(readlink -f $(dirname $0))
source ${CURR_DIR}/common.sh

mgr_id=$(format_id $1)
port_num=$2
tr_addr=$3
tr_svc_id=$4
pv_path=$5

vg_name=$(get_vg_name ${mgr_id})

lvm_pv_and_vg_create ${pv_path} ${vg_name}
nvmet_prepare ${port_num} ${tr_addr} ${tr_svc_id}

echo "done"
