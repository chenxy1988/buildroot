Run the emulation with:

  ./output/host/bin/qemu-system-x86_64 -kernel output/images/bzImage -drive file=output/images/rootfs.ext2,format=raw -append "root=/dev/sda console=ttyS0" -nographic # qemu_x86_64_wr_defconfig

Optionally add -smp N to emulate a SMP system with N CPUs.

The login prompt will appear in the graphical window.
