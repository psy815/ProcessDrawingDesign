   M S B A M L   `   `   `  ����R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089h dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35   TabControlNormalBorderBrush  �� Color  DisabledBorderLightColor  ControlPressedColor  ControlPressedColor1  DisabledControlDarkColor  TabItemHotBorderBrush  TabItemHotBackground �� EndPoint �� 
StartPoint � Color � Offset  ButtonNormalBackground  TabControlStyle �� 
TargetType �� Property �� Value �� 
TargetType	 J� SnapsToDevicePixels-   'System.Windows.Input.KeyboardNavigation
    TabNavigation � RowDefinitions ��Name ��Name    DirectionalNavigation    TabIndex ��Name J� Opacity J� RenderTransformOrigin �� ScaleY ��Name K� IsItemsHost �� Triggers P� Property P� Value 	 TabItemFocusVisual �� StrokeDashArray 
 TabItemSelectedBackground  TabItemDisabledBackground  TabItemDisabledBorderBrush  TabItemStyle �Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� 
TargetName �� TargetProperty8  2System.Windows.Media.Animation.EasingColorKeyFrame  �� KeyTime! �� Value<  6System.Windows.Media.Animation.EasingThicknessKeyFrame" p� KeyTime# p� Value$ �� CornerRadius  BorderMediumColor  ControlLightColor  ControlMediumColor  TabItemStyle1%   Transitions%  System.Windows.VisualTransition&   GeneratedDuration'   GeneratedEasingFunction4  .System.Windows.Media.Animation.ExponentialEase7  1System.Windows.Media.Animation.EasingFunctionBase(   
EasingMode9	  3System.Windows.Media.Animation.EasingDoubleKeyFrame) O� KeyTime* O� Value+   CustomVisualStateManagerH
  BMicrosoft.Expression.Interactivity.Core.ExtendedVisualStateManager, �� Padding- �� RelativeSource. �� AncestorType/ �� 
TargetName0 ]� 
Conditions1 �� Property2 �� Value�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      5      8d2http://schemas.microsoft.com/expression/blend/2008  5      Bmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      Bei9http://schemas.microsoft.com/expression/2010/interactions  5      %R  &	        &	 !     &	 B     &	 c     &	 �     &	 �     &	 �     &	 �    &	 �    &		 '    &	
 �    &	 �    &	     &	 <    7  7  7  7  7  &	 n    7 	 7   7  7  7 
 7  7  7  �� 5      $  #8C8E94��67   ��5	      	#FFAAAAAA��65   ��5
      	#FF3129B8��60   ��5      	#EE00FFFF��61   ��5      	#FFC5CBF9��65   �� 5      $  #3C7FB1��61   �� 5      $	 0,1&�64   $	 0,0&�6C   .��5      � $ #EAF6FD��6   $
 0.15Q�6!   � 5      $ #D9F0FC��6   $ .5Q�6!   � 5      $ #BEE6FD��6   $ .5Q�6!   � 5      $ #A7D9F5��6   $ 1Q�6!   5      �� 5      $	 0,1&�66   $	 0,0&�6E   .��5      � $ #F3F3F3��6   $ 0Q�6!   � 5      $ #EBEBEB��6   $	 0.5Q�6!   � 5      $ #DDDDDD��6   $	 0.5Q�6!   � 5      $ #CDCDCD��6   $ 1Q�6!   5      �� 5      " ��6!   .�5      ��  � ��# �  6!   �� 5       � ��$ 4,4,4,4q�6   �� 5       � ��$ 0q�6&   �� 5       � �� �#3333336!   �� 5        � ��$ Center=�61   �� 5!       � ��$ Center=�6/   �� 5"       � �� 5#      �� 5$      " ��6   .R�5%      � }�. 	 . $
 Local=�6;    5&      �� 5'   	   $ RowDefinition0��6   $
��Auto �6/   $��32��6=   �� 5(   	   $ RowDefinition1��6   .+�5*      �� $ ContentPanel��6   $��1��6%   #��z��62   
������ $ 	Contained=�6w   $ 2��6�   $
 Local=�6�   ._�5+   	   �� $ PART_SelectedContentHost��6   $��SelectedContent��6<   $ 4Q�6\   $��Center=�6h   $
��Auto��6�   $ 0.5,0.5&�6�   z�5,   
   V� 5-      .~�5.      �� $ 1Q�6   �� 5/      �� 50      T� 51      52      54   
   55   	   �� 56      $ HeaderPanel��6   $��Stretch=�6$   $
��Auto��6B   $
��Auto��6P    . $��0��6p   $��Stretch=�6}   57       58      P� 59       � {� .  . �5:   	   ��  � ��
 �����6&   5;   	   5=      5?      5@      �� 5A      .�5B      ��  � �� 5C      �� 5D      .R�5E      �� $��3,3,3,1q�6   	 . #��� ��6=   $��1��6�   $	 1 2R�6�   5F      5H      5I      �� 5J      $  #F9F9F9��65   �� 5K      $  #F4F4F4��65   �� 5L      $  	#FFC9C7BA��66   �� 5M      " ��6   .�5N      ��  � �� 5O      �� 5P      " ��6&   .R�5Q      � $
 Root��6    5R        5S   "   SelectionStates��. 5T   &     
Unselected��62     5U   &   Selected��. 6E   �� .��5V   .   �� $ Border��6K   $N H(Panel.Background).(GradientBrush.GradientStops)[0].(GradientStop.Color)�5W   1   .g�5X   2     $  0��6F   8!   6R   5Y   /   6N   6[   5Z   #     5[   "   CommonStates��. 5\   &     
Normal��. 5]   (   �� .��5^   .   �� $ Border��6K   $N H(Panel.Background).(GradientBrush.GradientStops)[1].(GradientStop.Color)�5_   1   .g�5`   2     $  0��6F   8!  6R   5a   /   r� 5b   .   $ (Border.BorderThickness)�6O   $ Border��5c   5   .	�5d   2     $" 0��6J   $# 1,1,1,0q�6V   5e   /   5f   +   5g        5h   &   	MouseOver��. 5i   .   �� .��5j   .   �� $ Border��6K   $N H(Panel.Background).(GradientBrush.GradientStops)[1].(GradientStop.Color)�5k   1   .g�5l   2     $  0��6F   8!  6R   5m   /   r� 5n   .   $ (Border.BorderThickness)�6O   $ Border��5o   5   .	�5p   2     $" 2��6J   $# 1,1,1,0q�6V   5q   /   5r   +   5s        5t   &   Disabled��. 5u   *   �� .��5v   .   �� $ Border��6K   $N H(Panel.Background).(GradientBrush.GradientStops)[1].(GradientStop.Color)�5w   1   .g�5x   2     $  0��6F   8!  6R   6�   �� 5y   .   $ Border��6K   $2 ,(Border.BorderBrush).(SolidColorBrush.Color)�5z   1   .g�5{   2     $  0��6F   8!  6T   6�   5|   +   68   6F   .+�5~      �� $ Border��6%   $��0,0,-4,0q�65   $��1,1,1,1q�6G   $$ 2,12,0,0��6b   ��5   "   �� 5�   &   #  �  66   ��5�   "   �� 5�   &   $	 0,0&�6:   $	 0,1&�6L   ��5�   .   � � 5�   2   # �  6?   $	 0.0Q�6k   � 5�   2   # �  6?   $	 1.0Q�6l   5�   /   5�   '   ._�5�   "   �� $ ContentSite��63   $��Center=�6H   $��Center=�6c   $��Header��6�   $��	12,2,12,2q�5�   !   ��. 5�   !   5�      5�       5�      P� 5�       �@��
IsSelected . . �5�   "   ��  �@K�ZIndex$	 100��6A   5�      5�      5�      �� 5�       � ��$ Normal$�6    �� 5�       � ��$
 Bold"�6!   �� 5�       � ��# �  6!   �� 5�       � ��
 �����6!   �� 5�       � �� �	#FF4483486"   5�      �� 5�      " ��6   .�5�      ��  �@�FocusVisualStyle8   6'   �� 5�       � ��
 �   �6!   �� 5�       � ��$ 6,1,6,1q�6   �� 5�       � ��8  6"   �� 5�       � ��8  6!   �� 5�       � ��$ Stretch=�61   �� 5�       � ��$ Stretch=�6/   �� 5�       � �� 5�      �� 5�      " ��6   .R�5�      � 	 .  5�        5�   	   CommonStates��% 5�   
     5�      $& 0D�6   ' 5�        5�      $( EaseOut=�6   5�      . 5�   
     
Normal��. 5�      �� .��5�      U� $ (UIElement.Opacity)�6*   $ Content��6Z   .\�5�      	  $) 0��6"   $	* 0.8Q�6.   5�      5�      5�        5�   
   	MouseOver��6     5�   
   Disabled��6   5�   
   + 5�      
  5�   	   .+�5�      �� $ Bd��6   #��z��6   $��1,1,1,0q�6G   #��z��6a   #, z��6�   ._�5�   	   �� $ Content��6   $��Header��6+   ��. #	 z	 6�   $
��-7,0q�6�  ��6B   �� *HorizontalContentAlignment+- �� ". ����6  �� *VerticalContentAlignment+- �� ". ��6�  5�   	   5�       5�      P� 5�       �@J�IsMouseOver . . �5�   	   �� $/ Bd��6&   8   � ��66   5�   	   P� 5�       �@��
IsSelected . . �5�   	   ��  �@K�ZIndex$ 1��6(   �� 5�   	   $/ Bd��6&   8   � ��66   5�   	   ]� 5�      0 5�   	   �� 5�   
   1 �@��
IsSelected2 .  6*   �� 5�   
   1 �@J�IsMouseOver2 . 6+   ./�5�   	   �� $/ Bd��6'   8   � ��67   5�   	   P� 5�       �@��TabStripPlacement$ Bottom=�6-   . �5�   	   �� $/ Bd��6+    � ��$ 1,0,1,1q�6;   5�   	   P� 5�       �@��TabStripPlacement$
 Left=�6-   . �5�   	   �� $/ Bd��6+    � ��$ 1,1,0,1q�6;   5�   	   P� 5�       �@��TabStripPlacement$ Right=�6-   . �5�   	   �� $/ Bd��6+    � ��$ 0,1,1,1q�6;   5�   	   ]� 5�      0 5�   	   �� 5�   
   1 �@��
IsSelected2 . 6*   �� 5�   
   1 �@��TabStripPlacement$	2 Top=�61   ./�5�   	   ��  � ��$ -2,-2,-2,-1q�6"   �� 5�   	   $/ Content��6"    � ��$ 0,0,0,1q�67   5�   	   ]� 5�      0 5�   	   �� 5�   
   1 �@��
IsSelected2 . 6*   �� 5�   
   1 �@��TabStripPlacement$2 Bottom=�61   ./�5�   	   ��  � ��$ -2,-1,-2,-2q�6"   �� 5�   	   $/ Content��6"    � ��$ 0,1,0,0q�67   5�   	   ]� 5�      0 5�   	   �� 5�   
   1 �@��
IsSelected2 . 6*   �� 5�   
   1 �@��TabStripPlacement$
2 Left=�61   ./�5�   	   ��  � ��$ -2,-2,-1,-2q�6"   �� 5�   	   $/ Content��6"    � ��$ 0,0,1,0q�67   5�   	   ]� 5�      0 5�   	   �� 5�   
   1 �@��
IsSelected2 . 6*   �� 5�   
   1 �@��TabStripPlacement$2 Right=�61   ./�5�   	   ��  � ��$ -1,-2,-2,-2q�6"   �� 5�   	   $/ Content��6"    � ��$ 1,0,0,0q�67   5�   	   P� 5�       � {� .  . �5�   	   �� $/ Bd��6&   8   � ��66   �� 5   	   $/ Bd��6'   8   � ��67   �� 5  	   # � ��6&    � ��5  	   5     5     5     5     