        >  7       1��������:��]`VR�cY��QpZ��            47  �
copy: App.js �5rev: 72ee4bf0fa395f1bf5dc46088697a3057126a140

import React from 'r $'; �{ Font } Hexpo �AppLoading# �MainPage �./screens/ N �StyleSheet, View }� i-nativ1 �ThemeProvider. sG �d-components'2 t0 � �constants/H a';

ex( �default class� � extends+$.C[ � {
  state = �  appReady: false,
  };

  onAsyncStart = a d () =>: AwaitpQ.load. ( �  'poppins-light': require('./assets/fo� P( L( |.ttf'),D regularF R* H omediumG M) F 0});4) =�this.setSa'({[JtrueC PError@ e	 !:  L  �role.log )��render()l Rif (!q  n .l    1 cturn ( 6  <� !rt�!={P �}) �onFinish' s 
% � $  ! #/> � <(!={ &}>� s=!={ �s.container( 5  <�/? /@  )</t %>
� Q}
}

{l 7s =�A.cre�5
  } :�rflex: 1A�backgroundCol�@'#f5 '  �	marginTop: 16,
  },
});
