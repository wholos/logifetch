import std.process;
import std.stdio;
void main(){
    write("Os: ");
    write(executeShell("tr -d '\"' < /etc/os-release | grep PRETTY_NAME | cut -b 13-").output);
    write("Kernel: ");
    write(executeShell("uname -sr").output);
    write("Shell: ");
    write(executeShell("echo $SHELL").output);
    write("Cpu: ");
    write(executeShell("cat /proc/cpuinfo | grep 'model name' | head -n1 | cut -b 14- ").output);
    write("Gpu: ");
    write(executeShell("lspci | grep -i vga | cut -b 36- | sed 's/ *(rev.*)//'").output);
}
