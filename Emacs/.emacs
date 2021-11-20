(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(tango-dark))
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "WenQuanYi Zen Hei Mono" :foundry "WenQ" :slant normal :weight normal :height 143 :width normal)))))
;; 设置Org-mode中自动换行
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq package-archives
'(("gnu" . "http://elpa.gnu.org/packages/")
("melpa" . "http://melpa.org/packages/")))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 在.emacs文件中添加下面这行表示使用拷贝模式
;; (setq backup-by-copying t) ;; 默认是nil，开启之后使用拷贝模式
;; 该模式控制生成备份文件的方式 "file.ext~" 默认方式是设置文件链接
;; 如果是在Emacs中
;; 你可以通过直接设置这个变量的值来改变模式 
;; [M-x] set-variable backup-by-copying t 回车，即可修改模式
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Emacs的临时文件的文件名是使用“#”包围
;;在Emacs内使用[C-x,C-f]打开要编辑的文件(file.ext)
;;在打开的buffer中编辑内容,Emacs自动侦测buffer是否更改,如果更改会自动Auto-Save
;;此时我们能够在编辑的文件同一目录下看到临时文件为:"#file.ext#"
;;使用[C-x,C-s]保存当前buffer写入文件,#file.ext#消失——被Emacs自动删除
;;未作保存强制退出之后#文件依旧存在,恢复内容
;;打开要恢复的文件-> M-x recover-file RET -> 确认恢复

(setq auto-save-default nil) ;; 默认值是t,要关闭直接用nil更改默认值
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;停止生成foo~的文件备份
(setq make-backup-files nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;设置标题栏显示buffer名
(setq frame-title-format "%b  [%I]  %f" )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;将M-tab(Windows中的Alt+Tab按键传输给Emacs)
; (when (fboundp 'w32-register-hot-key)
  ; (w32-register-hot-key [M-tab])
  ; (w32-register-hot-key [M-S-tab]))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;;输入< s 然后按Tab键 快速补全代码块
(require 'org-tempo)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 打开 org-indent mode
(setq org-startup-indented t)
