(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(require 'maxframe)
(setq mf-max-width 1680)  ;; Pixel width of main monitor.
(add-hook 'window-setup-hook 'maximize-frame t)

(defvar custom-files '("~/.emacs.d/user.el"
                       "~/.emacs.d/macros.el"
                       "~/.emacs.d/key-bindings.el"
                       "~/.emacs.d/code-navigation.el"
                       "~/.emacs.d/pair-options.el"
                       "~/.emacs.d/oracle.el"))

(dolist (file custom-files)
  (when (file-exists-p  file)
  (load file)))


(setq backup-directory-alist `(("." . "~/.emacs_saves")))
(setenv "PATH" (concat "/usr/local/bin:/Users/jdursun/go/bin:" (getenv "PATH")))
(setq exec-path (append '("/usr/local/bin") exec-path))
(setenv "GOPATH" "/Users/jdursun/go")
