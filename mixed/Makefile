default:
	xcodebuild build -target mixed-test -configuration Debug -scheme mixed-test -derivedDataPath ./build 2>&1 | tee build.log

clean:
	xcodebuild clean -target mixed-test -configuration Debug -scheme mixed-test -derivedDataPath ./build 
