;;; -*- lexical-binding: t -*-

;;; Bootstrap
(setq native-comp-async-report-warnings-errors 'silent)
(add-to-list 'exec-path "/opt/homebrew/bin")
(setenv "PATH" (concat "/opt/homebrew/bin:" (getenv "PATH")))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;;; Custom — managed by Emacs, keep here
(custom-set-variables
 '(custom-safe-themes
   '("b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d"
     "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20"
     "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe"
     "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7"
     default))
 '(package-selected-packages nil))
(custom-set-faces)

;;; UI
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 0)
(setq visible-bell nil) ; MUST be nil, not t, because of that damn exclamation mark.
(global-display-line-numbers-mode t)
(column-number-mode t)
(global-hl-line-mode t)
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(internal-border-width . 0))
(set-face-attribute 'default nil :font "SF Mono-14" :weight 'medium)

;;; Theme — dynamic macOS appearance
(use-package gruvbox-theme
  :ensure t
  :config
  (defun my/apply-os-theme (appearance)
    (pcase appearance
      ('light
       (load-theme 'gruvbox-light-medium t)
       (set-frame-parameter nil 'ns-appearance 'light))
      ('dark
       (load-theme 'gruvbox-dark-medium t)
       (set-frame-parameter nil 'ns-appearance 'dark))))
  (add-hook 'ns-system-appearance-change-functions #'my/apply-os-theme)
  (my/apply-os-theme ns-system-appearance))

;;; Sane defaults
(setq-default indent-tabs-mode nil)
(setq select-enable-clipboard t)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq backup-by-copying t)
(electric-pair-mode t)
(recentf-mode t)
(which-key-mode)

;;; Keybindings
(global-set-key (kbd "s-<return>") #'toggle-frame-maximized)
(global-set-key (kbd "C-c i") (lambda () (interactive) (find-file user-init-file)))

;;; Windows
(use-package ace-window
  :ensure t
  :bind ("M-o" . ace-window))

;;; Git
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

;;; Org
(use-package org
  :config
  (setq org-log-done 'time)
  :bind (("C-c l" . org-store-link)
         ("C-c a" . org-agenda)
         ("C-c c" . org-capture)
         ("C-c o" . (lambda () (interactive) (dired org-directory)))))

;;; Markdown
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :custom (markdown-hide-markup t)
  :hook (markdown-mode . (lambda ()
                           (visual-fill-column-mode)
                           (setq visual-fill-column-center-text t)))
  :config
  (use-package visual-fill-column :ensure t))

;;; YAML
(use-package yaml-mode
  :ensure t
  :mode ("\\.ya?ml\\'" . yaml-mode))

;;; Scratch
(use-package persistent-scratch
  :ensure t
  :config (persistent-scratch-setup-default))

;;; Machine-local config (mail accounts etc.) — untracked, see .gitignore
(load (expand-file-name "init-work.el" user-emacs-directory) 'noerror)
(load (expand-file-name "init-personal.el" user-emacs-directory) 'noerror)
