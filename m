Return-Path: <blinux-list+bncBCLPHQH4XEIRB3EKSOVQMGQEUFGVB6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 884A17FA696
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 17:35:57 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-677e7daa85fsf46315976d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 08:35:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701102956; cv=pass;
        d=google.com; s=arc-20160816;
        b=WAdvntJBnedrc5XhVz9S5OJ57Z8iEnbYe5gto/GIHZxpxhWfTWVmFFmH7Q2Fm+EOsb
         TEEcjkn/3ut68LwkmCLra5AGOIfUsm6k5SIm8WOjwDSJa32Gt/zjcoHEuzDQ3zE+sOLn
         2aQkOrjdvRNUYxMnQ7fJoKx0dWsCIsYunT66ElFQO1tVUdgfhIzC4fwPJR5UDyJCjHLt
         PA6NKDu31Zi3WoVDExQIFWCjrb5/SgXmjXOfhn4HGSfLLfSkl/o9sLkhwubi5q71rHMq
         w7w/zca85lG6pOU8eWy8An6oShzRRCSGAvYS0wfAse1ismaNO4uclSj4aemSoawq2un5
         ALTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:references:cc:to:subject:from:user-agent:mime-version
         :date:message-id:delivered-to;
        bh=vdkU5Gpo9Ar5hZeXoJKnJDPAdpWlvsKvlS8YBQ/+f+s=;
        fh=+urdkKFX22Sd6EiMWsjNlbsp3J/nY1Beiwfm30+04Xo=;
        b=kH7JT9jUn1kaV1gbIZaSfXzGL2L4uBPAS765lYdkxARH5Qbh76D+1+wJjAoYom7L4P
         +1udijCFSZYznuXh3/IPKXDnfXK+YOcK/2z4PHcK6ViZti6khmwt3VeVSTdlMWiGci6a
         BmTTK+sVepyXJfXz1TAymrQddKJlaaY+z7Oi4Lfg8fHOostXHJtVzhY1DagA7j2Q1geP
         th3KTGZuvMz67svWgpW1n168pmBBdto03gt9zNhlUuLwX/ztObq87v8znZ2n7Wqc/Qq5
         OKErbd2WxeUo+EzGhYGvvyt4ARrnEtzkryorTajL/uwV7VhyaIxWFaoac6zpenoAxpj+
         jJIg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701102956; x=1701707756;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:references:cc:to:subject
         :from:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vdkU5Gpo9Ar5hZeXoJKnJDPAdpWlvsKvlS8YBQ/+f+s=;
        b=aXegJfbevrKCApW03etTNJ0OmpQsEWGFsdp0ZZhcF3soGsLcDtezwTcfsr3h4EJfPw
         WFah4UxxBaso0NpxUpjUY329DucQgIe/YL5CeJOe3Z4piJBQ3Jhf7afzkTQlWOZa5wBF
         gHYjU+ymChbh/e16oIVOg0dEQACASdBoWcJ9pMyhohm4CGuXORLXt+1/3IIFAjBdLOAv
         S0ORgd8ofLEgIuTY0s4vflOAmHKoQ8crdXee/63jK/biAPDYwN0nMDqX0PDq3nDi4L5n
         triN8AE+P+bx916f/0AKKabGVijm5nlqvuuIm+4EjtJELosy+ACVlFd4VCcwE3zl+fXn
         XmOg==
X-Gm-Message-State: AOJu0Yz5BEF4/DFKNdt9vVOYV3gNSo3h5L2Q1PT6TS9if7v1/acHZAM/
	zwq3fAsAO/9SiQ7Rey0KGm7bE01SiYVyaA==
X-Google-Smtp-Source: AGHT+IGN/XzhYCJXhtWyky7xg+J/SypSYuL221CNiHKSAWe6+MbBBvPOnHKhvK9UCScBdJB0L+vkUw==
X-Received: by 2002:ad4:4e03:0:b0:67a:3881:7c6f with SMTP id dl3-20020ad44e03000000b0067a38817c6fmr5501933qvb.42.1701102956239;
        Mon, 27 Nov 2023 08:35:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4b96:b0:67a:800:69df with SMTP id
 qf22-20020a0562144b9600b0067a080069dfls323494qvb.0.-pod-prod-01-us; Mon, 27
 Nov 2023 08:35:55 -0800 (PST)
X-Received: by 2002:a05:620a:801c:b0:778:abc4:cc3 with SMTP id ee28-20020a05620a801c00b00778abc40cc3mr13870126qkb.61.1701102955378;
        Mon, 27 Nov 2023 08:35:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701102955; cv=none;
        d=google.com; s=arc-20160816;
        b=V14IIclCmEM/PrVB7hBYDq/weVhxnL+HXJLWkurlZxHuNP2wGAsy0kjBTOTfmaPf7u
         94c0+EZvlyt6tBOLHSrRrDgzDPBwil+hegCeu6QC9ADSgf+1idWvEvlh+u6ulQMItL96
         pWQxBsouN8MygsUI/wAE/oYnmIMNvNoSYURADf1bFUr7M3K8v/5/1NXPN1XkabGYdxMG
         d8iIcDRTi5n3VI/27kdj7bQL5x3vE4/Fp9CbzzIVuSb7lFuRARXbreicFhBKYvWS+drb
         9G9dR4p74L+vIxI/5dmBN/abZcE17a1HkEeDI2x9CPpaBbqudARjh0aUOB2PUZjrghz6
         sklw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=dxzCoziZkd9xMYBH6VdXNhl3Ox5/GgxfP6pSV2UYgVQ=;
        fh=+urdkKFX22Sd6EiMWsjNlbsp3J/nY1Beiwfm30+04Xo=;
        b=e5ds/hHEaOCLbCBrgNUKLTY7sQ42JZijn7pMu0wGKCx2mPgBHoUy3eNk/JaCE0KpCj
         eQKVcaaWRiOqzUkQFuBrzXa8iELR6pc4dUalTKgrnKLS7BH6/qCXN9FNRgHSnagEIAB0
         it/skoZVYx1u0KUowpOM0ewyTZr6aGFCjqlwpnVcYUDt00sFK6WV914Uab6YqC0TFfFr
         lMFxGYgzSdOzJAs26HCMys/yW+6REN9XxySV+FDj/EiifKpxz83/3QygqNtQyBgg76EM
         5xolAiCYtopCarSCzo1bv5WmJUzXghS//pzO+5x8tqUOWfA6D0hkhHiave+mugLnTMb0
         EXIw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id eb5-20020a05620a480500b0076da636ca68si9709980qkb.197.2023.11.27.08.35.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 08:35:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-296-gjF4o5GHPIChcjkkdSVSoA-1; Mon, 27 Nov 2023 11:35:53 -0500
X-MC-Unique: gjF4o5GHPIChcjkkdSVSoA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 37E0F82DFAC
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 16:35:53 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 34E20492BE7; Mon, 27 Nov 2023 16:35:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D9F6492BE9
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 16:35:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C1CF1039ACC
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 16:35:53 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-398-4VqbSY4wNQCvZCtF07DJLA-1; Mon,
 27 Nov 2023 11:35:49 -0500
X-MC-Unique: 4VqbSY4wNQCvZCtF07DJLA-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 4E21E32007;
	Mon, 27 Nov 2023 16:35:44 +0000 (UTC)
Message-ID: <c8852aae-ea60-49e6-b73d-6a6438fcaf2d@jasonjgw.net>
Date: Mon, 27 Nov 2023 11:35:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: EmacSpeak Won't Compile
To: Jude DaShiell <jdashiel@panix.com>, Chime Hart
 <chime@hubert-humphrey.com>, Chevelle <cstrobel@crosslink.net>
Cc: Blinux Discussion List <blinux-list@redhat.com>
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com>
 <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net>
 <ae412f52-ec58-49f6-904c-919f15f047db@jasonjgw.net>
 <088e0963-afdc-4b90-ae7a-09825b60f7a0@crosslink.net>
 <a0ccf8ad-295d-0f91-2338-8af7367ceec6@hubert-humphrey.com>
 <866f9548-1084-5352-608a-030d30c6a8b8@panix.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 xsDNBF/xBRsBDADlVy0XG2HBtn9QyhH5yfQ+V5QwBUTBCMvguxy7FP2FaRB4eWfzEcqlK6vm
 zg9+26qlMfrnLqsv5G2XAbPYuPMmPSnQgRxXr855Dx369wz5lwioAEaGAGu9/Q8nG/y/9svf
 ZFkA67LDk7au9AN0+vZu7E6c0IhmirvjN9BxRLvGq8jCNdrR9Oh36y3UevZnpFUBD8gOqdPt
 mJgMXbfYSrEWzEqDcTOlG2o3ppyXGaj2aLGmyGUtnqK4DWnYCfaPyZaKJ1V/7SvVJ2gXvco0
 BEeP06rnbJf59ssg3mFv16XLxEEwPjG8g8BiZ4Csf6mGtIJ1HPSc/KNQegLxc1w6sOzs5TQo
 pYos+kT08lapoBwXhqSKjEN3swdh30v/s46CxFTcD6ksthgDZeSftNbcD8r5u94vIVP11GDO
 nPRMdZQIcyuNpKl7TqYb6pZOOWq7Yxmva77rV0WDmIrUI/V14ZN0r+PheGgp/4mBM/sueDMh
 /6ea5l3GuTepsOcwtSMZb6sAEQEAAc0gSmFzb24gV2hpdGUgPGphc29uQGphc29uamd3Lm5l
 dD7CwQkEEwEIADMWIQTqUmUTWtPL6lh3Yvx4WzV0iFry7QUCZKn3lgIbAwULCQgHAgYVCAkK
 CwIFFgIDAQAACgkQeFs1dIha8u152QwArR9WmCmFL9r6Kna984Dg8ZE/aRQ9L0I64wmWTrGW
 9OO2a6ouRU1XdqkA3D1PoZzZ22Czcjn5BXZkZIOshLWIEnL9Ey/Pj4Y4+PanKOOU1tKsF4bA
 kteR7RajGwLiVsjAL3E6SB+HS2NwuA99/tuIOiumnR95Xrf6Fd3RTPMCoDXlv6hBDg1lmV5x
 3MlSO0dgRZNahpJ+syIKy74FdGKWrZLND1yB0Pmz5SvgPglvGEAvBl5EgH0ha/s8AT/fTYCb
 GSH0FPU60RWXQdG0ou0mOnUB38nwwxoID6KKw7Ba76IZgex4K6QZiN60wV5zNSTQi64xyu2S
 m6Z1RC40tKPrEkEfhAVamvF532FukF5oFpu26K5RZmR7hIc20upn1NigJNBqbFd92MptGktZ
 0jC3JSW8nEuRfCPp0pQazbu5M14wUKsjk5adG5tD3FnNicE5k1wOTMJIQPMl/X9KDipkmxDH
 4h/wB4zD/Gqn0rz3KzV0KucwpJm9vfDW0sMm729bzsDNBF/xBRsBDADd/3voDU1gk90zYHXG
 X0KWaAztsmCtqG+hNFShiEX9aj/y1nX1Fdwmm04ZiLPLZ0Ogsa5zDrikTnabYxo6z4Ej2TAR
 OMJLEo5YiT3J8GGHljqVh+LuGBNgF8hnrTvDqvhHL4+jTSIdeSqa3FhL9jiCfDpSAWABDHM0
 FxGMl6lMiS+DhTpRQs0mbJ9Sb7yYBoYzt9moFG7+v/dH8nG7C/hy7bqOPTeBNCUj8ceOQMkQ
 yVnjuipaxj5p8YxQA+SNqSTAA/SNoYs7v0Slr6oAkTnM30p+r35zX3RGRIqfduizy5Uo/ZGd
 T8XOfE++0fI4A5iWQh7q06Yn1jG/5WY1L0N2wgKF53SckdWYMHa9hrB+lzH8azMeggsgrOW1
 +SdbpF6kKSGTiQytchadJ+q8xtiLiDtbNdV79o7OvgrTVW2dpJ0zDyqdUvwQKHgczd4GFqDj
 FOTDpzOK92lQVswwG1RILdcSe29g0rdzrVEw7Y+RfFUn2Hl8fHIOuvtvyPqdnb0AEQEAAcLA
 9gQYAQgAIBYhBOpSZRNa08vqWHdi/HhbNXSIWvLtBQJkqfeWAhsMAAoJEHhbNXSIWvLtuMIL
 /0eWg3rtJqq57TVvSKZKtaBBDtxll0FFykWkIQKSzxoLBA7GcmPz3avp0NgzQdHOEjIwQ2Dk
 IWO0iPyGPrzjAM4jps0pEkI6UofXWDpPuBjY7rYqnGcp1iPsAdaaFSYMQYUgXaFEW/9lws2s
 wipaUkUiqOT0tCEv+9NF6oB/GRJo9q8K2vZ3Hv2/YFQPmFB/2Qu6pFjCMHs80rscoIO+YLlP
 wV6+FzkknTewSVrGRJ/OYKCVdaIu3GD5gZkeDqMgAHZ4gy41uX9nM2dxv2+1wAUaQGwLL30K
 WvRqI9jAA2K3IPGuTPHIVK6ADNymKJ8Uw3yJNLbsthEnjeXIvkQ7PggQm/qyME8NNS6mVSPW
 TWzS3JUV+O4jT1qBM6r2TnCBdxOe/NVcFR0fYwxXRl3+n/dehU7QAWMDnqvBRQ5SMTZyBK1K
 76SANvwEOvlkI2yEBs8mL3WxxPuliybrtxz4qF6aT/D3NSadxiuS/FXl5Xx55n4jNHenPpY+
 Jlx6Ar305Q==
In-Reply-To: <866f9548-1084-5352-608a-030d30c6a8b8@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>


On 27/11/23 09:43, Jude DaShiell wrote:
> emacspeak has only one developer and he may not have had time to squash
> the bug since he has other employment.
In addition, it appears to be a Debian packaging bug, and the author of 
Emacspeak is not responsible for someone else's Debian package.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

