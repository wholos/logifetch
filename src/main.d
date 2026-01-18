import std.process;
import std.stdio;
alias color = RED;
enum RED    = "\x1b[31m";
enum GREEN  = "\x1b[32m";
enum YELLOW = "\x1b[33m";
enum BLUE   = "\x1b[34m";
enum MAGEN  = "\x1b[35m";
enum CYAN   = "\x1b[36m";
enum reset  = "\x1b[0m";
void main(){
    write(color~"Os: "~reset);
    write(executeShell("tr -d '\"' < /etc/os-release | grep PRETTY_NAME | cut -b 13-").output);
    write(color~"Kernel: "~reset);
    write(executeShell("uname -sr").output);
    write(color~"Shell: "~reset);
    write(executeShell("echo $SHELL").output);
    write(color~"Cpu: "~reset);
    write(executeShell("cat /proc/cpuinfo | grep 'model name' | head -n1 | cut -b 14- ").output);
    write(color~"Gpu: "~reset);
    write(executeShell("lspci | grep -i vga | cut -b 36- | sed 's/ *(rev.*)//'").output);
}
