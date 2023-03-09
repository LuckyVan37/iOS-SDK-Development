# 参数
scheme="NKTestOCFramework"
framework_name=${scheme}
archive_path="archives"
archive_iphoneos_path="${archive_path}/iphoneos.xcarchive"
archive_iphone_simulator_path="${archive_path}/iphonesimulator.xcarchive"
out_dir="./"

# 清理
function build_clean() {
    echo "======build_clean======"

    rm -rf ./archives
    rm -rf ./${out_dir}
} 

# 编译
function build_framework {
    echo "======build_framework======"
    
    xcodebuild archive -scheme ${scheme} -sdk iphoneos -archivePath ${archive_iphoneos_path} BUILD_LIBRARY_FOR_DISTRIBUTION=YES SKIP_INSTALL=NO || exit 1

    xcodebuild archive -scheme ${scheme} -sdk iphonesimulator -archivePath ${archive_iphone_simulator_path} BUILD_LIBRARY_FOR_DISTRIBUTION=YES SKIP_INSTALL=NO || exit 1
}

# 合并
function build_xcframework() {
    echo "======build_xcframework======"

    xcodebuild -create-xcframework -framework "${archive_iphoneos_path}/Products/Library/Frameworks/${scheme}.framework" -framework "${archive_iphone_simulator_path}/Products/Library/Frameworks/${scheme}.framework" -output ${out_dir}/${framework_name}.xcframework || exit 1
}

# 压缩
function build_zip {
    echo "======build_zip======"

    cd ${out_dir}
    time=`date +%y%m%d%H%M%S`
    name=${framework_name}_${time}.zip
    zip -r -m -o ${framework_name}.xcframework.zip ${framework_name}.xcframework || exit 1
}

# 调用
build_clean
build_framework
build_xcframework
build_zip