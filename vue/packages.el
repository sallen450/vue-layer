;;; packages.el --- vue layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: 纪清华 <jiqinghua@souche.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(setq vue-packages
  '(
    company
    mmm-mode
    jade-mode
    web-mode
    less-css-mode
    (vue-mode :location (recipe :fetcher github :repo "sallen450/vue-mode"))
	))


(defun vue/init-vue-mode ()
    (use-package mmm-mode)
    (use-package jade-mode)
    (use-package web-mode)
    (use-package less-css-mode)
    (use-package vue-mode))

(defun vue/init-mmm-mode ()
    (use-package mmm-mode))

(defun vue/init-jade-mode ()
    (use-package jade-mode))

(defun vue/init-web-mode ()
    (use-package web-mode))

(defun vue/init-less-css-mode ()
    (use-package less-css-mode))

(when (configuration-layer/layer-usedp 'auto-completion)

  ;; Hook company to python-mode
  (defun vue/post-init-company ()
    (spacemacs|add-company-hook vue-mode))

  ;; Add the backend to the major-mode specific backend list
  ;; (defun vue/init-company-anaconda ()
  ;;   (use-package company-anaconda
  ;;     :if (configuration-layer/package-usedp 'company)
  ;;     :defer t
  ;;     :init (push 'company-anaconda company-backends-python-mode)))
  ;; (defun markdown/post-init-company-emoji ()
  ;;   (push 'company-emoji company-backends-markdown-mode))
)

;;; packages.el ends here
