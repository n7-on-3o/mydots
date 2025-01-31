#!/usr/bin/env fish
#
function msi_battery_threshold
    set offs 215
    set th60 \xbc
    set th80 \xd0
    set th100 \xe4
    #set ec_path = /sys/kernel/debug/ec/ec0/io
    set ec_path = /dev/ec
    
    #modprobe -r ec_sys
    #modprobe ec_sys write_support=1

    if test (count $argv) -eq 0
        set cth (dd skip=$offs count=1 if=$ec_path bs=1 status=none)
        if test (string match $th60 $cth)
            echo "60"
        else if test (string match $th80 $cth)
            echo "80"
        else if test (string match $th100 $cth)
            echo "100"
        else
            echo "No valid threshold found"
        end
        return 0
    end
    
    if test (count $argv) -eq 1
        set nth 0
        switch $argv
            case 60
                set nth $th60
            case 80
                set nth $th80
            case 100
                set nth $th100
            case "*"
                echo "Provide a valid argument (60|80|100)"
                return 1
        end
        return (echo -n -e $nth | dd of=$ec_path bs=1 seek=$offs count=1 conv=notrunc status=none)
    end
end

#msi_battery_threshold $argv
