RUN pacman -S --noconfirm --needed sbcl

RUN cd /tmp && wget https://beta.quicklisp.org/quicklisp.lisp && sbcl --non-interactive --eval '(load "/tmp/quicklisp.lisp")' --eval '(quicklisp-quickstart:install :path "/tmp/quicklisp")' --eval '(ql::without-prompting (ql:add-to-init-file))'
