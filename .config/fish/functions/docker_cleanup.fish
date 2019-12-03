function docker_cleanup
    set containers (docker ps -a -q)
    if test (count $containers) -gt 0
        docker rm $containers
    end
    set images (docker images -q -f dangling=true)
    if test (count $images) -gt 0
        docker rmi $images
    end
end
