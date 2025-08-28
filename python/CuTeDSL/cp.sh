# install nvidia_cutlass_dsl
# cp -r .../python3.12/site-packages/nvidia_cutlass_dsl python/CuTeDSL/nvidia_cutlass_dsl
# eg:
# cp -r /usr/lib/python3.12/site-packages/nvidia_cutlass_dsl python/CuTeDSL/nvidia_cutlass_dsl
# cp -r .pixi/envs/default/lib/python3.12/site-packages/nvidia_cutlass_dsl python/CuTeDSL/nvidia_cutlass_dsl

ln -s $PWD/python/CuTeDSL/nvidia_cutlass_dsl/python_packages/cutlass/_mlir $PWD/python/CuTeDSL/cutlass/
ln -s $PWD/python/CuTeDSL/base_dsl $PWD/python/CuTeDSL/cutlass/
ln -s $PWD/python/CuTeDSL/cutlass_dsl $PWD/python/CuTeDSL/cutlass/

ln -s $PWD/python/CuTeDSL/nvidia_cutlass_dsl/lib $PWD/python/CuTeDSL/
ln -s $PWD/python/CuTeDSL/nvidia_cutlass_dsl/python_packages/cutlass/base_dsl/runtime/dlpack_runtime.*.so \
  $PWD/python/CuTeDSL/cutlass/base_dsl/runtime/

export PYTHONPATH="$PWD/python/CuTeDSL:$PYTHONPATH"
