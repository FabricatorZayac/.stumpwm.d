;;;; stumpwm init file

;; TODO put everything in org file
;; TODO figure out how to quickly load org files into source code

;; Quicklisp. Don't know what to use it for, so it's commented for now
;; #-quicklisp
;; (let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
;;                                        (user-homedir-pathname))))
;;   (when (probe-file quicklisp-init)
;;     (load quicklisp-init)))

(in-package :stumpwm)
(setf *default-package* :stumpwm)

(set-module-dir "/usr/share/stupmwm/contrib/")

(load "~/.stumpwm.d/keybindings.lisp")
(load "~/.stumpwm.d/commands.lisp")
(setf *mouse-focus-policy*    :sloppy
      *float-window-modifier* :SUPER)

;; (load-module "beckon")
;; (load-module "end-session")

;; Polybar stuff
(run-shell-command "polybar stump -r")
(polybar-show)
