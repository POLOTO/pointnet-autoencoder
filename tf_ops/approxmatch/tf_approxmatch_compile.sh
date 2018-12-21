#/bin/bash

# TF1.4
/usr/local/cuda-9.0/bin/nvcc tf_approxmatch_g.cu -o tf_approxmatch_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
g++ -std=c++11 tf_approxmatch.cpp tf_approxmatch_g.cu.o -o tf_approxmatch_so.so -shared -fPIC -I  ~/anaconda3/envs/mainenv/lib/python3.6/site-packages/tensorflow/include -I /usr/local/cuda-9.0/include -L /usr/local/cuda-9.0/include/lib64/ -O2
