function check_warsaw -d 'Check the number of threads of each Warsaw process'
    set error 0
    set pids (pgrep -x core)
    if test (count $pids) -lt 2
        echo 'There is only '(count $pids)' core in memory'
        return 1
    end
    for pid in (pgrep -x core)
        set t (string trim (ps -o nlwp --no-headers $pid))
        if test $t -ge 20
            set error 1
            echo 'Warsaw with problem! There are '$t' threads on pid '$pid'.'
        end
    end
    return $error
end
