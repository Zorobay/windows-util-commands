# windows-util-commands
A collection of useful windows utility commands defined in Batch or PowerShell scripts

## Usage

The recommended and easiest way to use these utility commands is to copy them to a folder, f.ex. `C:/aliases` and then add that folder to the "PATH" environment variable.

## Commands

### killjava
Kills all java.exe processes

**Usage:** `killjava`

### killpid

Kills the process identified by the specified PID.

**Usage:** `killpid <PID>`

### findport
Lists all processes that use the specified port. The rightmost column represents the PID of the process

**Usage:** `findport <port>`

### findpid

Lists the file (executable) that is linked to the specified PID.

**Usage:** `findpid <PID>`

### randstr

Generates a random string of specified length. The string is automatically added to the clipboard.

**Usage:** `randstr <length>`