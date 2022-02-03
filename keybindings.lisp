;;;; stumpwm keybindings

(in-package :stumpwm)
(set-prefix-key (kbd "s-s"))
(which-key-mode)

;; Undefining useless bindings
(undefine-key *root-map* (kbd "c"))
(undefine-key *root-map* (kbd "C-c"))
(undefine-key *root-map* (kbd "C-e"))
(undefine-key *root-map* (kbd "s"))
(undefine-key *root-map* (kbd "C-b"))
(undefine-key *root-map* (kbd "C-m"))
(undefine-key *root-map* (kbd "C-a"))

(undefine-key *root-map* (kbd "C-p"))
(undefine-key *root-map* (kbd "C-n"))
(undefine-key *root-map* (kbd "C-l"))
(undefine-key *root-map* (kbd "C-k"))
(undefine-key *root-map* (kbd "C-w"))
(undefine-key *root-map* (kbd "C-SPC"))
(undefine-key *root-map* (kbd "C-RET"))

(define-key *top-map* (kbd "s-RET") "term")
(define-key *top-map* (kbd "Print") "scrot")

;; Brightness stuff
(define-key *top-map* (kbd "XF86MonBrightnessUp") "brightness-up")
(define-key *top-map* (kbd "XF86MonBrightnessDown") "brightness-down")

;; Volume stuff
(define-key *top-map* (kbd "XF86AudioRaiseVolume") "volume-up")
(define-key *top-map* (kbd "XF86AudioLowerVolume") "volume-down")
(define-key *top-map* (kbd "XF86AudioMute") "volume-toggle")

;; Power
(define-key *top-map* (kbd "XF86PowerOff") "power")

(define-key *root-map* (kbd "~") "polybar-hide")
(define-key *root-map* (kbd "quoteleft") "polybar-show")

(define-key *root-map* (kbd "backslash") "firefox")
