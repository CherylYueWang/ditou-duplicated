#
# Requires download and extraction of IHDP_100. See README.md
#

mkdir results
mkdir results/example_ihdp

export CUDA_VISIBLE_DEVICES=0

# run the param search for 20 iterations.
python cfr_param_search.py configs/example_ihdp.txt 20

python evaluate.py configs/example_ihdp.txt 1
