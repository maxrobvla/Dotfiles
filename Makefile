CONFIG=$(HOME)/.config
all:
	stow --verbose --target=$(CONFIG) --restow config; \
	stow --verbose --target=$$HOME --restow home; \

delete:
	stow --verbose --target=$(CONFIG) --delete config; \
	stow --verbose --target=$$HOME --delete home; \
