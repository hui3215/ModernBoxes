   M S B A M L   `   `   `  ����F  BModernBoxes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:ModernBoxesModernBoxes  5   	   3clr-namespace:ModernBoxes.ToolModernBoxes.Tool  5   	       ModernBoxes.MainWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:ModernBoxes     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   S OHandyControl, Version=3.2.0.0, Culture=neutral, PublicKeyToken=45be8712787a1e5b0hc'https://handyorg.github.io/handycontrol  5   	   )toolclr-namespace:ModernBoxes.Tool  5   	   -   5          �Name$  window��5   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5	   	   
������  � WindowStyle$
 None=�5   	    � AllowsTransparency$
 True��5   	    � Title$ 
MainWindow��5   	   $
��1000��6   $	��600��6*    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $2 ,/Resource/dictionary/MainWindowResource.xaml?�6%   %    5      .��5      7  1HandyControl.Controls.TransitioningContentControl  .��5   
   �� ._�5      �� 	 �� Orientation$	 
Horizontal=�6   .+�5      � $��10q�6   $
��Left=�6#   .+�5         HandyControl.Controls.Card  )  #HandyControl.Controls.BorderElement
   CornerRadius$
 16��6   
�������   EffectShadow1 J� Effect# [  6�   ��6A   ��  �� ElementName$ Toggle�� �� Path$ 	IsChecked�  	toconvert �� 	Converter# [ .��5      �  � RowDefinitions 5      �� 5    "   �� 5!   "   $
��auto �60   .+�5#      �� $	 Vertical=�6)   .+�5$   "   d� -   5        $��Toggle��5$   /     MainMenuToggleButton#���  6=   $	��Top=�6l   $��40��6�   $��0 16 0 0q�6�    � ContextMenu 5%   &   �� 5&   *   .@�5'   .   m� $��层级��67   .@�5(   2   m� -   5        $��topItem��5(   Z   $��顶层��6;    m� IsCheckable$
 True��6G    m� 	IsChecked$ False��6�   m� 5)   2   -   5        $��
BottomItem��5)   [   $��底层��6;   $
 True��6G   $
 True��6�   5*   /   m� 5+   .   -   5        $��	btn_fixed��5+   C   $��固定��67   $ False��6t   m� 5,   .   -   5        $��	btn_close��5,   C   $��关闭��67   6T   5-   +   5/   #   �� 52   "   ��6/   �� *
MenuList+��53   &   �� 54   *   .R�55   .   �� $	 Vertical=�69   56   +   ��59   &   �� 5:   *   .R�5;   .   �� $	 
Horizontal=�69   $��0 6 0 0q�6S   .+�5>   2   	� $	��200��5?   5   $��Center=�5B   5     	MenuStyle#��[ 5C   5   $��Center=�5D   5    	� 	GroupName$
 menu��5E   5   ��5@   5   ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType ItemsControl$ DataContext.OpenApp���5A   5   �� *
MenuName+��5F   5   �� *
MenuName+ � ToolTip 5G   5   �� *
MenuName+5H   /   5I   +   5L   #   �� 5M   "   $ 添加��6,   $	����6:   $��/Resource/#iconfont)�6J   $��Center=�6k   $��25(�6�   $��0 10 0 0q�6�   
�������.  (System.Windows.Interactivity.Interaction   Triggers 5N   &   /  )System.Windows.Interactivity.EventTrigger  5O   *      	EventName$ MouseLeftButtonDown��69   .  (System.Windows.Interactivity.TriggerBase   Actions. 5P   .   6  0System.Windows.Interactivity.InvokeCommandAction     Command 6D   �� *AddMenuDialog+5Q   +   5S   #   5T      �� 5V      $��1��6)   .+�5W   "   �� $	����6,   $��Center=�6<   $��16q�6Y   $��/Resource/#iconfont)�6e   
�������$��20(�6�   5X      5Y      5Z      &   HandyControl.Controls.NotifyIcon  5\      -   5          Name$ NotifyIconContextContent��5\   $      Text$ 木函��6F   $y�Visible=�6P      Icon$ /Resource/logo.ico��6e    5]      �� 5^      .@�5_   "   m�  m� Command$$ hc:ControlCommands.ShutdownApp��6+   $��退出程序��6T   5`      ,	  &HandyControl.Interactivity.Interaction  	  Triggers  5b      -
  'HandyControl.Interactivity.EventTrigger
  5c      ! 
  	EventName$! Click��6.   ,  &HandyControl.Interactivity.TriggerBase"   Actions." 5d   "   /  )HandyControl.Interactivity.EventToCommand  #   Command$+# %hc:ControlCommands.PushMainWindow2Top��64   5e      5g      5h      � 5j      $��10q�6   $	��260��6#   
������ .+�5k      �� -   5        $��CardApplication��5k   H   $y�	Collapsed=�6_   ��6#   �� *CardContents+��5l      �� 5m      .R�5n   "   �� $	 Vertical=�6-   5o      ��5r      �� 5t      .R�5u   "     $
 16��6*   $��0 0 0 10q�6M   $   Header$ 5v   &   �� 5w   *   $��11q�64   ��6@   �� *
CardName+.��5z   &   �� $	��200��6V   ��66   �� *CardContent+6V   5{   #   5|      5~      5      5�      5�      5�      5�      