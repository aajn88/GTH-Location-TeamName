import styled from "styled-components/native";

export const NormalText = styled.Text`
    flex: 1;
    flexWrap: wrap;
    fontSize: 14;
    color: ${p => p.theme.colors.primary};
    fontFamily: ${p => p.medium ? p.theme.fonts.medium : p.light ? p.theme.fonts.light : p.theme.fonts.regular};
    letterSpacing: 0.25
  `;

export const TitleText = styled(NormalText)`
    fontSize: 24;
    letterSpacing: 0
  `;
