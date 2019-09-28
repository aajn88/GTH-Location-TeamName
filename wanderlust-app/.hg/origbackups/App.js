import React from 'react';
import { Font } from 'expo';
import { AppLoading } from 'expo';
import MainPage from './screens/MainPage';
import { StyleSheet, View } from 'react-native';
import { ThemeProvider } from 'styled-components'
import theme from './constants/Theme';

export default class App extends React.Component {
  state = {
    appReady: false,
  };

  onAsyncStart = async () => {
    await Font.loadAsync({
      'poppins-light': require('./assets/fonts/Poppins-Light.ttf'),
      'poppins-regular': require('./assets/fonts/Poppins-Regular.ttf'),
      'poppins-medium': require('./assets/fonts/Poppins-Medium.ttf'),
    });
  }

  onAppReady = () => {
    this.setState({ appReady: true });
  }

  onError = (error: Error) => console.log(error);

  render() {
    if (!this.state.appReady) {
      return (
        <AppLoading
          startAsync={this.onAsyncStart}
          onFinish={this.onAppReady}
          onError={this.onError}
        />
      );
    }

    return (
      <ThemeProvider theme={theme}>
        <View style={styles.container}>
          <MainPage />
        </View>
      </ThemeProvider>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: '#f5f5f5',
    marginTop: 16,
  },
});
