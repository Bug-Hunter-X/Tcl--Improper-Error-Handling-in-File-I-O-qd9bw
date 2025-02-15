proc get_data {filename} {
    if {[catch {open $filename r} file_id]} {
        return -code error "Could not open file: $filename"
    }
    set data [read $file_id]
    close $file_id
    return $data
}

set result [get_data nonexistent_file.txt]

if {$result eq -code error} {
    puts stderr "Error: $result"
} else {
    puts $result
}