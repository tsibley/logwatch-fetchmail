# Logwatch configuration for fetchmail syslog lines

This logwatch service expects fetchmail is configured with:

    set syslog

which by defaults logs to the `mail` facility.

Once installed, logwatch will tally all messages from fetchmail and provide a
sorted count by most common.  This works best when fetchmail is also run in
silent mode, suppressing most information messages.

## Installation

To use this overlay, simply run:

    sudo make install

from a git clone or other copy of the source.  If your logwatch configuration
is somewhere other than `/etc/logwatch`, pass `PREFIX=/path/to/logwatch` to
make:

    sudo make install PREFIX=/path/to/logwatch

You can test to see if it worked by running:

    sudo /usr/sbin/logwatch --service fetchmail --print --archive --range all

and examining the output.
