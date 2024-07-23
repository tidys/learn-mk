if [ -z "$NDK_ROOT" ]; then
    NDK_ROOT=$(pwd)/android-ndk-r12b
fi

APP_ANDROID_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $APP_ANDROID_ROOT
rm -rf "$APP_ANDROID_ROOT"/obj
rm -rf "$APP_ANDROID_ROOT"/libs
"$NDK_ROOT"/build/ndk-build -j4 -C "$APP_ANDROID_ROOT" $* \
            "NDK_MODULE_PATH=${APP_ANDROID_ROOT}"