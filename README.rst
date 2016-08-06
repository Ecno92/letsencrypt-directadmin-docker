Let's Encrypt Directadmin in a Docker
=====================================

This project provides an easy way to configure a Let's encrypt certificate for a Directadmin based hosted website.
It's based on `letsencrypt-directadmin from Sjerdo <https://github.com/sjerdo/letsencrypt-directadmin>`_ and it wraps it in a Docker container.
In this way you can add/update the certificate without polluting the host system with the log files and account settings of the tool.

How to use
----------

1. Clone the repository ``$ git clone https://github.com/Ecno92/letsencrypt-directadmin-docker.git``
2. Move into the directory: ``$ cd letsencrypt-directadmin-docker``
3. Copy the Makefile template: ``$ cp Makefile.template Makefile``
4. Edit the Makefile template and adjust the domain, password etc.: ``$ nano Makefile``
5. Create the image & container: ``$ make create-container``
6. Update the certificate: ``$ make update-cert``
7. Schedule a calendar or cronjob event to run ``$ make update-cert`` within 3 months to renew the certificate.

Note
----

Let's Encrypt is supported in `recent versions of Directadmin <https://www.directadmin.com/features.php?id=1828>`_.
So actually there should not be a need to use this tool.
Unfortunately a lot of hosting companies disabled this feature.
I recommend to consult your hosting party to ask them if they can enable the native implementation to secure your website.
So you do not have to use this project.

This projects is tested on some production websites and it is provided as is.
