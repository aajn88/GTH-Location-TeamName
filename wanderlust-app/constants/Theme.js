export const grays = {
    black: '#000000',
    white: '#ffffff',
    disabled: '#00000026' // 38% alpha
};

export const brand = {
    primary: '#db7093',
    accent: '#70dbb7',
};

export const colors = {
    ...brand,
    ...grays,
};

export const fonts = {
    light: 'poppins-light',
    regular: 'poppins-regular',
    medium: 'poppins-medium',
};

export const space = [0, 2, 4, 8, 16, 32, 64, 128, 256, 512];

const theme = {
    space,
    fonts,
    colors,
};

export default theme;  
