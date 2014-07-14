function ptest {
    test_path=$(echo $1 | tr "/" "\.")
    test_path=${test_path%.py}
    echo "Running Test: $test_path"
    testify $test_path -x disabled -x sandbox-disabled
}

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
