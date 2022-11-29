export ANDROIDSDK="/Users/anshdubey/Library/Android/sdk"
export ANDROIDNDK="/Users/anshdubey/Library/Android/sdk/ndk/25.1.8937393"
export ANDROIDAPI="30"  # Target API version of your application
export NDKAPI="21"  # Minimum supported API version of your application

#p4a clean_builds
#p4a clean_dists
p4a apk --private . \
    --package=xyz.ansh.test \
    --name "TestAppName" \
    --version 0.1 \
    --blacklist=./blacklist.txt \
    --bootstrap=webview \
    --requirements=python3,flask,flask_cors \
    --permission INTERNET --permission WRITE_EXTERNAL_STORAGE \
    --port=5000 --icon icon.png \
    --arch=armeabi-v7a \
    --debug
