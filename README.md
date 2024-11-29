# File Associations Finder

FileAssociationsFinder is a Swift command-line utility that helps users find macOS applications capable of opening files with a specific file extension. The utility utilizes the `NSWorkspace` and `UniformTypeIdentifiers` frameworks to perform the search.

## Features

- Quickly find apps that can handle a given file extension.
- Outputs full application paths for easy reference.
- Gracefully handles cases where no apps are found.

## Requirements

- macOS 11.0 (Big Sur) or later.
- Swift 5.3 or later.

## Installation

1. Clone the repository or copy the `FileAssociationsFinder.swift` file.
2. Ensure you have Xcode or Swift command-line tools installed.
3. Build the project using the Swift compiler or Xcode.

## Usage

1. Open a terminal and navigate to the directory containing `FileAssociationsFinder.swift`.
2. Compile the program:
   ```bash
   swiftc -o FileAssociationsFinder FileAssociationsFinder.swift
   ```
3. Run the program with a file extension as an argument:
   ```bash
   ./FileAssociationsFinder <file-extension>
   ```
   Replace `<file-extension>` with the desired file extension (e.g., `txt`, `png`, `pdf`).

### Example

#### Command:
```bash
./FileAssociationsFinder txt
```

#### Output:
```bash
/Applications/TextEdit.app
/Applications/Visual Studio Code.app
```

If no applications are found:
```bash
No apps found for extension txt
```

#### No argument provided:
```bash
Usage: ./FileAssociationsFinder <file-extension>
```

## How It Works

1. The program accepts a file extension as a command-line argument.
2. It converts the extension into a Uniform Type Identifier (UTI) using `UTType`.
3. It queries macOS's `NSWorkspace` to find compatible apps.
4. Application paths are extracted from the returned URLs and displayed.

## Limitations

- macOS-only utility, as it relies on macOS-specific frameworks.

## License

This utility is released under the MIT License. Modify and use it freely!