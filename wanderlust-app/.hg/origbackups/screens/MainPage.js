import React from 'react';
import { StyleSheet, View, Image, Keyboard } from 'react-native';
import { TitleText, NormalTextInput } from '../components/UiComponents';
import Card from '../components/Card';
import { Flex } from '@ant-design/react-native';
import { colors } from '../constants/Theme';
import translearnApi from '../api/TranslearnApi'
import { isEmpty } from '../utils/StringUtils'
import { BlurView } from 'expo';
import styled from 'styled-components';
import LottieView from 'lottie-react-native';

import { Dimensions } from 'react-native';

const { height, width } = Dimensions.get('window');

const Wrapper = styled(BlurView)`
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  height: 100%;
  width: 100%;
  z-index: 999;
  background-color: rgba(12, 123, 111, 0.8);
`;

const MainState = {
    NO_RESULT: 'no_result',
    LOADING: 'loading',
    SHOWING_RESULT: 'showing_result',
    ERROR: 'error',
};

export default class MainPage extends React.Component {

    state = {
        text: null,
        mainState: MainState.NO_RESULT,
    };

    onTranslate(text) {
        if (this.state.text !== text && !isEmpty(text)) {
            translearnApi.translate(text, this.onTranslationFinished)
            this.setState({ text: text, mainState: MainState.LOADING })
        }
    }

    onTranslationFinished(translation) {
        console.log(translation);
    }

    render() {
        Keyboard.dismiss

        if (this.state.mainState == MainState.LOADING) {
            return <Wrapper tint="light" intensity={80}><LottieView source={require('../animations/loading_animation.json')} autoPlay loop /></Wrapper>;
        }

        return (
            <View style={styles.container}>
                <Card>
                    <Flex style={styles.languageContainer}>
                        <TitleText style={styles.languagePickers}>English</TitleText>
                        <Image style={styles.switchLanguageButton} source={require('../assets/icons/arrows_24dp.png')} />
                        <TitleText style={{ ...styles.languagePickers, textAlign: 'right' }}>Spanish</TitleText>
                    </Flex>
                    <View style={styles.inputTextContainer}>
                        <NormalTextInput placeholder='Type something...'
                            multiline={true}
                            numberOfLines={4}
                            blurOnSubmit={true}
                            returnKeyType='go'
                            onSubmitEditing={e => this.onTranslate(e.nativeEvent.text)} />
                    </View>
                </Card>
            </View>
        );
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#fff',
        padding: 16,
    },
    languageContainer: {
        width: '100%',
    },
    languagePickers: {
        paddingTop: 8,
        paddingLeft: 16,
        paddingRight: 16,
    },
    switchLanguageButton: {
        alignSelf: 'center',
        tintColor: colors.accent,
    },
    inputTextContainer: {
        paddingTop: 8,
        padding: 16,
    },
});
