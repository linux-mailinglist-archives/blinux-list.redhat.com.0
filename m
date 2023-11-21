Return-Path: <blinux-list+bncBCMKFVG4RQEBBE746OVAMGQEYFR4UYQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FF07F369A
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 19:59:32 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-670237ba89asf1291576d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 10:59:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700593171; cv=pass;
        d=google.com; s=arc-20160816;
        b=zniCLFsrbUpUUtACnyaYBBiKA1DNLa8FfTchkYudQulrF7QEnoH4L77EHJiKAcX8Uy
         ONcGCRax3zLXrAxMflK/+aMe28Q5Cl9aWZH5To+1JSjsxpui/w8M7l+E9MBMW7SUGrxU
         3LDlUTB1lpXrGVbv1xbEqCbMBm5M0KEQbUeqSwsc8D/CtpvNBSt2YGzWYDrBTtGKTaby
         U6TBcJWLaCIF35okBRkEi2ayeW223TF1raBAF1FKtMcWWqMYnO4cpAG9LBv1/9OstiD2
         pU5lC5qwIN9xFPko9SOvbLf6d/UBXRoU3rDv3k2pbqsSymJevHwuC77hkLzkohm7lq7e
         LnWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=OM9LZ/UL0y+RSyBBWX0ZUsRaBB7Oo9ULOzEFv4oxKfs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=RXHaKh76o/+6eYfkFOLEsCjUTZq7odP4E5LAqn/mRF8rjNHup32mzSEocFCcYtmq6V
         ulKcP6cXR9xwDrczU08rl5ls4ql8mNnN0F/d1R2rMQTPvnz6lMV3mGE76FQ/0xSAnwcf
         +q1+fjPfNK4kz9wtOXayDjkVXyDH8NghdICj+DVGsJIinAFxxk04OLKGLJTZQ5meFUd8
         ZzPwUpPHAxEDFuQJFTW9lX+f3yOoAFdr40iHTbwoCGEC38wuQ2jPFTT79wRKlPSwtwU+
         CxMFHRjHPfqiYxtbfK/J+6X9BE+aTLWOzOU15uVHzUb+/WwhDpYhv93WPOsFi0vKsMf2
         PVCA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700593171; x=1701197971;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OM9LZ/UL0y+RSyBBWX0ZUsRaBB7Oo9ULOzEFv4oxKfs=;
        b=ekW8jUkkZhtbYhWRDvR8pi7PDepxZLwvvqTQQ2XTcdQfPnufg928yiBUCRL43z4LTI
         p4hGBrIk2kU5lqJtTaJWEF/0i4Lde5YafDCEkhIz0AxXa5FOZRH9q2rIzvnj0Q4Tdj7f
         9o96IkCMCblZ10CSjTw/9qf3Tqrfn1Nogjj24WzyOOLpy+mNSDVy/BLPB2a4uMgZD3j6
         PpMjvIFCPXu8Gf3uBdidjlamQ08iNgnQyGzWmcNGSdJoGCL75QAw/B8/iNaAKY4fe/1N
         LUoTSAh6H9/IHEyfWEycZ+eWEbOgI9+vYtYz2iduxkO1DczLSTTzIB4jArDc3EsBr4u1
         hSIg==
X-Gm-Message-State: AOJu0YxnneDQvoC5BkbQQ7vTfyPOkd50FEgvu8Hz+MGREuF0fe3IKplm
	NMo6W/7MdiuThlbm6/5DMXf/3w==
X-Google-Smtp-Source: AGHT+IG05ZId+ItyitXljOmDIVw8LJO+HxIA2xkvVIPuClTN+iVZUF96CMFbJI8ixEtzQkBZs05Z1g==
X-Received: by 2002:a05:6214:18e5:b0:679:da36:a6e0 with SMTP id ep5-20020a05621418e500b00679da36a6e0mr4968900qvb.25.1700593171301;
        Tue, 21 Nov 2023 10:59:31 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4f13:0:b0:668:d9c1:f577 with SMTP id fb19-20020ad44f13000000b00668d9c1f577ls959870qvb.0.-pod-prod-00-us;
 Tue, 21 Nov 2023 10:59:30 -0800 (PST)
X-Received: by 2002:a05:6214:249:b0:65a:feb1:ec46 with SMTP id k9-20020a056214024900b0065afeb1ec46mr5388548qvt.6.1700593170556;
        Tue, 21 Nov 2023 10:59:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700593170; cv=none;
        d=google.com; s=arc-20160816;
        b=w7FjZcDPBN23yVEnzte4siKppVZV2/+AC3W0oQiSxFj8mOzj+4WiYdggzSDurmHGvH
         kAjvKtlYneagEGsLb9/PUs8bsxgbu9x+iOBiP73f04MVAbgKNVFVYLInfb0er9XzCelt
         UnvY1ncsZGhARfMoY5e1Ac6QB6J8G/RMnOjDQbk//fBD1Ha2HGwfAwVWVcknVriPg/TR
         ZuNR7hGNwCD2AY1cwfRbTYrtXl4L8tVt3VRC6QKfoqDsDSr2U1zKs3p/5EV4425R1r+5
         hvx6sVb3mvyqygAHW2MrMUOPQLrAI7yjUJt8i05LebZK+RYSWld3k4ZF/tTVrwxOCwXw
         lxdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=QOyb4TItvfEYz32HWtHlj8Q8VOY37NNsoMGMOAOBbW0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=zF5JMtA4iV1zsumEq4Nhb72mb3ZKMCzWtnXbJPc+JXQDtfhj2vhF3F1SRhUrpi+1cL
         FyjTLXD0f1MIjnBi8g0arHzfV+lhvzPae2Dqs0QC8UVuCtN6nBhC3d9llzbLZ05RMexd
         sBswqjkqEHlYmK8u7WW3VX3vBYwD9ynS6mhmaWwSygzkVPwY/TdNvAqIHxxlrAaZ4SFL
         sSY0c5ZpEyeRlFPlt9L9bzM7Mlzniaq7qp3LHd7iIrKR2i4/WltnzQVQA0LmzK0IwKnd
         Lp7p5C64+0Mg7Q0ysFAqcbWE1UQhEkTGaSayt3NHzP1qj5TFqsC/2pMlHhwsXLDv3IE4
         PztA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ud4-20020a05620a6a8400b007777245ad07si9113698qkn.480.2023.11.21.10.59.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 10:59:30 -0800 (PST)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-460-rOfejN8fONywPbALW1n_xg-1; Tue, 21 Nov 2023 13:59:28 -0500
X-MC-Unique: rOfejN8fONywPbALW1n_xg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7405784AF80
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 18:59:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 705A91121308; Tue, 21 Nov 2023 18:59:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 67D1B1121306
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 18:59:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2EEBC1C0171C
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 18:59:28 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-407-Rzb2XTv_PVaDajHuweUZcA-1; Tue,
 21 Nov 2023 13:59:25 -0500
X-MC-Unique: Rzb2XTv_PVaDajHuweUZcA-1
Received: from [192.168.242.17] (unknown [88.176.55.76])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7B1CFC2EC6
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 17:58:55 +0100 (CET)
Message-ID: <ec1cc970-8a41-47f3-87dd-5ed8d3292fc4@slint.fr>
Date: Tue, 21 Nov 2023 19:59:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regex for spaces
To: blinux-list@redhat.com
References: <20231121.153445.633.1@[192.168.1.100]>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <20231121.153445.633.1@[192.168.1.100]>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
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

Hi Rob,

Assuming that the file is named "name":
echo $name|sed 's/^[[:space:]]*//;s/[[:space:]]*$//'

Then to rename the file: mv $name $(echo $name|sed
's/^[[:space:]]*//;s/[[:space:]]*$//')
This will remove any number of leading and trailing spaces.

Cheers,
Didier
didieratslintdotfr

Le 21/11/2023 =C3=A0 16:34, 'Rob Hudson' via blinux-list@redhat.com a =C3=
=A9crit=C2=A0:
> I am not good with regexes at all. They give me a headache lol. Can anyon=
e supply me a regex that will remove any trailing spaces in front or at the=
 end of a file name? I use the program brename:
> https://github.com/shenwei356/brename/
> I have a regex to remove double spaces, but now I need one that will knoc=
k off leading and trailing.
> Thanks for any help.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

