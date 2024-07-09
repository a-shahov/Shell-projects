CreateTempfileName () {
    prefix="temp"
    suffix=$(date +%s)
    Tempfilename="$prefix.$suffix"
}

isalpha2 () {
    [[ $# -eq 1 ]] || return 1

    case $1 in
        *[!a-zA-Z]*|"") return 1;;
	*) return 0;;
    esac
}

capitalize_ichar () {
    string0="$@"
    
    firstchar=${string0:0:1}
    string1=${string0:1}

    FirstChar=$(echo "$firstchar" | tr a-z A-Z)

    echo "$FIrstChar$string1"
}

Pass_Array () {
    local passed_array
    passed_array=( $(echo "$1") )
    echo "${passed_array[@]}"
}


