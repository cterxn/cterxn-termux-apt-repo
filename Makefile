install:
	cp cterxn-termux-apt-repo $(PREFIX)/bin/cterxn-termux-apt-repo
	ln -sf $(PREFIX)/bin/cterxn-termux-apt-repo $(PREFIX)/bin/termux-apt-repo

pypi:
	rm -Rf dist/ build/ termux_apt_repo.egg-info/
	python3 setup.py sdist bdist_wheel egg_info
	twine upload dist/*

.PHONY: install pypi
