;; no startup 
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;;设置打开文件的缺省路径
(setq default-directory "~/")

;;ido的配置,这个可以使你在用C-x C-f打开文件的时候在后面有提示;
;;这里是直接打开了ido的支持，在emacs23中这个是自带的.
(ido-mode t)
(setq ido-save-directory-list-file nil)
;;ido模式中不保存目录列表,解决退出Emacs时ido要询问编码的问题。

(setq inhibit-startup-message t)
;;关闭emacs启动时的画面

(setq gnus-inhibit-startup-message t)
;;关闭gnus启动时的画面

(fset 'yes-or-no-p 'y-or-n-p)
;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no

(setq enable-recursive-minibuffers t)
;;可以递归的使用 minibuffer

;;(setq frame-title-format "emacs@%b")
;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示
(setq frame-title-format '("%S" (buffer-file-name "%f"
(dired-directory dired-directory "%b"))))


(show-paren-mode t)
;;打开括号匹配显示模式
(setq show-paren-style 'parenthesis)
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处

(setq user-full-name "Ki TAN")
(setq user-mail-address "iamtanki@gmail.com")
;;设置有用的个人信息,这在很多地方有用

;; swith windows
(global-set-key (kbd "C-c k") 'windmove-down)
(global-set-key (kbd "C-c i") 'windmove-up)
(global-set-key (kbd "C-c j") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)

;; for same name files
(require 'uniquify)
(setq
uniquify-buffer-name-style 'post-forward
uniquify-separator ":")

(provide 'envm)
