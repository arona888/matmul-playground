if [[ "$1" == "DEBUG" ]]; then
flags="-O0 -G -g --generate-line-info"
else
flags="-O3 -DNDEBUG -G -g --generate-line-info"
fi

nvcc $flags --generate-code=arch=compute_75,code=[compute_75,sm_75] --ptxas-options=-v --expt-relaxed-constexpr -std=c++17 -lcublas src/unity.cu