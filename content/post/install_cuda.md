+++
title = "Dual GPU configuration in Ubuntu 16.04 and CUDA 8.0"
date = 2016-12-28
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Jonas Adler"]

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = []
categories = []

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
# Use `caption` to display an image caption.
#   Markdown linking is allowed, e.g. `caption = "[Image credit](http://example.org)"`.
# Set `preview` to `false` to disable the thumbnail in listings.
[header]
image = ""
caption = "Instructions for installing and configuring Ubuntu 16.04 LTE on a PC with two GPUs."
preview = true

+++

Instructions for installing and configuring Ubuntu 16.04 LTE on a PC with two GPUs.

<!--more-->

The primary GPU will be used for computations and the secondary one will be used for displaying graphics. 
In this example, the computer is a HP Z640 with NVIDIA Titan-X Pascal as primary GPU and a NVIDIA Quadro K620 as secondary GPU.

Note: if the computer already have a working installation of Ubuntu 16.04 with build-essentials installed you should (probably) not have to reinstall it, meaning that the first two steps can be skipped. Moreover, sometimes the installation procedure works also without removing the secondary GPU (see step 1 and step 22).

1.  Turn off computer, ensure only the primary GPU is connected to the motherboard.
    Boot from USB with Ubuntu 16.04 LTS installation, 
    install a fresh copy of Ubuntu 16.04 LTS but keep Windows partitions intact, 
    e.g. by choosing "Erase Ubuntu xx.yy and reinstall"
  
2.  Install build essentials.
  
        $ sudo apt-get install build-essential
    
3.  Go to https://developer.nvidia.com/cuda-downloads and download the latest CUDA toolkit for Ubuntu 16.04 by selecting the following in the web-interface that is offered:    
    - Operating system: Linux 
    - Architecture: x86_64
    - Distribution: Ubuntu
    - Version: 16.04
    - Installer Type: runfile (local)

    This will download the latest version, 
which in the instructions will be is version 8.0.44, 
so the file that will be downloaded is "cuda_8.0.44_linux.run"
    
4.  Open up a terminal and extract the separate installers via:
    
        $ mkdir ~/Downloads/nvidia_installers
        $ cd ~/Downloads
        $ sudo chmod a+x ./cuda_8.0.44_linux.run
        $ ./cuda_8.0.44_linux.run -extract=~/Downloads/nvidia_installers
    
5.  Completely uninstall anything in the ubuntu repositories with nvidia-*. I used synaptic and did a purge, AKA completely uninstall programs and configuration.
    
        $ sudo apt-get --purge remove nvidia-*
    
6.  No need to create an xorg.conf file. If you have one, remove it (assuming you have a fresh OS install).
    
        $ sudo rm /etc/X11/xorg.conf
    
7.  Create the /etc/modprobe.d/blacklist-nouveau.conf file with the 2 following lines:
    
        blacklist nouveau
        options nouveau modeset=0
  
    Then do a
    
        $ sudo update-initramfs -u
    
8.  Reboot computer. Nothing should have changed in loading up menu. 
    You should be taken to the login screen. 
    Once there type: Ctrl + Alt + F1, and login to your user. 
    Keep the next commands handy in another machine since now you are in tty.
    
9. In tty:

        cd ~/Downloads/nvidia_installers
        sudo service lightdm stop

    The top line is a necessary step for installing the driver.
    
10. Now type 

        sudo ./NVIDIA-Linux-x86_64-367.48.run --no-opengl-files

    The file "NVIDIA-Linux-x86_64-367.48.run" should have been created by the extract command at step (4.) above. It is important to include the opengl flag in the above command. If you miss that, either you will get stuck in ?login loop? or your computer would boot with a black screen at all times.

    At some point you will get a warning message about 32-bit support, answer ok.

    When prompted "The distribution-provided pre-installed script failed are you sure you want to continue". Answer continue.

    If prompted to over-write xorg.conf, answer yes.

    Pick defaults for all other options.
    
11. Now install the toolkit also
    
        sudo ./cuda-linux64-rel-8.0.44-21122537.run
        sudo ./cuda-samples-linux-8.0.44-21122537.run

    Both the run-files above are suppose to have been created by the extract command at step (4.) above.

    Pick defaults to all questions.

    Pick yes for symbolic links.
    
12. Set Environment path variables in .bashrc:
    
        export PATH=/usr/local/cuda/bin:$PATH
        export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
    
13. Reload bash in order to apply these settings

        $ exec bash
    
14. Verify the driver version:
    
        $ cat /proc/driver/nvidia/version
        NVRM version: NVIDIA UNIX x86_64 Kernel Module    367.48    Sat Sep    3 18:21:08 PDT 2016
        GCC version:    gcc version 5.4.0 20160609 (Ubuntu 5.4.0-6ubuntu1~16.04.1) 
    
15. Check CUDA driver version:
    
        $ nvcc -V
        nvcc: NVIDIA (R) Cuda compiler driver
        Copyright (c) 2005-2016 NVIDIA Corporation
        Built on Sun_Sep__4_22:14:01_CDT_2016
        Cuda compilation tools, release 8.0, V8.0.44
    
16. At this point you can switch the lightdm back on again by doing:
  
        $ sudo service lightdm start
    
17. Shut down computer, insert secondary GPU which in this example is a Quadro K620 card. Keep the display connected to the primary GPU.
    
18. Boot computer, log in.
    
19. Check that both GPU cards are recognized by the system, by typing
    
        $ nvidia-smi
        Mon Jan    9 14:47:10 2017             
        +-----------------------------------------------------------------------------+
        | NVIDIA-SMI 367.48                 Driver Version: 367.48                    |
        |-------------------------------+----------------------+----------------------+
        | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
        | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
        |===============================+======================+======================|
        |   0  TITAN X (Pascal)    Off  | 0000:02:00.0     Off |                  N/A |
        | 34%   44C    P8    17W / 250W |    129MiB / 12187MiB |      4%      Default |
        |-------------------------------+----------------------+----------------------+
        |   1  Quadro K620         Off  | 0000:03:00.0      On |                  N/A |
        | 24%   41C    P0     3W /  30W |      1MiB /  2000MiB |      0%      Default |
        +-------------------------------+----------------------+----------------------+
                                                                                       
        +-----------------------------------------------------------------------------+
        | Processes:                                                       GPU Memory |
        |  GPU       PID  Type  Process name                               Usage      |
        |=============================================================================|
        |    0      3954    G   /usr/lib/xorg/Xorg                             128MiB |
        +-----------------------------------------------------------------------------+
  
20. Generate Nvidia X11 configuration file and activate multiple GPU option:
  
        $ sudo nvidia-xconfig -multigpu=on
    
21. Set the secondary GPU as the default GPU device for displaying graphics. 

    Find the PCI port of the secondary GPU by typing
    
        $ nvidia-smi -a

    In the output that follow, find the PCI bus related to the secondary GPU. Simply look for text in output where the "Product Name" matches the secondary GPU and read the PCI bus number. 

    In my current output is given below, the PCI bus is "3":
        
        [...]
        GPU 0000:03:00.0
            Product Name                    : Quadro K620
            Product Brand                   : Quadro
            Display Mode                    : Enabled
            Display Active                  : Enabled
            Persistence Mode                : Disabled
            Accounting Mode                 : Disabled
            Accounting Mode Buffer Size     : 1920
            Driver Model
                Current                     : N/A
                Pending                     : N/A
            Serial Number                   : 0324114080422
            GPU UUID                        : GPU-4c631408-4129-9d5d-fbf3-0588bc1ab5cf
            Minor Number                    : 1
            VBIOS Version                   : 82.07.4E.00.0E
            MultiGPU Board                  : No
            Board ID                        : 0x300
            GPU Part Number                 : N/A
            Inforom Version
                Image Version               : 2012.0504.00.03
                OEM Object                  : 1.1
                ECC Object                  : N/A
                Power Management Object     : N/A
            GPU Operation Mode
                Current                     : N/A
                Pending                     : N/A
            GPU Virtualization Mode
                Virtualization mode         : None
            PCI
                Bus                         : 0x03
                Device                      : 0x00
                Domain                      : 0x0000
                Device Id                   : 0x13BB10DE
                Bus Id                      : 0000:03:00.0
        [...]

    Update X11 configuration file.
        
        $ sudo pico /etc/X11/xorg.conf 

    Find the section
        
        Section "Device"
            Identifier     "Device0"
            Driver         "nvidia"
            VendorName     "NVIDIA Corporation"
        EndSection
    
    and replace with
        
        Section "Device"
            Identifier     "Device0"
            Driver         "nvidia"
            VendorName     "NVIDIA Corporation"
            BusID          "PCI:3:0:0"
        EndSection
  
    Here, "3" should match the PCI bus as determined above.
  
22. Shutdown computer. Switch display cable so that it is connected to the secondary GPU. Start computer.
  
23. Validate that both GPUs are active and that the secondary GPU is used
  
        $ nvidia-smi
        Mon Jan  9 14:56:11 2017       
        +-----------------------------------------------------------------------------+
        | NVIDIA-SMI 367.48                 Driver Version: 367.48                    |
        |-------------------------------+----------------------+----------------------+
        | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
        | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
        |===============================+======================+======================|
        |   0  TITAN X (Pascal)    Off  | 0000:02:00.0     Off |                  N/A |
        | 24%   41C    P0    17W / 250W |      1MiB / 12187MiB |      0%      Default |
        |-------------------------------+----------------------+----------------------+
        |   1  Quadro K620         Off  | 0000:03:00.0      On |                  N/A |
        | 34%   44C    P8     3W /  30W |    129MiB /  2000MiB |      4%      Default |
        +-------------------------------+----------------------+----------------------+
                                                                                       
        +-----------------------------------------------------------------------------+
        | Processes:                                                       GPU Memory |
        |  GPU       PID  Type  Process name                               Usage      |
        |=============================================================================|
        |    1      3954    G   /usr/lib/xorg/Xorg                             128MiB |
        +-----------------------------------------------------------------------------+

Acknowledgement
===============
This guide largely follows [Installing CUDA with Ubuntu](http://kislayabhi.github.io/Installing_CUDA_with_Ubuntu), but has been updated for Ubuntu 16.04 and two GPUs.
Ozan Öktem helped compile the notes.