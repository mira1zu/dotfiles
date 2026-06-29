;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d"
     "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20"
     "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe"
     "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7"
     default))
 '(fringe-mode 0 nil (fringe))
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'gruvbox-dark-medium' t)

(setq select-enable-clipboard t)
(setq select-enable-primary t)

;; UI
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq visible-bell nil) ; MUST be nil, not t, because of that damn exclamation mark.
(global-display-line-numbers-mode t)
(column-number-mode t)
(global-hl-line-mode t)

;; Sane defaults
(setq-default indent-tabs-mode nil)    ; spaces, not tabs
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq backup-by-copying t)
(electric-pair-mode t)                 ; auto-close () [] {} ""
(recentf-mode t)                       ; track recent files

;; Window management
(use-package ace-window
  :ensure t
  :bind ("M-o" . ace-window))

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(global-set-key (kbd "s-<return>") #'toggle-frame-maximized)

(set-face-attribute 'default nil
		    :font "SF Mono-14"
		    :weight 'semi-bold)
		    
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(which-key-mode)

;; Machine-local config (mail accounts etc.) — untracked, see .gitignore
(load (expand-file-name "init-work.el" user-emacs-directory) 'noerror)
(load (expand-file-name "init-personal.el" user-emacs-directory) 'noerror)
