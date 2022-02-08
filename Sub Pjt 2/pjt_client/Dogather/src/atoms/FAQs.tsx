import { atom } from "recoil";

export interface IFAQ {
  id: number;
  faqQuestion: string;
  faqAnswer: string;
}

export const FAQsAtom = atom<IFAQ[]>({
  key: "FAQs",
  default: [],
});
