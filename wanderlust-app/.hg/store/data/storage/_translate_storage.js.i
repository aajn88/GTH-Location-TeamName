        �  <       S��������|Q�7����%���u�����            4<  �import { AsyncStorage } from 'react-native';
- uisEmpty( �../utils/StringU �'

class Translate^ �{

    ar T save" �ion(target, originalText, t" cs) {
  �key = this.buildKeyB %);3 Cif (� X(key)O   freturn0 }
 #�.setItemC �; // TODO: Keep implementing ) F Tawait q(JSON.s6Iify(� � }/� 8str� �   2 ? $ � + ':' + �.trim() : nullZ Q}

ex��default t�\= new�Pe();
    �    L         V��������$]C�O�cS�(AiW�E�Rh�            4�  C   ] �#const KEY_PREFIX = '@Translearn';

   � #�  �keys = await AsyncStorage.getAllKeys();
0 �.forEach(a0   w => {
  _valueY �Item(key);5  � pole.log @ + 'Z 2' +P / !})� �$  �   G q  sq �, JSON.stringify(t"�ations));S ��  �   bS �return str && target ?lt+ ":" + @+ ':� �str.toLowerCase().trim() : null;
    �     R  a      W   ���� ���	��<\-3@��M�            4R   B  Z �* F    async retrieveTranslation(target, originalText) {
  �
    }

    $       V      X��������_��nR@�`�c����a6��7               �  �      Z  �        <     R  �      Y   �����WPlݭ�ߪ��H�0�vb��            4R   B  � �* F    async retrieveTranslation(target, originalText) {
  �
    }

    �     �  |      Z   ����;�����7�^����� %�I            42  C  � �)&    async retrieveTranslation(target, originalText) {
  �key = this.buildKey4 ;3 �if (isEmpty(key)O   �return null5 }
 t� �s = await A� � Storage.getItem] +;
W 	? �? JSON.parse( 5) :� P  }

    d    �  7      h   ����]����w ��r�-��6�۟            4s  �+   ]      gconst TRANSLATION_KEY_PREFIX = '@Translearn';
. �IS_FAVORITE. �:isFavorite';
  �  9  �    async save% �(target, originalText, F S) {
  �key = this.buildKey@ etrue);9 �if (isEmpty(key)U   freturn0 }
 pawait A� � Storage.setItemI �, JSON.stringify(�  6}

� oretrie� � Xo false� � / =gv V = ?"Xparse( :| %� ?str�prefix =m �:�� rstr && � $ ?f t+ ":" + p+ ':' +. �.toLowerCase().trim() : null;
