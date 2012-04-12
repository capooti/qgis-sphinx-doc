# use this in crontab
rm -rf _build/
# compile messages
msgfmt source/translated/it/index.po -o source/translated/it/LC_MESSAGES/index.mo
msgfmt source/translated/it/introduction.po -o source/translated/it/LC_MESSAGES/introduction.mo
msgfmt source/translated/it/getting_started.po -o source/translated/it/LC_MESSAGES/getting_started.mo
msgfmt source/translated/it/features_at_a_glance.po -o source/translated/it/LC_MESSAGES/features_at_a_glance.mo
# build html
sphinx-build -b html -a -Dlanguage=en source _build/html/en
sphinx-build -b html -a -Dlanguage=it source _build/html/it

