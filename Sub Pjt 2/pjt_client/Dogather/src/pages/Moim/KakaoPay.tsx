import { useEffect, useState } from "react";
import { useRecoilValue } from "recoil";
import { userIdAtom, userNoAtom } from "../../atoms/Login";
import { IGroupData } from "./MoimDetail";

export type RequestPayResponseCallback = (response: RequestPayResponse) => void;

export interface Iamport {
  init: (accountID: string) => void;
  request_pay: (
    params: RequestPayParams,
    callback?: RequestPayResponseCallback
  ) => void;
}

declare global {
  interface Window {
    IMP?: Iamport;
  }
}

export interface RequestPayAdditionalParams {
  digital?: boolean;
  vbank_due?: string;
  m_redirect_url?: string;
  app_scheme?: string;
  biz_num?: string;
}

export interface Display {
  card_quota?: number[];
}

export interface RequestPayParams extends RequestPayAdditionalParams {
  pg?: string;
  pay_method: string;
  escrow?: boolean;
  merchant_uid: string;
  name?: string;
  amount: number;
  custom_data?: any;
  tax_free?: number;
  currency?: string;
  language?: string;
  buyer_name?: string;
  notice_url?: string | string[];
  display?: Display;
}

export interface RequestPayAdditionalResponse {
  apply_num?: string;
  vbank_num?: string;
  vbank_name?: string;
  vbank_holder?: string | null;
  vbank_date?: number;
}

export interface RequestPayResponse extends RequestPayAdditionalResponse {
  success: boolean;
  error_code: string;
  error_msg: string;
  imp_uid: string | null;
  merchant_uid: string;
  pay_method?: string;
  paid_amount?: number;
  status?: string;
  name?: string;
  pg_provider?: string;
  pg_tid?: string;
  buyer_name?: string;
  buyer_email?: string;
  buyer_tel?: string;
  buyer_addr?: string;
  buyer_postcode?: string;
  custom_data?: any;
  paid_at?: number;
  receipt_url?: string;
}
{
  /* price prop해주는 부분에서 가격 계산 제대로 된걸로 넣기 */
}
function KakaoPay({ groupNo, price }: any) {
  const userNo = useRecoilValue(userNoAtom);
  const userId = useRecoilValue(userIdAtom);
  const [time, setTime] = useState(0);
  setTimeout(() => setTime(1), 500);
  const handlePayment = () => {
    const { IMP } = window;
    IMP?.init("imp60712675");
    // const amount: number =
    //   priceSelections
    //     .filter((price) => price.value === order.price)
    //     .map((price) => price.amount)[0] || 0
    // if (!amount) {
    //   alert('결제 금액을 확인해주세요')
    //   return
    // }

    const data: RequestPayParams = {
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: `${userNo}_${groupNo}`,
      name: "노르웨이 회전 의자",
      // amount부분은 수정 필요
      amount: Number(`${price}`),
      buyer_name: `${userId}`,
    };
    console.log(price);

    const paymentData = {
      userNo: userNo,
      groupNo: groupNo,
      optionNo: 1,
      amount: 1,
      price: price,
    };

    const JWT = localStorage.getItem("login_token");

    const callback = (response: RequestPayResponse) => {
      const { success, merchant_uid, error_msg, imp_uid, error_code } =
        response;
      if (success) {
        fetch("http://i6e104.p.ssafy.io:8090/api/payment", {
          method: "POST",
          headers: {
            jwt: `${JWT}`,
            userId: userId,
            "Content-Type": "application/json",
          },
          body: JSON.stringify(paymentData),
        });
        alert("결제 성공했습니다잉");
        console.log(response);
      } else {
        console.log(error_msg);
        alert("결제 실패했습니다잉");
      }
    };

    IMP?.request_pay(data, callback);
  };
  return (
    <div>
      <button onClick={handlePayment}>결제하기</button>
    </div>
  );
}

export default KakaoPay;