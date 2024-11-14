set -e

(
cd "$(dirname "$0")"
cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=~/vcpkg/scripts/buildsystems/vcpkg.cmake
cmake --build ./build

)


exec ./build/http_server "$@"