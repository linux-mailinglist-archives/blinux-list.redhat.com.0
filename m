Return-Path: <blinux-list+bncBCMKFVG4RQEBB264ZW5AMGQEARLD3XA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F65D9E7B14
	for <lists+blinux-list@lfdr.de>; Fri,  6 Dec 2024 22:36:45 +0100 (CET)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6c5106979sf35557485a.2
        for <lists+blinux-list@lfdr.de>; Fri, 06 Dec 2024 13:36:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733521004; cv=pass;
        d=google.com; s=arc-20240605;
        b=h7V8eyCBjSZ58ACkBehmoU+GC6RoarHX14bLvifi4oMAu4AXoVHUgLaBgfE41FcfbL
         6FqxEOA4n6OSH3uOnYorGfgESPcDCWUI+fyKWbY/+6yMXfzQaUWRrHdXhzf/IZZuSmN0
         pTesgwLTfDi0tVDmQ2qN9gj4EdxKSEb4Z/JQHzEHqlGak//lpANeCRAksZbywB4hAwbl
         C6o+Xxi5IspvlJKGDxyCABkkRpJ7BU/+SJw4mFnB9lzFq7REsZNwOZCNrUOgx5qKsyyC
         0FawzL5FsxF0fDcih89ZbwOKZ2SUlyS8bM7ZtT9IBbCC/hIB1ghIA3En+m0xEvFUBgYv
         ZpNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=vMrBmDLXfCCzgjXOcDk4jNhtkCbaYn3c5MEpRiwJ9NA=;
        fh=iAGdht36CZ3nBI9mPZ/zaNazvasPGrd7YQL3gitXSwc=;
        b=R2A+kFxzpu3axXMV3OYULC9RUUL5Pgjos3Sgyubl5i7u8Nk1V1VbAaFJVb6EDGVFNh
         loHAYO8qtAogcIKjOqVc8CFabTlG2DMkk3Xc6i8bmy/C5ppVe2ECCZikiXBVyTBMtX51
         m3pRITHUpGqBUYDwnHTs/FNSuN6j7bvCXVYRNLAcN8tQI88sBvTDWZQVTpNQ58uxwGgX
         KeyUKGzR2aj/8CnEdwOsjrRBtFeaIb5tkiiehcJTuAvdnDYOa6yzqZrk7W0wbvZEgtwi
         qZr/1aDscz9Aa2MOe96X21V4xsYhvqhQcrFHSZATDIKHXlh5FvX9CRXnXycxUwPG+iMP
         Jbpg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733521004; x=1734125804;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vMrBmDLXfCCzgjXOcDk4jNhtkCbaYn3c5MEpRiwJ9NA=;
        b=btkgaswfScu/k6Kq10Dvn3aMm6mvWVbLvBgm7XkdkDPLoNFe4vcDTQsvNtloCAjjAk
         6zhW7thVZClF1+UKl6/Clpez+jpXMRbn+uWxm3+TkiRNNGST1d8Mp2fcnloA4w3yXCj4
         TL1xXrArndEv9EE0KF6YVJ3MCz6LXyWNZDGQpT/dlThSDip0Iv5rzDsUotyOyz3fqEzr
         MDlEDSC2z7BDmjYMtcvrW9kpci1WhuQdlUOmyevy6KvHrLVxXBs/MQcKYykz5/134eNh
         UosPBpIB2zhVdwSiNpaiL5ZSrr4JSYafh+H7uNX583a38Ol9xwliUlN6Colra06ZKcQm
         izJg==
X-Forwarded-Encrypted: i=2; AJvYcCXl+0wdgNFKpUN+U80O57gTEPZWG9yaCAEcHpBBNrnMdfzg1XugR6wSAGOfizKWglno9HErvA==@lfdr.de
X-Gm-Message-State: AOJu0Ywoz9jUe/My50HVbzYwc8Ia+7/BhteTxWex91BIn6birRLtneRQ
	FQY/HqcIj07IGBBwVB5h+sUBKvl0oHO9UvASX3PIRsCcX0+axKyW/oLm1GiqAOk=
X-Google-Smtp-Source: AGHT+IFopr77JsuICiU+wu9sHMtg2ZJycp0I5MXTfARcXCsquYkKg+aKFd05cAtp7Pc+ymyN6g4r2A==
X-Received: by 2002:a05:620a:6018:b0:7a2:2cc:83d7 with SMTP id af79cd13be357-7b6bcac04bdmr692140085a.6.1733521004186;
        Fri, 06 Dec 2024 13:36:44 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:b6f:b0:6d4:3b41:2941 with SMTP id
 6a1803df08f44-6d8d6f0f3fbls40638686d6.2.-pod-prod-01-us; Fri, 06 Dec 2024
 13:36:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUAEJFpOR1+BVJWVuH3A37zzZ1NKPvywBkb0eAEfQVJ6oM7gtju7UCK06RN6ip1UG75VaqH3cCaISs30A==@gapps.redhat.com
X-Received: by 2002:a05:6214:501c:b0:6d4:1530:a0a3 with SMTP id 6a1803df08f44-6d8e70d5e3emr60139896d6.6.1733521002969;
        Fri, 06 Dec 2024 13:36:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733521002; cv=none;
        d=google.com; s=arc-20240605;
        b=TL14JbgosSq5/xuXDHAE+itG2Qkg5o71i5igcmhRPv2BHE5+u55jYG3IUZtoqcK7oa
         UKC/NN93e3x6THimeUoylS6+WTWAvTA1PC2XUDH6miwSUwzimMA8+5+HfBqcVTwF4QLu
         K2WLrPCs3zU1zzw6F/a6nAEUgZ1i3QNS6qlhENHbc8IpWtivsYjl2KqjojjrTNCwdBzd
         2HgX4DmrrVKikQiYeutmCS44xHRHDQluafANS+y53rXKNqxP1UJ16xBncU6lMOtXDyrp
         XeTJ+OtBjhhimLBkfnzAzfiarFD0yGJs1C4fAc1rW0/HyI3xwIMA4DKtRx+pgS/fdH3j
         89uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=DB0Caxn9v8S41uqc+EYvf1cqD+5ElOLfLp9EIbqhYvU=;
        fh=AXNZjH/ikmBqNPZoOQ6NPxFksrtYaqnihA22kp5aTsI=;
        b=C0ZkBjAQzylvRrco2K7/qSvg7YoG1jdOMMZEpMUkbqK3bmOiaceBb7gzBqpd50E/Qv
         euGamO5X5CShPiQ7Q0gW7E/dn8CGL1GsVUhPI7tVVpgX3AhwIm9UJ0uK+0oLuToN/oX4
         apQ7zTqd0whUjgcNuBnM3Y2TkUZZohGEk5vY1FCqG/wOfjY84El1wqec9o/WAg5PAUsc
         /3yO6JAzuGK8K++YIZJ/qdCZJc5Ot1fxvSGn2141nJXRHHPdzDiaR+0Z4fENpsSQ3LJg
         Cki/jzTqDu4RZzeXCDQUJDD6rLW7QHqftkQtqeFtdLWs2/3sEa4QNL3iX4wklRX/Qkum
         GxHw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d8edc286fdsi21849376d6.54.2024.12.06.13.36.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 13:36:42 -0800 (PST)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-15-xIFmEMCXNHWtP77uZ16kOA-1; Fri,
 06 Dec 2024 16:36:41 -0500
X-MC-Unique: xIFmEMCXNHWtP77uZ16kOA-1
X-Mimecast-MFC-AGG-ID: xIFmEMCXNHWtP77uZ16kOA
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8D04F1953945
	for <blinux-list@gapps.redhat.com>; Fri,  6 Dec 2024 21:36:40 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 86DA41955E87; Fri,  6 Dec 2024 21:36:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 831411955F3F
	for <blinux-list@redhat.com>; Fri,  6 Dec 2024 21:36:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F21F41945CB2
	for <blinux-list@redhat.com>; Fri,  6 Dec 2024 21:36:39 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-372-RrbkZXjFNZuKW5uXXSKCxA-1; Fri,
 06 Dec 2024 16:36:33 -0500
X-MC-Unique: RrbkZXjFNZuKW5uXXSKCxA-1
X-Mimecast-MFC-AGG-ID: RrbkZXjFNZuKW5uXXSKCxA
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 400BD62B6C;
	Fri,  6 Dec 2024 22:29:17 +0100 (CET)
Message-ID: <d17761b0-8c45-4356-8a19-f4585633c827@slint.fr>
Date: Fri, 6 Dec 2024 22:36:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [orca] Re: Sorry for offtopic, response to the blinux
 registration list not working
To: orca@freelists.org,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <876361b2-68e7-44e1-ad8c-d2a3a838f854@harrastenurkka.fi>
 <a4765a7a-e546-088c-7f43-7c2038dbe283@hubert-humphrey.com>
 <039001db481b$0ea43140$2bec93c0$@gmail.com>
 <4c3ac83d-ad20-4413-a57d-a23874518efc@slint.fr>
 <02f144af-7577-e873-34b6-a8bafe5e2915@hubert-humphrey.com>
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
In-Reply-To: <02f144af-7577-e873-34b6-a8bafe5e2915@hubert-humphrey.com>
X-Mimecast-MFC-PROC-ID: FvF8KcYN8smLvfLewGssM2z3fkNqtbZ3nh3jjX9p8P0_1733520991
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xczxZRuMl49JmWHbylU8i-c8hgk7RTrZpDLgeN4l034_1733521000
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
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

Thanks Chime,

unfortunately this information is rather old, thus many of the links it provides
are dead.

Unfortunately the blinux list is only partially usable and provides not recent
archives. Fortunately the is one here instead:
https://www.spinics.net/lists/blinux/

I think it's about time to cease to use the blinux list that seem to be
under-managed if not no more managed and replace it by one that could be hosted
@ freelists.org as is the orca mailing list, which is free with good records.

@All, what do you think?

Is there a volunteer to register then maintain a list like blinux@freelists.org
replacing blinux-list@redhat.com?

If no one volunteer to do that within a week or so I could do it, unless someone
objects or have another proposal.

Cheers,
Didier


On 06/12/2024 22:09, Chime Hart wrote:
> Well, Chris-and-Didier, I am glad I save as much as I did. In my Lynx bookmark
> file, I have the following which has several mailing lists-and-an ftp archive,
> which I haven't tried lately
> http://leb.net/blinux/
> Maybe an ftp index will provide dates to imply if any will still work. Best of luck
> Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

