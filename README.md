# dotfiles
## ARCH-INSTALLATION INSTRUCTIONS

### Conectivity
timedatectl
iwctl
- station wlan0 connect 'SSID'
lsblk
### Disk Partition
gdisk /dev/nvme...
n -> new partition
d -> delete partition
w -> write partition
### Format Partitions
mkfs.ext4 /dev/nv...
mkfs.fat -F 32 /dev/nv..
mkswap /dev/nv
### Mount partitions
mount /dev/nv... /mnt
mount --mkdir /dev/nv... /mnt/boot
swapon /dev/nv...
### Select mirrors
reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
### Install essential packages
pacstrap -K /mnt base linux linux-firmware base-devel vim networkmanager
### System configuration
genfstab -U /mnt >> /mnt/etc/fstab
### Switch root
arch-chroot /mnt
### time, region config and language
ln -sf /usr/share/zoneinfo/.... /etc/localtime
hwclock --systohc
vim /etc/locale.gen
- uncomment en_US.UTF-8 UTF-8
- uncomment en_US ISO-8859-1
locale-gen
echo LANG=en_US.UTF-8 >> /etc/locale.conf
### Host configuration
echo X1 >> /etc/hostname
passwd
useradd -m -G wheel,users asap
passwd asap
visudo
- uncomment wheel
### Enable wifi
systemctl enable NetworkManager
### Install boot manager
pacman -S efibootmgr grub man-db man-pages os-prober
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
os-prober
#### to dual boot mount the windows efi partition
mkdir -p /windows
mount /dev/nvm... /windows
vim /etc/default/grub 
- uncomment GRUB_DISABLE_OS_PROBER=false
grub-mkconfig -o /boot/grub/grub.cfg





