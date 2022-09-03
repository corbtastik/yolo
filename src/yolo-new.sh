#!/bin/bash
new() {
  git clone https://github.com/corbtastik/yolo.git yolo-new
  cd yolo-new

}
main() {
	case "$1" in
		new) new ;;
		*)
			echo $"Usage: $0 new"
			exit 1
	esac
}

main $@
