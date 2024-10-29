Return-Path: <blinux-list+bncBCMKFVG4RQEBBE56QW4QMGQEOZAAV4A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id B82D39B55A9
	for <lists+blinux-list@lfdr.de>; Tue, 29 Oct 2024 23:17:56 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4608a1a8d3esf12236111cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 29 Oct 2024 15:17:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1730240275; cv=pass;
        d=google.com; s=arc-20240605;
        b=J2IPFHbLgR1nLJfp9q9au7xSWA1wpM2b1wwYssHbl6jCRgGuIi87FarKYDeOPMUW9D
         yyKJVKpDLuB6FDXL6425dXhNp4wYB3EKC39hseWwqijP0XC5zDi1ntAzFqu2MWJ9N292
         lrM9ccgt6yN7Ia0aCmxk1Hxx/I1owjYyvUAhEPZirwdY011A8m1aq8RWbx/tKrVNaZ3k
         yd2erFSu96LX2jXh69uW1JFOh0+7QrtevdxzCCfStb/+G/7zCHY/jY3h8MyfJ2o4Gesd
         u+plOihzpP9V8VcA/WB7kjokYJDYuJjN6rMD2u8qiXKw0LO0JvWHl9Ilt2abOaHwrYLI
         R+pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=wBKuE+QDu0CeAxjkt+nBRyX21nQ4FgmGO3670WXtKYk=;
        fh=DdNK28htfjrzzxzeyjxvFD3BOrpdU70Q1X1JbHioOc0=;
        b=XyFdy6A2a8czel4lgbEd1KI4grd0ghlz7ehNKkJOpKlc3MnrN20ePtOsEgIaAXbbtY
         HqNE4dkv+lZrFjCevGm0NwcgzuR0zr0FhvJpEBRc1hhkRjiRSvbAceEBKy3NPAFn6bcw
         OwBAflSsEnmnyxA+EgfW5gfS7uZX44UZQWR+biDtr2L4t9UNGvTx9TwdAR8Q8jeGWPH1
         97yaw45tJCNjv8fULwq9SEruVFSZd9zFeM2f4+w7IBodfRVE68LrId3cdulpnChb8+iL
         p96eDN0ZciMW92RqYTJlOOtHhQOvvRGx7AFZkynEFZWQgybz5BYDYltJdXCs5v0XWoTJ
         TsKw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730240275; x=1730845075;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wBKuE+QDu0CeAxjkt+nBRyX21nQ4FgmGO3670WXtKYk=;
        b=GSsV20wTQUKu44V6nt86Q6nwqPleWeyl1X2Ur6gWLFiHeZqmT/H5wBEhx21K3Bfw1G
         Ytz7UeM2Lymb5vkQ751tyFvTjotik/30eQPNW9+texJsz8BtiKYCmMMm9884AhJOZ0Fo
         Wno4OuoySCD6a3LP9aZF3fPkcKCHaerUeCBS12hCOqpisWprMvgeKTa/sT8NUfYqDmwb
         JTw9r1piSghBOSkUDTF3kjikSDd07VINYaFTabR56B935T3Tga+1yKOtk2C34aBiHqBI
         k3BPjqxfD5TBneom/G8pOU9ekiaRbExicYHkWcTVCimwqp/qy+IKkHg2xXbK162xoEIj
         UOGg==
X-Forwarded-Encrypted: i=2; AJvYcCUXjseCSlJFol9f7nS/u21fXiqXjbojwldY0Ht5DzMpj7qdmvM4K7QY2L9CImA8ZcvMpxmFsw==@lfdr.de
X-Gm-Message-State: AOJu0Yw7xoyLEvdVreVnuxIzlWnrq5YG2Bk5dshVN7s48avSsNMT8owO
	GXeglA4hfX5/fLFdO8wYioGX1uw6zmF6XoAVgn5kgbukAqtqhSuX9bO+30/51dQ=
X-Google-Smtp-Source: AGHT+IE4jJeEbouDc76d9t2BMvzSUD7dHGOWR1RFg65m1JJ++BIxIN4aH66TMY8dBoTLaZNZ0aUQJQ==
X-Received: by 2002:a05:622a:83:b0:45d:ace1:a44a with SMTP id d75a77b69052e-4617475499emr3810171cf.30.1730240275391;
        Tue, 29 Oct 2024 15:17:55 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1191:b0:460:3891:ad09 with SMTP id
 d75a77b69052e-46137da9b0els101180901cf.1.-pod-prod-00-us; Tue, 29 Oct 2024
 15:17:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX09VzI3xa8Ivlw9DB//jufTPEoYUTvZumcZBnCz0JSxUwgCcz+qPyaGsIyW/UjvYCRfVBD8ydDUZNCew==@gapps.redhat.com
X-Received: by 2002:a05:622a:1b0a:b0:461:7558:892f with SMTP id d75a77b69052e-46175588c42mr1069001cf.15.1730240274426;
        Tue, 29 Oct 2024 15:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1730240274; cv=none;
        d=google.com; s=arc-20240605;
        b=a7Vo5crtNPDET9N+iRjB5sKIL08WjUH8SGVnUKgR9h3u5/YU/Gsmbrqn7K26vFIIwB
         a1jGhK8EC1idNw4ihSlpnJ0oxikVht9YY5VrPvmkQHztZ2L4wxSrz2B1ebuANl6wHChQ
         VmXwM07n6wD2f/zNGzHlzzEfqFRJD5DOU+Zl3wcrdDU9BpIwYRrw6IhvfSrjP6Dpk5yE
         P5Z3x7s923fgvPyzcVvGmHVQISFuiAHlNSOQHexQUhDq9DKRqTwQregnBAHX95JLneeS
         n5ePCUUlSC4PgcBFXAoJmNH6lSwGk9K3eDfVGnUhpuVZYMSZ+dsBSWd/dPvYNaS8ULOC
         YrAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=LNJzUclUf9yHGwhbHPLicb47nwzzVG1NFhc8jrwvvxY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Lr7NoEn3Y++TO2FdVS6GEgP+A673FZx5onJ2YMCpMNWZv2rPMFuvf+Pvei/fzBs845
         F3rdmEQTPK9zLCXpy+7XheFI/aND/IEuelL9+ZVYBmFi7qIApaiN8mSi70jwa1cQebX5
         wLQJxfP2YtzQyzHP/x1C+AB7vq7P1Ax5Bq65IN+jH59D+pqRgTkivIp7ExD6BVEeceSv
         6oLSqtqLbZ2yqhbM1BBPPW+3cq4lLqePdvyMoPDnucW6irXz7YWNE62lWCYiC6T1iIGQ
         DtNPPvVymKjODiT1WIMPmrNu9L2t2CV+f3wQd86tfL7TGSEvCaNjH9gbZNjVmcDnvLmi
         1HgA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4613241c016si115008831cf.808.2024.10.29.15.17.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 15:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-436-6ccY1t9PN5yH5jdzAC8qfQ-1; Tue,
 29 Oct 2024 18:17:53 -0400
X-MC-Unique: 6ccY1t9PN5yH5jdzAC8qfQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 77EF519560A1
	for <blinux-list@gapps.redhat.com>; Tue, 29 Oct 2024 22:17:51 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 72EBB1956088; Tue, 29 Oct 2024 22:17:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7050C1956086
	for <blinux-list@redhat.com>; Tue, 29 Oct 2024 22:17:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E29BE195608F
	for <blinux-list@redhat.com>; Tue, 29 Oct 2024 22:17:50 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-617-Kft6pgRhOYmv_J9MaMn_Qw-1; Tue,
 29 Oct 2024 18:17:48 -0400
X-MC-Unique: Kft6pgRhOYmv_J9MaMn_Qw-1
Received: from [192.168.112.94] (unknown [176.173.208.123])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 3064A63C3A
	for <blinux-list@redhat.com>; Tue, 29 Oct 2024 23:11:54 +0100 (CET)
Message-ID: <108015df-f3e8-4fb2-822b-b7649d692df7@slint.fr>
Date: Tue, 29 Oct 2024 23:16:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Accessibility of Calamares with speech and Braille across
 distributions?
To: blinux-list@redhat.com
References: <f83f8b32-a306-4802-adb2-66d3e6ca06e4@slint.fr>
 <e5e4a446-56f6-40b9-af89-30b46e6ea92b@gmail.com>
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
In-Reply-To: <e5e4a446-56f6-40b9-af89-30b46e6ea92b@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
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

Hi Matthew

I just started the live ISO for Debian Trixie, how do I get speech in the l=
ive
system before starting the installer?

Cheers,
Didier

On 10/29/24 22:21, Matthew Dyer wrote:
> Hi,
>=20
>=20
> Wile I donn't use braille full time, I can tell you that debian testing i=
s using
> calemaries and orca reads the install with no problems if you want a basi=
c
> install.=C2=A0 I am not sure about other distros like manjaro as the last=
 time i
> tried it orca was not included=C2=A0 in the live images.=C2=A0 HTH some.
>=20
>=20
> Matthew
>=20
>=20
>=20
> On 10/29/24 2:22 PM, 'Didier Spaier' via blinux-list@redhat.com wrote:
>> Hi,
>>
>> I consider including the Calamares installer instead of the current one =
for the
>> distribution I maintain.
>>
>> I assume that its accessibility with speech and braille using Orca and b=
rlapi
>> depends on its configuration, hence my question: what are the distributi=
ons
>> providing the most accessible Calamares?
>>
>> Cheers,
>> Didier
>>
>>
>> To unsubscribe from this group and stop receiving emails from it, send a=
n
>> email to blinux-list+unsubscribe@redhat.com.
>>
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email
> to blinux-list+unsubscribe@redhat.com.
>=20

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

