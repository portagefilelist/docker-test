#!/bin/bash

source .env
docker run -it --rm -v "${PFL_DEV}:/pfl" -v "${PORTAGE}:/var/db/repos/gentoo" portagefilelist/pfl-test /bin/bash
