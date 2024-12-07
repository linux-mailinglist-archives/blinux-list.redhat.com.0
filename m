Return-Path: <blinux-list+bncBCMKFVG4RQEBB5UM2K5AMGQEVNT6ZIA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 716709E813B
	for <lists+blinux-list@lfdr.de>; Sat,  7 Dec 2024 18:31:36 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d87ee5fb22sf51728236d6.1
        for <lists+blinux-list@lfdr.de>; Sat, 07 Dec 2024 09:31:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733592695; cv=pass;
        d=google.com; s=arc-20240605;
        b=lb/IVGukUP4kUOy1JxhbMLJ5A43V3VJH3jX9JqPDTy42BMIcyn8LR50S3eaqafnALB
         kidnV+qUbL1r8poIksL5t9orw48IxxzA03DhIlXtZscEW9zB7D2X/0Dyz6hf8FVKnltx
         0Ri1W36qf24OxFSHbHzeIRmGsLhYLvjtuZ5WF5IiG21KyvcxuZLhzEyGQu8Hn8JJg+X3
         Zi/l9YFPv4F63LEoD0Jjt5MvugJj8pxs1pI5epiDH/XF6+U3asySy2fFZZxmdRLuI3UL
         c//imQWpnWcfIO/BdyB82SSVVJmaZ8AA0PlhHjrCf8yLV109aF71sKtcpHEc1MggniFB
         PDzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=R74w40Bb3t+gtmSJ0DrxIj6HHxxPzLu6EHfVNpzsT7M=;
        fh=fLWf0SebN/NwCgxUD0S7hqh8I/+pPHa61+otzBsR9nw=;
        b=XejtUrXB8Kzy5838wRzEUfpUApOiMZDPD8jWgzqTb3k+VV2k4l59nTQVpJKPm0DNfq
         b5WiG4vcuaQ9/k5HIhyTatNnbshEtGhWM+fBaSlxpcc+JWE97s+RPaEMfzc8rFku3Noz
         f4h3hf30e6djWHro+TfiPwPvPtLCtgoGt5ujL3rP7l7GWASUNFT9fOsXS9tDr7UnMe6q
         wUteg/0vQy3I3DshiXrNjQSrQNfN4/XlN1Gq2EoIwR/zHg3SeyWnu56PbmvOk1QQPHD/
         QIFHPiyON7CdAIFrpAHwqAfJa8esIBeWg2qL/zAItb/+6NLHU+zvnRAkGJ4YUmRnbkHl
         Chug==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733592695; x=1734197495;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R74w40Bb3t+gtmSJ0DrxIj6HHxxPzLu6EHfVNpzsT7M=;
        b=KMPoVpPeqLWb5yjGDaTB++0JzJZj3C+6sudTnHqHP4K2IeCTkuDO6sV+q+RlxXSFKq
         XGJYmrl8mHtfGetP+johezmR+rjO8o6R3Xn4Y+ydVRQhwmyUFUa7JMQNiQHijCzRqk8R
         XIv/L5C4fFgg1tsJ7AQSczBpsKoreTZXsErbMtOfltEjT7k5adXrXeTexK/AKfFfidwg
         aTbVYppvx33mZXWIBmerHium8SNAE4iGON/nQHJ1Rk2hgQviSjYhOC18w0eLhFXBQz5p
         3sFDLJh6Hezvph5ZRj27boMTBo4UThFrFJ6Hn5lBxbAncl9XVzQzy/G5n+LEXg6okTKh
         yhig==
X-Forwarded-Encrypted: i=2; AJvYcCVKkhzBoLSfAg09NRFwmeUxwN4OJNMJbKDLeHZ0Phojsq7Y6E68JlDDnUoBzlhjKM4Yb6WDOQ==@lfdr.de
X-Gm-Message-State: AOJu0YxVPHwRGH10+vF8EBgnxYgu8PmalF5Cbp+9WpZZqJg95jxO2RmE
	i4VmOY8GC2WRfFQuf+DJwxNepq1Jr9E9U8x9DCW6l6KRiYoZ0L0hMeKKCE3kqeQ=
X-Google-Smtp-Source: AGHT+IHE6VjW+93RSWYDUcB7fe66+TLsrLL2l/vRQByg/4jcu0QPOW9QCSAjZczDheSZT6TsP6HyYw==
X-Received: by 2002:a05:6214:5195:b0:6d8:9e16:d083 with SMTP id 6a1803df08f44-6d8e70d6eb2mr114082236d6.3.1733592694991;
        Sat, 07 Dec 2024 09:31:34 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:d44:b0:6d8:b1cf:a07d with SMTP id
 6a1803df08f44-6d8fe87c7ffls9354126d6.2.-pod-prod-02-us; Sat, 07 Dec 2024
 09:31:33 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWj284An66PKHSvOPWnHMu/FVEIuRKDArLEAlbUdGSkq6BXPyjVTjR22yIZVHQMMveI2gmIvDwvGCvgHQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:3902:b0:7b1:880c:5805 with SMTP id af79cd13be357-7b6bcb658b5mr1206582385a.45.1733592693716;
        Sat, 07 Dec 2024 09:31:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733592693; cv=none;
        d=google.com; s=arc-20240605;
        b=iSJ0q816iff3MS2BHG6rQsww4Vei5Fksk+mH5W2EF6i1udU8v/GeFUQzFEBUefL4xr
         qZ3On/iOElLQx2D4RxHxebNGKF82AxIh76QInlYUeD9pUPoGxyh87TXqf2HtOxXCfgQq
         p1iNbe81vVRR34kzT3kOegOFkTHOZzMs9g7tYvxQzjZObuRK6b7LEUKlXKWzdrDcCp4y
         WJ4GhlsqdCp9HIAoX1yqJ8bYmmVoDIMGpMOHIm+VGGeSr1WF0zt6Dimfl3SNXwdSLPoI
         lPoPdbHBD+NBkc6Okf/TCGG3gOJd0sWezozJzrvCM7O+aKg6zBHmdGhx4oTQtLzdaFz1
         VsJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=nbDAJJyTRMu4qQiSVM/pDW1kEuQ9U+Ts393vIdp9vxo=;
        fh=/Hqa1QDCz9WfdJp0XP/6foIRI76WVLUeK0YtmyEiowo=;
        b=E84x3KGmuyNaXo4jEhMiyusiV5+F3Ne8D5BabmalunBgAps12S8+XHBei9zJxmGSrv
         PH838VzjAJO2qznTwZboIA92TSapzyzs2iQ3zEmKpa3KwKB3eV/NPckaGZStwKq7FkJy
         Qjf/86FYOyFxyazotsdx3QY8NUYYrOs5REMtBZwZgVoxpdYeIwQIZKx2kFQvvl3BAPeb
         AO2ViYcA6Mw5qnZR5ZZQodjBLRiJuJQuN/nCR4dBhrr9PL7RIq/8APdZAwpqOJTzKqTm
         ++hstLYsVaeaDlgEQZHhlHLnqi0ROSi/HI7ML1xwkuC8jmxOAzzS4c+ZOjFTXdZ/RhHV
         MiIg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b6b5a5d048si717741185a.170.2024.12.07.09.31.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Dec 2024 09:31:33 -0800 (PST)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-329-VuRNQ1kQMiCj9h4vlYm9zg-1; Sat,
 07 Dec 2024 12:31:30 -0500
X-MC-Unique: VuRNQ1kQMiCj9h4vlYm9zg-1
X-Mimecast-MFC-AGG-ID: VuRNQ1kQMiCj9h4vlYm9zg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B35FF195608C
	for <blinux-list@gapps.redhat.com>; Sat,  7 Dec 2024 17:31:28 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 918BC1955F3F; Sat,  7 Dec 2024 17:31:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8EA58195605A
	for <blinux-list@redhat.com>; Sat,  7 Dec 2024 17:31:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0FBC919560A2
	for <blinux-list@redhat.com>; Sat,  7 Dec 2024 17:31:28 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-684-QYMOghbDMBugh7WGN1F8Nw-1; Sat,
 07 Dec 2024 12:31:23 -0500
X-MC-Unique: QYMOghbDMBugh7WGN1F8Nw-1
X-Mimecast-MFC-AGG-ID: QYMOghbDMBugh7WGN1F8Nw
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 2F9F662B6C;
	Sat,  7 Dec 2024 18:24:07 +0100 (CET)
Message-ID: <0c84a96a-65e6-4c7b-9098-f348d1670cf3@slint.fr>
Date: Sat, 7 Dec 2024 18:30:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [orca] Re: Sorry for offtopic, response to the blinux
 registration list not working
To: orca@freelists.org, blinux-list@redhat.com
References: <876361b2-68e7-44e1-ad8c-d2a3a838f854@harrastenurkka.fi>
 <a4765a7a-e546-088c-7f43-7c2038dbe283@hubert-humphrey.com>
 <039001db481b$0ea43140$2bec93c0$@gmail.com>
 <4c3ac83d-ad20-4413-a57d-a23874518efc@slint.fr>
 <02f144af-7577-e873-34b6-a8bafe5e2915@hubert-humphrey.com>
 <d17761b0-8c45-4356-8a19-f4585633c827@slint.fr>
 <aee96de1-5287-4699-bb5d-09653a2a8044@gmail.com>
From: "'Didier Spaier' via blinux-list@redhat.com" <blinux-list@redhat.com>
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
In-Reply-To: <aee96de1-5287-4699-bb5d-09653a2a8044@gmail.com>
X-Mimecast-MFC-PROC-ID: URVI4od2OrVbgPM-72MCej-d_MTVJ5EcMw8VNowNWWo_1733592682
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rCPVL_BsoTXPiMlz1cu2_a5W1sjqqUYin5xByI1dn_U_1733592688
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Original-From: Didier Spaier <didier@slint.fr>
Reply-To: Didier Spaier <didier@slint.fr>
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

Thanks Alex,

I suggest that you wait until Monday night for a possible other proposal bu=
t as
far as I am concerned go for it.

I will be at your disposal for any help you may need.

Cheers,
Didier


On 07/12/2024 16:13, Alexander Epaneshnikov (aarnaarn2) wrote:
> Hello. I think I could create and administer sutch list.
>=20
>=20
>=20
> 07.12.2024 0:36, Didier Spaier (didier) =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
>> Thanks Chime,
>>
>> unfortunately this information is rather old, thus many of the links it =
provides
>> are dead.
>>
>> Unfortunately the blinux list is only partially usable and provides not =
recent
>> archives. Fortunately the is one here instead:
>> https://www.spinics.net/lists/blinux/
>>
>> I think it's about time to cease to use the blinux list that seem to be
>> under-managed if not no more managed and replace it by one that could be=
 hosted
>> @ freelists.org as is the orca mailing list, which is free with good rec=
ords.
>>
>> @All, what do you think?
>>
>> Is there a volunteer to register then maintain a list like blinux@freeli=
sts.org
>> replacing blinux-list@redhat.com?
>>
>> If no one volunteer to do that within a week or so I could do it, unless=
 someone
>> objects or have another proposal.
>>
>> Cheers,
>> Didier
>>
>>
>> On 06/12/2024 22:09, Chime Hart wrote:
>>> Well, Chris-and-Didier, I am glad I save as much as I did. In my Lynx b=
ookmark
>>> file, I have the following which has several mailing lists-and-an ftp a=
rchive,
>>> which I haven't tried lately
>>> http://leb.net/blinux/
>>> Maybe an ftp index will provide dates to imply if any will still work. =
Best
>>> of luck
>>> Chime

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

