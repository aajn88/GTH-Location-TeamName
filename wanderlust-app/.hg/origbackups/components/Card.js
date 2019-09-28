import styled from 'styled-components';
import { css } from 'styled-components';

const Card = styled.View`
  width: 100%;
  border-radius: 10px;
  border-style: solid;
  border-width: 0.5px;
  border-color: rgba(37,42,54,0.08);
  background: ${p => p.theme.colors.white};
  opacity: ${p => (p.disabled ? '0.4' : '1')};
  ${p => (!p.noShadow ? cardShadow : null)}
`;

export const cardShadow = css`
  box-shadow: 0 2px 10px rgba(37,42,54,0.12);
`;

export default Card;
