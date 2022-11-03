# 编写shell帮助信息通用小技巧



废话少说， 直接上脚本：

```bash
#!/bin/bash
###
### Some shell version or description here.
###
### Usage:
###   test <input> <output>
###
### Options:
###   <input>   Input file to read.
###   <output>  Output file to write. Use '-' for stdout.
###   -h | --help       Show this message.


help() {
    sed -rn 's/^### ?//;T;p' "$0"
}

# 如果用户输入“-h”或者无参数，执行help函数
if [[ $# == 0 ]] || [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then
    help
    exit 1
fi
```

效果：

```bash
╭─agou-ops@ideapad-15ISK ~/tmp 
╰─$ bash test.sh --help

Some shell version or description here.

Usage:
  test <input> <output>

Options:
  <input>   Input file to read.
  <output>  Output file to write. Use '-' for stdout.
  -h | --help       Show this message.
```
