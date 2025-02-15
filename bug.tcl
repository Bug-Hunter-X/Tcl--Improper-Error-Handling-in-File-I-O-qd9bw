proc get_data {filename} {
    if {[catch {open $filename r} file_id]} {
        error "Could not open file: $filename"
    }
    set data [read $file_id]
    close $file_id
    return $data
}

set data [get_data nonexistent_file.txt]
puts $data