            �       7��������?F �ة�����$V��:/            4�   �class TranslearnApi {
    t �ate(text, callback)     # � + " I was< Ad!"). �}
}

export default tv W= new� PApi()          �  2       >    ����,"����.,M���U�I��            4�   �      d   �    translate(text) {
  �return this.sleep(1000).then(() =>- 1 �ext + " I wasa 5d!"/ !}) !}
 ^ � = (millis[ � �new Promise(resolve( �setTimeout �, millis))
    7     9  2      B   ����i��-��ipi�4�a� ��,z               ,   Y   -        return this.sleep(2000).then(() => {
    p     9  2      C   ����#	�.��
G��p��XI�S��               ,   Y   -        return this.sleep(1000).then(() => {
    �    {  c      N   ��������;��|�\v��Zt�            4    �-�const API_KEY = 'AIzaSyBA8sfxygtNonDcAupDGjrKVgUdajw2ouM';
; �api = {
    translate: 'https:// �ion.googleapis.com/language$ �e/v2/?source=en&target=es&key=' +� �+ '&q=',
};

   ,   �  8  Purl =� %['^ �'] + text;
' �return fetch(encodeURI(url))
  �.then((resp) => 	 o.json() AJson-  x & g.data.+Es[0] 9edT�   }v  ca� o(errort athrow " 	L P });
    $     �  R      R   ���������=�<#�
���7            4.  �&   �   �       async translate(text) {
    (   �  wtry {
  �const resp = await fetch(encodeURI(url));6 EJson:   k.json(0 ereturn1 d.data.� uions[0] fedTextA }
 �catch (error)� athrow  ; P   }
    �     �        S   �����s�H&(Ng^wJW���>;            4$    �<import translateStorage from '../s +/T" �'

  �  �   �  M �ions = respJson.data. );
7 �his.saveData(text,K )/ ireturn" 5[0]` �edText;
   ! +@ b 	� {

    }
    �     �  [      V   ������S�/����p����}�            4n    �<import translateStorage from '../s +/T" �'

  �  �   �  M �ions = respJson.data. );
7 �his.saveData(text,K )/ ireturn" 5[0]` �edText;
   ! u@ b 	% {c � T- ('en', E  � .then();
    }
    �     �  F      W   ����Yz�y1�Luɟ��Dt`~f�            4a  �    3   6  �this.saveTranslation(text, t �s);
  �  �   *: 5 r {
  & 0 �
7 nretrie;  - � 'ry 6 �urn awaitd �eStorage.T a'en', Z ;K � } catch (error)e �console.log! ;� GnullS p
    }
    S    �  �      Z   �����QȊ ��s��;�2v��x{�            4  B  2 3 �  �storedTranslations = await this.retrieve" �(text);
C Oif (G  /&&]  �.length) {
  oreturn0  6[0]i � }

  Y  �   �const resp� �fetch(encodeURI(url)� 2 EJson6   g.json(, t5 h.data. 3  9.sa5,N e  t@t:J ? t � �edText : k �;
  �  �   *�� r {
  & ! � oasync �?try�O� Storage[k'en', a�} catch (error< �sole.log! ;� HnullK`    }
    �    �  �      [   ����`�_�z;��}z��}���o�            4"  B  2 3 �  �storedTranslations = await this.retrieve" �(text);
C Oif (G  /&&]  �.length) {
  oreturn0  S[0].t fedTextx � }

  Y  �   �const resp� �fetch(encodeURI(url)� 2 EJson6   g.json(, t*5 h.data. 3  H.saD,N e tOtIO ? t/
A : t6�  �  �   *�� r {
  & ! � oasync �?try�^� Storagejk'en', p�} catch (errorK �sole.log! ;� HnullK`    }
    	i     T  8   
   c   
����=��g� geQ�
�4~�G}�s            4l   B  � � `
    async isFavorite(text) {
  �return false; '}
: =set; p
    }
    	�     Z  j      d   �����C;I�8���b�^sL��ڌ            4]   �  �  �   Q    async setFavorite(text, is S) {
  �// TODO: Save * � as favorite
    
     d  r      g   �������4=����a�B�֣�V�            4e   �#  �  �   Y    async setFavorite(originalText, is S) {
  �// TODO: Save text as favorite
    
{     �  �      h   ����ne{�@Hz��j�+�/��            4  �#  �  �   q    async isFavorite(originalText) {
  �return await translateStorage.retrieveG i'en', M �;
  �  /   {T Osavey ,� � x /sat 
	H �.then();
