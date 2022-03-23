{
  description = "builds a small [wg+network+kexec] hardened kernel to embed into coreboot(bios flash) to use as an kexec based bootloader/rescue env";

  inputs = {
    linux-src = {
      url = "https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git";
      type = "git";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, linux-src }: with import nixpkgs{system="x86_64-linux";};
  {
    packages.x86_64-linux.coreboot-kernel = buildLinux( rec {
      version = "1.57";
      src = linux-src;

      structuredExtraConfig = with lib.kernel; {
        EXPERT = yes;
      };

      nativebuildInputs = [
        flex
      ];

      kernelPatches = [];

    } // {});

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.coreboot-kernel;

  };
}
