# Creating a Directory

Dir.mkdir("mynewdir")

Dir.mkdir("/mynewdir")
Dir.mkdir("c:\test")


# Deleting a Directory

Dir.delete("mynewdir")

require 'fileutils'
FileUtils.rm_f(directory_name)
