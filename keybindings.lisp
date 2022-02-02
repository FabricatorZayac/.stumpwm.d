;;;; stumpwm keybindings

(in-package :stumpwm)
(set-prefix-key (kbd "s-s"))
(which-key-mode)

;; Undefining useless bindings
(undefine-key *root-map* (kbd "c"))
(undefine-key *root-map* (kbd "C-c"))
(undefine-key *root-map* (kbd "C-e"))
(undefine-key *root-map* (kbd "s"))

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
