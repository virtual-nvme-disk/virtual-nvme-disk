#!/bin/bash

server_A_ip=<replace_with_server_A_ip>
server_B_ip=<replace_with_server_B_ip>
host_name_A="host_A"
host_name_B="host_B"
stripe_cnt=2
cntlr_cnt=2

global_id=1

stripe0_thinmeta_grp0_leg0_l1_mgr_id=${global_id} && global_id=$((global_id+1))
stripe0_thinmeta_grp0_leg0_l1_pv_path=/dev/loop241
stripe0_thinmeta_grp0_leg0_l1_port_num=1
stripe0_thinmeta_grp0_leg0_l1_tr_addr=$server_A_ip
stripe0_thinmeta_grp0_leg0_l1_tr_svc_id=4410

stripe0_thinmeta_grp0_leg1_l1_mgr_id=${global_id} && global_id=$((global_id+1))
stripe0_thinmeta_grp0_leg1_l1_pv_path=/dev/loop241
stripe0_thinmeta_grp0_leg1_l1_port_num=1
stripe0_thinmeta_grp0_leg1_l1_tr_addr=$server_B_ip
stripe0_thinmeta_grp0_leg1_l1_tr_svc_id=4410

stripe0_thindata_grp0_leg0_l1_mgr_id=${global_id} && global_id=$((global_id+1))
stripe0_thindata_grp0_leg0_l1_pv_path=/dev/loop242
stripe0_thindata_grp0_leg0_l1_port_num=2
stripe0_thindata_grp0_leg0_l1_tr_addr=$server_A_ip
stripe0_thindata_grp0_leg0_l1_tr_svc_id=4411

stripe0_thindata_grp0_leg1_l1_mgr_id=${global_id} && global_id=$((global_id+1))
stripe0_thindata_grp0_leg1_l1_pv_path=/dev/loop242
stripe0_thindata_grp0_leg1_l1_port_num=2
stripe0_thindata_grp0_leg1_l1_tr_addr=$server_B_ip
stripe0_thindata_grp0_leg1_l1_tr_svc_id=4411

stripe1_thinmeta_grp0_leg0_l1_mgr_id=${global_id} && global_id=$((global_id+1))
stripe1_thinmeta_grp0_leg0_l1_pv_path=/dev/loop243
stripe1_thinmeta_grp0_leg0_l1_port_num=3
stripe1_thinmeta_grp0_leg0_l1_tr_addr=$server_A_ip
stripe1_thinmeta_grp0_leg0_l1_tr_svc_id=4412

stripe1_thinmeta_grp0_leg1_l1_mgr_id=${global_id} && global_id=$((global_id+1))
stripe1_thinmeta_grp0_leg1_l1_pv_path=/dev/loop243
stripe1_thinmeta_grp0_leg1_l1_port_num=3
stripe1_thinmeta_grp0_leg1_l1_tr_addr=$server_B_ip
stripe1_thinmeta_grp0_leg1_l1_tr_svc_id=4412

stripe1_thindata_grp0_leg0_l1_mgr_id=${global_id} && global_id=$((global_id+1))
stripe1_thindata_grp0_leg0_l1_pv_path=/dev/loop244
stripe1_thindata_grp0_leg0_l1_port_num=4
stripe1_thindata_grp0_leg0_l1_tr_addr=$server_A_ip
stripe1_thindata_grp0_leg0_l1_tr_svc_id=4413

stripe1_thindata_grp0_leg1_l1_mgr_id=${global_id} && global_id=$((global_id+1))
stripe1_thindata_grp0_leg1_l1_pv_path=/dev/loop244
stripe1_thindata_grp0_leg1_l1_port_num=4
stripe1_thindata_grp0_leg1_l1_tr_addr=$server_B_ip
stripe1_thindata_grp0_leg1_l1_tr_svc_id=4413

stripe0_l2_prim_mgr_id=${global_id} && global_id=$((global_id+1))
stripe0_l2_prim_port_num=5
stripe0_l2_prim_tr_addr=$server_A_ip
stripe0_l2_prim_tr_svc_id=4420

stripe0_l2_sec0_mgr_id=${global_id} && global_id=$((global_id+1))
stripe0_l2_sec0_port_num=5
stripe0_l2_sec0_tr_addr=$server_B_ip
stripe0_l2_sec0_tr_svc_id=4420

stripe1_l2_prim_mgr_id=${global_id} && global_id=$((global_id+1))
stripe1_l2_prim_port_num=6
stripe1_l2_prim_tr_addr=$server_B_ip
stripe1_l2_prim_tr_svc_id=4421

stripe1_l2_sec0_mgr_id=${global_id} && global_id=$((global_id+1))
stripe1_l2_sec0_port_num=6
stripe1_l2_sec0_tr_addr=$server_A_ip
stripe1_l2_sec0_tr_svc_id=4421

l3_cntlr0_mgr_id=${global_id} && global_id=$((global_id+1))
l3_cntlr0_port_num=7
l3_cntlr0_tr_addr=$server_A_ip
l3_cntlr0_tr_svc_id=4430
l3_cntlr0_cntlid_min=11
l3_cntlr0_cntlid_max=20

l3_cntlr1_mgr_id=${global_id} && global_id=$((global_id+1))
l3_cntlr1_port_num=7
l3_cntlr1_tr_addr=$server_B_ip
l3_cntlr1_tr_svc_id=4430
l3_cntlr1_cntlid_min=21
l3_cntlr1_cntlid_max=30

vd_id=${global_id} && global_id=$((global_id+1))
vd_internal_id=1

stripe0_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe0_thinpool_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe0_thinmeta_grp0_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe0_thinmeta_grp0_leg0_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe0_thinmeta_grp0_leg1_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe0_thindata_grp0_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe0_thindata_grp0_leg0_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe0_thindata_grp0_leg1_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))

stripe1_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe1_thinpool_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe1_thinmeta_grp0_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe1_thinmeta_grp0_leg0_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe1_thinmeta_grp0_leg1_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe1_thindata_grp0_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe1_thindata_grp0_leg0_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))
stripe1_thindata_grp0_leg1_id=${vd_internal_id} && vd_internal_id=$((vd_internal_id+1))

thinmeta_raid1meta_mb=1
thinmeta_raid1data_mb=10
thindata_raid1meta_mb=2
thindata_raid1data_mb=100
thinmeta_leg_mb=$((thinmeta_raid1meta_mb+thinmeta_raid1data_mb))
thindata_leg_mb=$((thindata_raid1meta_mb+thindata_raid1data_mb))
thindev_mb=1000

final_tgt_nqn="nqn.2024-01.io.vnd.37833e0135d44e5ab0a1fff158b9d03b:00000000:0000000f:0003:00000000"
external_host_nqn="nqn.2014-08.org.nvmexpress:uuid:16c2fe2c-94fd-4a9b-b0d2-fab74d3fb38b"
