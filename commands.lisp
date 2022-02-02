;;;; Place for command definitions

(in-package :stumpwm)

(defcommand term (&optional program) ()
  "Invoke a terminal, possibly with a @arg{program}."
  (run-shell-command (if program
                         (format nil "alacritty -e ~A" program)
                         "alacritty")))

(defcommand firefox () ()
  "Run or raise Firefox."
  (run-or-raise "firefox" '(:class "firefox") t nil))

(defcommand delete-window-and-frame () ()
  "Delete the current frame with its window."
  (delete-window)
  (remove-split))

;; brightness stuff
(defcommand brightness-up () ()
  "increase brightness"
  (run-shell-command "backlight -i"))

(defcommand brightness-down () ()
  "increase brightness"
  (run-shell-command "backlight -d"))

;; volume stuff
(defcommand volume-up () ()
  "increase volume"
  (run-shell-command "amixer -D pulse sset Master 5%+ unmute"))

(defcommand volume-down () ()
  "decrease volume"
  (run-shell-command "amixer -D pulse sset Master 5%- unmute"))

(defcommand volume-toggle () ()
  "toggle audio"
  (run-shell-command "amixer -D pulse sset Master toggle"))

;; polybar stuff
(defcommand polybar-show () ()
  "show polybar"
  ; i should not hard code the resolution
  (resize-head 0 0 25 1366 743)
  (run-shell-command "polybar-msg cmd show"))

(defcommand polybar-hide () ()
  "hide polybar"
  ; i should not hard code the resolution
  (resize-head 0 0 0 1366 768)
  (run-shell-command "polybar-msg cmd hide"))

;; would be nice to replace this with a different screenshot util
(defcommand scrot () ()
  "call scrot"
  (run-shell-command "scrot"))

;; power
(defcommand power () ()
  "power menu"
  (run-shell-command "~/dox/dots/dmenu/dmenu_shutdown"))

;; going to use dmenu for now, cause I'm used to it and it is already riced
(defcommand exec () ()
  "program runner"
  (run-shell-command "dmenu_run -h 25 -fn 'Cantarell-11'"))
