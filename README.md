# br2
Buildroot external tree to port old sbc

## Prerequisite
Download a tarball of Buildroot and untar it

## Compilation
`make BR2_EXTERNAL=path/to/this/repo chip_defconfig`
`make BR2_EXTERNAL=path/to/this/repo all`

## Customisation
`make BR2_EXTERNAL=path/to/this/repo menuconfig`
