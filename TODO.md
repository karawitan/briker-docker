Integrate the following software versions to the archive packages/bpz/briker.tar.lrz

<pre>
Changelog for Briker 2.1 “Merapi”  are as follows:

[pbx] upgrade Asterisk to version 15.4.0

git clone https://github.com/asterisk/asterisk.git --depth 1
cd asterisk
git fetch --tags
git checkout 15.4.0

[pbx] upgrade Sangoma driver to wanpipe 7.0.25
[pbx] upgrade DAHDI to version 2.11.1
[pbx] upgrade libpri to version 1.6.0
[lin] upgrade Nginx to version 1.14.0
</pre>
