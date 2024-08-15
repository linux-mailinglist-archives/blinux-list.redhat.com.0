Return-Path: <blinux-list+bncBCMKFVG4RQEBB5OK7G2QMGQETSNUN2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 492F4953B75
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 22:30:47 +0200 (CEST)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5d5ba96af29sf1295293eaf.0
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 13:30:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723753846; cv=pass;
        d=google.com; s=arc-20160816;
        b=CAGrThvWG+aDTAELQQaXW+8TnX9of7K0VNfaDdRZRy1+g9AV/rBpCMM/9OvrrqX2li
         ueDhDOP6fbO8D8BkNVgOa8P4CCu0egSUURcjheVOMqezCgyYz7baGfm+QpAa+Pft0Djd
         VxFZdwJEMvc9A3Tj3CyhxkIKEU4DJj0I3SOvqZQLGjcKnfRYtYTD9g9C/mJM/lNRmQba
         beCKKlY85qGMaMphk3BN+SU+4Sb1tefQ2bxfTGl4wEU1jj1D5whto0LmSeu/gcEjjH2k
         /0jvuiazRY/AKs+IEa4p06uKOAf5KCx3QEj0ZP/5PYBdxj6QipD/2EcTxpWoAnjC3J8i
         hRqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=TaWcxMqI+gCgvJci98w6fASWbetBjK0gTNj+4uOatPo=;
        fh=j8E46GsCDyvcSOjQFv7hmyovSMy1UBVrmmduDv/gk7E=;
        b=HsnS+vIc1qQ+OviAQo9R2qolrhKCf14uYujI3Etx9mvpdpWIJR+wkhmSl7HUvmH5x5
         66vHF1SVpPQgK030eEVSqDcDLIGIxKLT8OGRnz+dtxTpSfuPIP99tYlH0QhACIXiPcu6
         qfxMcmwYqhdrnSJbaHQwk0GMpbEVbwTbvjBq3zbC3h+W9EcaB6KjYVATsP+qie3bN9Fh
         ktPtDJGrIqmiCMuRsedgX0r6ZvczvGfISlAemGPQ+WTPtW3dnzKeSdf9eyonlhYBGbuo
         DB8SPrcEEgacLnmmgGJQkn02PzewLHtMrh2jzPtgc4ch3KPsTf7dmyIoiCFJm2Uxhq4Y
         0jVQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723753846; x=1724358646;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TaWcxMqI+gCgvJci98w6fASWbetBjK0gTNj+4uOatPo=;
        b=PQhuyUl3Jj43uDxd9MsuzIJPlL4V+E0oXCADya7pALwXT5n6x6Km/JmnVFKFaCzNy2
         ZMMH+qaHJslu+36ZBbmgHp4BV42SgSHRkWnhp4vdWjm67xDe0HXuILJD669GjpfX9SdA
         T1ndRsojfO6DBXl0+sYYnhZDKK4VP4VijpdSpqgoZwlnUaoDAn6+yz9QSj/Qs5IgsDOm
         xpEIZ5jisvzEiuV555hxv8Qu6jNQ4pzF5I5OwXKbjs1X/8m5QSfzqHIMH4TQDc8u8EP/
         clf6smjASY+Q2L+QK8UrDDxSLdMOBSZ+bj9kLAMPdI0wwN2JYl7ZKz0h0xuld4N1MB9d
         JMbA==
X-Forwarded-Encrypted: i=2; AJvYcCUUIo5VgyCKwCCiv16af2Xlh/aqp2GTB4lDlNpk6WzHJ3h8EqmvOtIVkxT5ggEBn2ft+x0dPWHJMEq5XGqZSbYE31KXbz8SWZ7E
X-Gm-Message-State: AOJu0YzaQsDVRj2TQ75N1V8B48csFd/xT1l3hyJs2x9lI/znhAClIT0t
	xj78KVp9/ZQBbMMysryP5d8JXGYnni1YblOg7PRrjeVG6EO7hEpFApaTL+7tZn8=
X-Google-Smtp-Source: AGHT+IECAEup+swCgocQ+E1i6I5Y1dnicccumhxWql2jh9kGNSBZ1Ly+RJqplqd4xBiHCIw+oxBQeA==
X-Received: by 2002:a05:6820:60c:b0:5c6:8eb6:91b2 with SMTP id 006d021491bc7-5da97f339b3mr1260561eaf.1.1723753845911;
        Thu, 15 Aug 2024 13:30:45 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:1a82:b0:5da:5cb5:1cb5 with SMTP id
 006d021491bc7-5da88a96531ls1350106eaf.2.-pod-prod-08-us; Thu, 15 Aug 2024
 13:30:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVF5r334P3nCcGuIUhaYxbKRBvueNEtceytXX0v1soAIlo35N9NmrDiprLqm7bgCaUmUx64W9NRKV/8X9DT2hZQmmiKtYJWdFPIrT5u
X-Received: by 2002:a05:6808:168c:b0:3db:244e:a24f with SMTP id 5614622812f47-3dd3af9aae4mr694105b6e.47.1723753845015;
        Thu, 15 Aug 2024 13:30:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723753844; cv=none;
        d=google.com; s=arc-20160816;
        b=TR8WHIwi+L5DmF/8DkTb5hOMJ3ilrVLR3W1zH0nBRmTlb158ihXYGFvmHf3m2+JA54
         3AMuWrfZsVpbvvpd6wHrT45+PcnBbuiVqmiksLtGDAcX8C/mkP74tebc2bmlzQxs/6It
         LJ8Cy5pQUbs5xfjAKpQKrysro3KCjPoXcs2f96pJ361JXtFy731ijaU3Hgtn1ittAbfp
         XMV2aR6q5Hzu/5ZUY+CeEASH24zZI/eMhISXJM6KGtwj6usJsZyigG9T0GJ90FcKosUi
         tLnJhB+kG3OpNhP28V6IA7qYzogE2DmKa7rQMxfyqQwH322a9JYybCFh3Sym6cAc065Z
         cLqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to
         :disposition-notification-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=z8Ubl65jYrMFJorY7/GWb27BKgOC3Rj1X33dKCim3eo=;
        fh=TlFflrfr/tY9PaZ5lsEgyC1hkMwNTf3CMKN2/ygUNdE=;
        b=A6TTpIm0UkzuW6mB0KbnYNEbo45M4ReU4Bwp1sqplKWE/qbZ6nqhQ0eXWoRvYBlCHk
         izKxtHB6IiIwNGKJJB0J04xJWu5vFnsKhWvO8yUvK89PMvzzDTNRlF51e/gECKlIXqex
         SC0oGGdIm6SfPw6qx4AWRyc70mxq9xbD54MgHTAzl6EWuG3UUhRx0B3URmB3nAhFaGHp
         9/OByaSPaDJTO1n57Siab1GhBfPowtUR8QwNIlTAbyUIG5H3XS0lMkC7MookQTah5e9g
         0px/TwtTBl1mlkNkw8rVl2o2npR96j/607P28znPLFW3VqXq5uTAC2IraZBBC/2sTHQU
         J5Mg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45369fe645esi24689471cf.63.2024.08.15.13.30.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 13:30:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-63-EIvQRoYfPjOIqCVxifClBg-1; Thu,
 15 Aug 2024 16:30:43 -0400
X-MC-Unique: EIvQRoYfPjOIqCVxifClBg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9F6951955BFE
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 20:30:42 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9AAD11955F6B; Thu, 15 Aug 2024 20:30:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 97B3019560AA
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 20:30:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0252E1955BE7
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 20:30:42 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-634-hDCs44gBNrSnzG5Bn77lTg-1; Thu,
 15 Aug 2024 16:30:39 -0400
X-MC-Unique: hDCs44gBNrSnzG5Bn77lTg-1
Received: from [192.168.116.192] (92-184-124-187.mobile.fr.orangecustomers.net [92.184.124.187])
	by darkstar.slint.fr (Postfix) with ESMTPSA id BF57262B66;
	Thu, 15 Aug 2024 22:27:22 +0200 (CEST)
Message-ID: <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr>
Date: Thu, 15 Aug 2024 22:30:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus info
To: Kyle <kyle@gmx.it>, blinux-list@redhat.com,
 Jude DaShiell <jdashiel@panix.com>
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
 <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
 <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
 <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
 <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
 <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it>
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
In-Reply-To: <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
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

Actually in the GRUB menu:
press S to have speech-synhesis on
press G for English (or jsut press Enter as Enlish is the default)
press I to install emmabuntus in accessibility mode
Then the installer starts, with speech enabled.

This is more or less documented in:
https://emmabuntus.org/emmabuntus-accessibility-functions-manual
Just the "I" for install is not mentioned

I send this message to the list as well as Kyle and Jude, because my last
messages to the list did not go through.

So Kyle and Jude, please tell me if you receive only once this message, in =
which
case there is an issue with the list.

Cheers,
Didier


Le 15/08/2024 =C3=A0 21:40, 'Kyle' via blinux-list@redhat.com a =C3=A9crit=
=C2=A0:
> Jude DaShiell ameadika:
>> When things are not in normal places, I take a little time and go huntin=
g.
>> Sometimes I get lucky.
>=20
>=20
> I don't find that all that encouraging, especially on a distro that says =
right
> on the tin that beginners can use it. It should be just as easy to instal=
l as it
> is to run. Seems neither Ubuntu-MATE, Fedora-MATE-Compiz nor Solus-MATE m=
ake me
> hunt for their installers. But none of them are running XFCE either. Mayb=
e the
> easily accessible installer right out front on the desktop is a MATE thin=
g.
>=20
> ~Kyle
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email
> to blinux-list+unsubscribe@redhat.com <mailto:blinux-list+unsubscribe@red=
hat.com>.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

