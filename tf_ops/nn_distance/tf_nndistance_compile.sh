/usr/local/cuda-9.0/bin/nvcc -std=c++11 -c -o tf_nndistance_g.cu.o tf_nndistance_g.cu -I ~/anaconda3/envs/mainenv/lib/python3.6/site-packages/tensorflow/include -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC -O2 && g++ -std=c++11 tf_nndistance.cpp tf_nndistance_g.cu.o -o tf_nndistance_so.so -shared -fPIC -I ~/anaconda3/envs/mainenv/lib/python3.6/site-packages/tensorflow/include -L /usr/local/cuda-9.0/lib64 -O2

