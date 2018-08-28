# File Operations

# Creating Filenames Platform-Independently

File.join('full', 'path', 'here', 'filename.txt')

File.join(File::SEPARATOR, 'full', 'path', 'here', 'filename.txt')

File.expand_path("text.txt")
