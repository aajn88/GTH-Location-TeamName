        w  �        ���������a�c+vRў����E���            4�  �import React from 'r 3';
 �{ StyleSheet, Text, View }0 �-native';

ex8 �
default class App extendsm �.Component {
  render()   aturn ( 1  <q s� !={ �s.container}>& 0  <� �>Open upt �.js to start working on your app!</3 h /i  � );
  }
}

const~ 7s =�.create(� � :� �flex: 1, �backgroundColor: '#fff' �alignItems: 'center �justifyContent p},
});
    w    U  �           ������(jNWB�R����	h�            4�  C   R �oimport { Font } from 'expo';
 bstyled " �-components/native"/ �{ AppLoadingR B   � �0�  state = {
    appReady: false,
  };

  onAsyncStart = () =>4  � Q.load" ( �  'poppins-light': require('./assets/fo� P( L( |.ttf'),D regularF R* H omediumG M) F 0});(�this.setSU'({OJtrueC PError@ e	 !:  L �console.log 0);
�� �k Rif (!p  m .k $) ��return ( 6  < !rt�!={P �}) �onFinish' s 
% � $  ! #/> ");U� ��     N� �NormalText>Open up�b.js to� P work�pon yourl7!</9 R
  � 0 <
U&t  # =T. p`
  col��palevioletred;

`;    �       �         ����218�iS��W�7R����              �  �        �     R  �         ����͑�������:�������!�                J   :  onAsyncStart = async () => {
    await Font.loadAsync({
  �  �        *     k  w         ����=Ar��3��݊��a��s�Xg            4z   �      R  So   � � �+import MainPage from './screens/ �';
  �       <7 � />
  !  �        �     �  H         ����>�p��:�8;eؙ��	            4  C   � �01import { StyleSheet, View } from 'react-native';
  W  j   I  </ s@ !={ � s.container}>
  �<MainPage /  </< >U w � j
constP 7s =� �.create({
  a 3: {M �flex: 1, �backgroundColor: '#fff',
  },
});
    t     �  �         ����K�TXF��>��Q�XGƜ            41  C   � �$Yimport { ThemeProvider } from 'styled-components'
2 t0 & �./constants/H �';
  �  �   �  <c A !={ C}>
  a<View x !={ �s.container( �  <MainPage /? /@  )</t �>
    ?   *! �flex: 1,0 �
backgroundColor: '#fff',
    c     ?  �         ����r�K��9_��F���q&�@              �  �   3    backgroundColor: '#f5f5f5',
    marginTop: 16,
    �     7  �      3   ����+����a�������7U�              �  �   +  onError = (error) => console.log(error);
    �     �  �      O   �����m*�G��A���I��:�!-            47  �_   �   �   Uimport { StyleSheet, View, TouchableWithoutFeedback, Keyboard } from 'react-native';
  �  M   �  <O � onPress={W �.dismiss} accessible={false}>
  <�   s� !={ �s.container* �  <MainPage /C /D  /</� Pack>
