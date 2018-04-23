# setupfs-function

DESCRIPTION
The setupfs tool creates and observes file systems and backend storage.

OPTIONS
Only a single argument may be given. Display help if no options are
given.

-s device size
device - Basename of the “block device.” Created in /var/tmp.
size - How many MiB (1000x1000) in the block device.

-c fs device directory
fs - File system type. Valid types are: ext3, ext4, xfs, or btrfs.
device - Name of the “block device” created by the -s option
directory - Where to mount the file system.

-l fs
fs - the filesystem type to display
