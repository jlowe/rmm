# Copyright (c) 2018-2019, NVIDIA CORPORATION.

# This assumes the script is executed from the root of the repo directory
if [[ -z "$PROJECT_FLASH" || "$PROJECT_FLASH" == "0" ]]; then
  ./build.sh -v clean librmm --cmake-args=\"-DCMAKE_INSTALL_LIBDIR=lib\"
else
  ./build.sh -v clean librmm tests benchmarks --cmake-args=\"-DCMAKE_INSTALL_LIBDIR=lib\"
fi
