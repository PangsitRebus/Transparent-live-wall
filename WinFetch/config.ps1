# ===== WINFETCH CONFIGURATION =====

# $image = "~/winfetch.png"
# $noimage = $true

# Display image using ASCII characters
# $ascii = $true

# Set the version of Windows to derive the logo from.
# $logo = "Windows 10"

# Specify width for image/logo
# $imgwidth = 24

# Specify minimum alpha value for image pixels to be visible
# $alphathreshold = 50

# Custom ASCII Art
# This should be an array of strings, with positive
# height and width equal to $imgwidth defined above.
#$CustomAscii = @(
#""
#)
# Make the logo blink
# $blink = $true

# Display all built-in info segments.
# $all = $true

# Add a custom info line
    function info_separator_top {
        return @{
            # Judul (title) harus diisi, tetapi bisa berupa spasi jika Anda ingin kontennya menempel ke kiri
            title   = ""
            content = "─────────────────────────"
        }
    }
    function info_separator_bottom {
        return @{
            title   = ""
            content = "─────────────────────────"
        }
    }
    # 1. OS (dengan ikon 🐧)
    function info_custom_os {
        # Ambil info OS default, tambahkan ikon di depannya.
        # Di Windows, ini akan menghasilkan "Windows 10/11"
        $osInfo = (info_os).content
        return @{
            title   = ""
            content = "🐧 ◉ Arch Linux x86_64" # Ganti dengan $osInfo jika Anda ingin info Windows asli
        }
    }

    # 2. Init/Uptime (dengan ikon ⚡)
    # Karena Windows tidak pakai systemd, kita ganti dengan Uptime atau info statis "systemd"
    function info_custom_systemd {
        # Di sini kita tampilkan statis "systemd"
        return @{
            title   = ""
            content = "🔳 ◉ Linux 6.15.6-arch1-1"
        }
        
        # ATAU Jika mau dinamis (Uptime):
        # $uptimeInfo = (info_uptime).content
        # return @{ title = "⚡"; content = $uptimeInfo }
    }

    # 3. Packages (dengan ikon 📦)
    function info_custom_pkgs {
        # Ambil jumlah paket dari pkg manager Anda (winget, scoop, choco)
        # Gunakan info_pkgs jika ada, atau buat statis
        $pkgsCount = (info_pkgs).content
        return @{
            title   = ""
            content = "📦 ◉ 1050(pacman)"
        }
    }

    # 4. WM (dengan ikon 🗖)
    # Di Windows, ini harus statis (misalnya: bspwm, Explorer, atau nama WM yang Anda emulasikan)
    function info_custom_wm {
        return @{
            title   = "" # Ikon Windows Manager
            content = "🐳 ◉ Hyperland"
        }
    }

    # 5. Terminal (dengan ikon >_)
    function info_custom_terminal {
        return @{
            title   = ""
            content = "🗃️ ◉ Terminal"
        }
    }

# Configure which disks are shown
# $ShowDisks = @("C:", "D:")
# Show all available disks
# $ShowDisks = @("*")

# Configure which package managers are shown
# disabling unused ones will improve speed
# $ShowPkgs = @("winget", "scoop", "choco")

# Use the following option to specify custom package managers.
# Create a function with that name as suffix, and which returns
# the number of packages. Two examples are shown here:
# $CustomPkgs = @("cargo", "just-install")
# function info_pkg_cargo {
#     return (cargo install --list | Where-Object {$_ -like "*:" }).Length
# }
# function info_pkg_just-install {
#     return (just-install list).Length
# }

# Configure how to show info for levels
# Default is for text only.
# 'bar' is for bar only.
# 'textbar' is for text + bar.
# 'bartext' is for bar + text.
# $cpustyle = 'bar'
# $memorystyle = 'textbar'
# $diskstyle = 'bartext'
# $batterystyle = 'bartext'


# Remove the '#' from any of the lines in
# the following to **enable** their output.

@(
    $image = "C:\Users\dnshw\.config\Fastfetch\Logo 15.png"
    #"title"
    #"separator_top"
    #"custom_os"
    #"computer"
    #"kernel"
    #"motherboard"
    # "custom_time"  # use custom info line
    #"uptime"
    # "ps_pkgs"  # takes some time
    #"pkgs"
    #"pwsh"
    #"resolution"
    #"terminal"
    # "theme"
    #"cpu"
    #"gpu"
    # "cpu_usage"
    #"memory"
    #"disk"
    # "battery"
    # "locale"
    # "weather"
    # "local_ip"
    # "public_ip"
    #"blank"
    "title"            # chick@syamantak-desktop
    "separator_top"           # Garis pemisah horizontal
    
    "custom_os"        # 🐧 EndeavourOS Linux
    "custom_systemd"   # ⚡ systemd
    "custom_pkgs"      # 📦 1358 (jumlah paket)
    "custom_wm"        # 🗖 bspwm
    "custom_terminal"  # >_ alacritty
    "separator_bottom"
    #"colorbar"
)
