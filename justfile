# colcon build all packages
alias ba := build-all
build-all:
	colcon build

# colcon build all packages with symlink install
alias bas := build-all-symlink
build-all-symlink:
	colcon build --symlink-install

# colcon build for selected packages
alias b := build
build +PACKAGES:
	colcon build --packages-select {{PACKAGES}} --allow-overriding {{PACKAGES}}

# colcon build with symlink install for selected packages
alias bs := build-symlink
build-symlink +PACKAGES:
	colcon build --symlink-install --packages-select {{PACKAGES}} --allow-overriding {{PACKAGES}}

# colcon build, ignoring selected packages
alias bi := build-ignore
build-ignore +PACKAGES:
	colcon build --packages-ignore {{PACKAGES}}

# colcon build with symlink install, ignoring selected packages
alias bsi := build-symlink-ignore
build-symlink-ignore +PACKAGES:
	colcon build --symlink-install --packages-ignore {{PACKAGES}} --allow-overriding {{PACKAGES}}