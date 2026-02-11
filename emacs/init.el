;; Basic setup. How minimalist!

(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

(set-frame-font "Agave 14")
(global-hl-line-mode t)

;; Repositories?

(require 'package)
(setq package-archives
      '(("gnu-elpa" . "https://elpa.gnu.org/packages/")
	("nongnu" . "https://elpa.nongnu.org/nongnu/")
	("melpa" . "https://melpa.org/packages/")))

(when (not package-archive-contents)
  (package-refresh-contents))

;; Packages

(use-package nibelung-theme
  :vc ( :url "https://github.com/veschin/nibelung-theme"
	:rev :newest)
  :ensure t
  :config
  (load-theme 'nibelung-dark t))

(use-package frame
  :ensure nil
  :commands lamb/cursor-type-mode 
  :config
  (setq-default cursor-type 'box)
  (setq-default blink-cursor-blinks 50)
  (setq-default blink-cursor-delay 0.2)

  (define-minor-mode lamb/cursor-type-mode
    "change"
    :init-value nil
    :global t

    (if lamb/cursor-type-mode
	(setq-local cursor-type 'hbar)
      (kill-local-variable 'cursor-type))))

(use-package olivetti
  :ensure t
  :diminish
  :config
  (setq olivetti-body-width 0.6)
  (setq olivetti-minimum-body-width 10)
  (setq olivetti-style 'fancy)

  (define-minor-mode lamb/olivetti-mode
    "test"
    :init-value nil
    :global nil
    (if lamb/olivetti-mode
	(progn
	  (olivetti-mode 1)
	  (set-window-fringes (selected-window) 0 0)
	  (lamb/cursor-type-mode 1))
      (progn
	(olivetti-mode -1)
	(set-window-fringes (selected-window) nil nil)
	(lamb/cursor-type-mode -1))))
  :bind ("C-c o" . lamb/olivetti-mode))




;; This is the path so far:
;; - olivetti config and keybindings
;; remove outdated packages/configs
;; writing mode to change fonts and make a minor mode out of it. use fontaine package
;; lazy loading

;; 


  

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 
 '(package-selected-packages
   '(command-log-mode counsel doom-modeline ef-themes frame
		      nibelung-theme nord-theme olivetti))
 '(package-vc-selected-packages
   '((nibelung-theme :url "https://github.com/veschin/nibelung-theme"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



