for utilPath in src/**/*.ts;
do
    # if util is `index.ts` skip to the next element
    if [ $utilPath == "src/index.ts" ] || [ $utilPath == "src/constants/index.ts" ];
    then
        continue
    fi;

    # ignore src/typechain/ folder
    if [[ $utilPath == src/typechain/* ]];
    then
        continue
    fi;

    # cache util file name
    ## remove the longest string from left to right
    ## which ends in "/"
    utilFileName=${utilPath##*/}
    ## remove the longest string from right to left
    ## which starts with "."
    utilFileName=${utilFileName%%.*}

    utilHasTest=0

    for testPath in tests/**/*.test.ts;
    do
        # cache test file name
        ## remove the longest string from left to right
        ## which ends in "/"
        testFileName=${testPath##*/}
        ## remove the longest string from right to left
        ## which starts with "."
        testFileName=${testFileName%%.*}

        # compare util and test name
        # is test is present, then it should set `utilHasTest` to true
        if [ "$utilFileName" == "$testFileName" ];
        then
            utilHasTest=1
        fi;
    done

    # exit with error if util does not have a test
    if [ "$utilHasTest" == "0" ];
    then
        echo "The file \`$utilFileName.ts\` does not have any tests. Please add tests for the features and functions in this file."
        exit 1
    fi;
done