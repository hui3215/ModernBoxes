   M S B A M L   `   `   `  ����F  BModernBoxes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:ModernBoxes.View.SelfControlModernBoxes.View.SelfControl  5   	   -    'ModernBoxes.View.SelfControl.BaseDialog   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:ModernBoxes.View.SelfControl     5   	   S OHandyControl, Version=3.2.0.0, Culture=neutral, PublicKeyToken=45be8712787a1e5b0hc'https://handyorg.github.io/handycontrol  5   	   -   5          � 
ResizeMode$  NoResize=�5   	    � WindowStyle$
 None=�5	   	    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	   
������  � Title$ 
BaseDialog��5   	   $	��240��6   $	��400��6)    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $7 1/Resource/dictionary/AddMenuDialogDictionary.xaml?�6%   %    5      .��5      7  1HandyControl.Controls.TransitioningContentControl  .��5   
      HandyControl.Controls.Card  $��10q�6   )  #HandyControl.Controls.BorderElement   CornerRadius$ 16��6      EffectShadow1	 J� Effect#	 [  6A   .��5      � 
 � RowDefinitions
 5      �� 5      $
��auto �6$   �� 5      .+�5      �� -   5        $��TB_DialogTitle��5   )   $��0��6   $�� ��6?   $
��Left=�6G   $��Center=�6b   $��10q�6}   $
��Bold"�6�   $��20(�6�   �� 5      -   5        $��0��5      $��40��6&   $��Right=�6G   $��40��6c   $��20(�6n     
closeStyle#��[ 6|   ��6�   �� *CloseDialog+��5       �� 5!      .R�5"      �� $	����6(   $��Center=�6:   $��Center=�6W   $��/Resource/#iconfont)�6s   5#      5%      �� 5&      -   5        $��DialogContent��5&   ?   $��1��6!    K� ZIndex$ 5��6.   
���  ��5(      5)      5*      5+      5,      