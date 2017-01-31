;;--------------窗口界面设置------------------

;;取消滚动栏
(set-scroll-bar-mode nil)

;;(customize-set-variable 'scroll-bar-mode 'right))
;;设置滚动栏在窗口右侧，而默认是在左侧

;;启动自动最大化(数据自己调整，注意格式，如(top . 0)，圆点前后都要留有空格)a
(setq initial-frame-alist '((top . 0) (left . 0) (width . 202) (height . 57)))

;;取消工具栏
(tool-bar-mode -1)
;; no menu bar
(menu-bar-mode -1)

(global-linum-mode t)
;;显示行列号
(setq column-number-mode t)
(setq line-number-mode t)

;;------------显示时间设置------------------------------
;; (display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
;; (setq display-time-24hr-format t);;时间使用24小时制
;; (setq display-time-day-and-date t);;时间显示包括日期和具体时间
;; (setq display-time-interval 10);;时间的变化频率，单位多少来着？

(provide 'winbar)
