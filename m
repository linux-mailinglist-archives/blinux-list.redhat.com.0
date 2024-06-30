Return-Path: <blinux-list+bncBCMKFVG4RQEBB457QW2AMGQEHF7M5IQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 002F091D1D7
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 15:39:00 +0200 (CEST)
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-e0353bb2fecsf3915214276.2
        for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 06:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719754739; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZZpFksLmQkF9HGR60TybBuqyP2krteJvUpPVo8m3ICn/CSzKMqZZaTBho9ev1bEtGC
         E5h0VZWg+bFJNLKUbak9Rm6TXET58/5y223Izj7VlggWj6xSrX/Pm5v5mpod3qZMksLe
         B3wZiUVl4C9Qx0Km5fFcqfcvBRMC39kbERZWUCG3azqmSVeFmki2ZEUSuhAtloYojFo9
         /ZjG+jGh5fdBeG21fbHCWqbWK3Ma8keSBC2cFs4/huPJ+tIqIiyS7KI5kBDHr+g0q2oa
         sODdX2TxIc9PwfdQxZFgRQ4Xexu936Xgq6VcpgBeinBXj5TslxnOXoFFxMgSKQKj/0xB
         yn1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=XRtD5hUdRBOw5cnL281cgiRSgu1Yu+W+7a5+vV5EFC8=;
        fh=Hm91Bg/aOf/FlC6IRigtxm7tp1IJfcksoGAalUtzEKI=;
        b=itsw6XfNAemU5fH4BAF9tg6jC4CIBXhvcvj6rIIkEwJEvgv3cAUrmmvz/UvHr6+CsY
         H6P1mjgr4qMncC6LWM5+IuiSp/DABd8jegljOZu7r6dvc7x7yRfl3ixkMIMLGnF7nxHm
         SRTb0GT+nB6aA7huR2awLyvjxTKaTp1w2B67wlRRSl/YbGyFdOf1x0UbRzBStR3ozVSU
         7cycxxIeEkxziu+V/LJMUudvwnQ/D4FdY5fiLzkgS1zZMEwGO5assAopiajAwxhZmf/R
         r/S2juw08bv8sx33ZOPA5+bxzjJmsE2l9msR2EklP0YVoxvj76IYyWT+I4aJXRBRJpda
         CsiA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719754739; x=1720359539;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XRtD5hUdRBOw5cnL281cgiRSgu1Yu+W+7a5+vV5EFC8=;
        b=ayCl8L7c/FMegAanAGu7sW8fLvo4Z0hfgg8nDEy6R+iXq19yrRrUNXLPqdvaczysva
         XpVrhNJh5kf6lCwgtUlVxSpSE5w2r5cNXgfTiK2LidNnjgvjbxLDLjy4XTHLaXB1NFHC
         1neRKD6E8gxdnnT1AM2AD0k/lrfitg4OOv+aV+Su8tSbBCIeiJAueEgS77VKQV24X9tD
         Y44q11XXmmyKXrBd4sUa/pf0mBVABT/u82UnB/UMuMYpC8CyPvyf+hearauqNzF39AEU
         Up+sIUbZOdzZr+y7ItKiHaeX8T764OKdSQY9Xl/yqdcAqeVkZBUZbDqDMvcSgnf9h73t
         795g==
X-Forwarded-Encrypted: i=2; AJvYcCVSZln5QojZtBYAzaa60h5L9+XA8qhQmtn8SFkiO6BN91+PWglkBtCQY2MHffraF4K1cjVT29r6t+6ImPJANV02zz0ZOA/OI9x+
X-Gm-Message-State: AOJu0YydzZTKX52ICPnW92cbnatv2MkdXya7hKzaRXY0BIjSwEuOfr7a
	noJk+/cwH4SBhPPoEaRwGCOnFAsZaYBVLOkwTyOVEIlUzt2ZKWFWeXp3XRdfChs=
X-Google-Smtp-Source: AGHT+IEK5a0Y3eaK9ANWB4tibt9nC6yXo+UmGVAGOjLnd1vBkwFtXNXyQdRHNIX2FHuwgXHT3srKcQ==
X-Received: by 2002:a5b:44:0:b0:e03:6287:7305 with SMTP id 3f1490d57ef6-e036ec958cdmr2936219276.61.1719754739389;
        Sun, 30 Jun 2024 06:38:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:1547:b0:e03:3d23:3957 with SMTP id
 3f1490d57ef6-e0356278842ls3255550276.2.-pod-prod-05-us; Sun, 30 Jun 2024
 06:38:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV+KayBmMTMHZEOnE2EsQX+L7gYBa3GVaEkqZchUlL4pygN65zf+hoKvdIUij/0t4kDrytgabXoSm9XC2NCRq6JCPAJHLoL3SaxIJ2T
X-Received: by 2002:a05:690c:844:b0:618:8e3e:8675 with SMTP id 00721157ae682-64c71cd8df8mr26442947b3.22.1719754737908;
        Sun, 30 Jun 2024 06:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719754737; cv=none;
        d=google.com; s=arc-20160816;
        b=AV/SpKV+/wH0RzRMy1kI2R/vFNxxuxJGxL7wJv/Jg2QBboqlA5xOsKtAXWj0c4m/dU
         iwdMrXL7gsRjk0LL/vMOIPH19C4rdGuXGfi3puecCPR1hzGdH0bvTnN8xA5z7r12JsMl
         2uiWWUTlFkZpWolxiQZlHvW+BjO0qiTPpKCLqEBVkAsODgFFczSGZ+EBmfjAMvHAZgYJ
         Qdcver6BUPJ2w/y8VGPZPNPy/XZZcUmtj85XG9ly0tawj0jTe0Wd1rwvHh5ibUyoQQqV
         D9Zm6z+SPNn8aZZr3S7wvKCBczy+8wA8kvT6bi5ZAr4JvdJ0Hs2KjhQNN78SaxcZeAIF
         7Hyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=XBBUI9CVPLq6AAZE+jTWO23S3Oz+V1vdF684Z5nSPek=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=l40eDHNQBsy0o87WFqBAcOY/rS6CH5245WfyG1cCrlQSPcTY8Xm7PbgDwuws9L9+N+
         TpoO/pwGfXe9lrpo3DvK7sjqyxXmkSPhSMraqfssFi2AzzUKo8ghp4gJHebEumZrvp0Z
         YNW/BoeBBlegnG2E07OutOcC1+RJfJBqk/jQnB3ixQi88hM6mr7UE4DlM6K7W6WGcF8m
         7Z7+LRuBoMKqFfhdzMbtF8mykryLnmFXb5grYVQD22wgy2SP8tTu2G4L//yQ8V/9jFAt
         IgOgCvd7wRI1ieTt/sT7DJr26DdGV/eEZLsZ9X4biK7XlnTM+sPaYT1akWJjINrosDiJ
         p0bg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-446514da0f9si58732941cf.695.2024.06.30.06.38.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 06:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-142-bWS5JGuCNIGIidGXR1Wzqw-1; Sun,
 30 Jun 2024 09:38:55 -0400
X-MC-Unique: bWS5JGuCNIGIidGXR1Wzqw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E595719560AA
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 13:38:54 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D5C693000223; Sun, 30 Jun 2024 13:38:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D332E3000218
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 13:38:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 500ED195608B
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 13:38:54 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-19-dlj_n9znMzW9VSMTqZavkA-1; Sun,
 30 Jun 2024 09:38:51 -0400
X-MC-Unique: dlj_n9znMzW9VSMTqZavkA-1
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A760C62606
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 15:26:37 +0200 (CEST)
Message-ID: <ae3bf211-b235-42d8-b2a0-15ae92df01d0@slint.fr>
Date: Sun, 30 Jun 2024 15:28:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: solving missing ptr record issues?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
 <b2b41f63-ae2d-4f7f-8251-3f7cc1aca980@mail.com>
 <dbf54f5d-9bc6-4fa9-b418-705bc36fd2b5@gmx.it>
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
In-Reply-To: <dbf54f5d-9bc6-4fa9-b418-705bc36fd2b5@gmx.it>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Hi,

To add to what Kyle wrote:

didier[~]$ nslookup shellworld.net
Server:		2001:861:5872:fed0:56c4:5bff:fe21:679c
Address:	2001:861:5872:fed0:56c4:5bff:fe21:679c#53

Non-authoritative answer:
Name:	shellworld.net
Address: 50.116.47.71

didier[~]$

So yes the reverse DNS seems to work for email associated to the domain
shellworld.net which has a ptr record. The only thing I note is that the ad=
dress
in the output is an IPv4 one (the same given by "host shellworld.net") but =
dunno
if that matters.

Also a query of internet.nl about emails from shellworld.net doen't ring a =
belle
eithre wtr reverse DNS:
https://internet.nl/mail/shellworld.net/1280212/

Hence my question for Karen: I have assumed that the domain associated to y=
our
email address is shellworld.net, but maybe this issue occurs with another e=
mail
address, using a different domain?

Cheers,
Didier

Le 6/30/24 =C3=A0 14:42, 'Kyle' via blinux-list@redhat.com a =C3=A9crit=C2=
=A0:
> john doe' via blinux-list@redhat.com alitoa mmaoni:
>> What are you talking about, we have no context.
>=20
>=20
> If you are unable to help, just say so. I have enough context and
> understanding of the subject matter to answer the question.
>=20
>=20
> Most receiving mail transport agents reject messages from sending
> addresses that don't pass a reverse DNS check,, meaning that they look
> back at the DNS IP for the domain portion of the email address to be
> sure that the IP points back to a domain. It doesn't need to be the same
> domain, but it has to point back to a domain of some kind, which is then
> checked against the SPF on the domain portion of the sending address to
> be sure that the sending machine is allowed to send from that address.
> In the case of shellworld.net,
>=20
> host shellworld.net
>=20
> shellworld.net has address 50.116.47.71
>=20
> shellworld.net mail is handled by 10
> mx.shellworld.net.cust.b.hostedemail.com/
>=20
> Actually, that mx one is the one we're checking.
>=20
> host mx.shellworld.net.cust.b.hostedemail.com
>=20
> mx.shellworld.net.cust.b.hostedemail.com has address 64.98.38.4
>=20
> 4.38.98.64.in-addr.arpa domain name pointer mx.b.hostedemail.com
>=20
> Actually looks right to me. But just for grins:
>=20
> host 50.116.47.71
>=20
> 71.47.116.50.in-addr.arpa domain name pointer users.shellworld.net
>=20
> OK I'm out. Sorry, I can't help, as everything here looks right. You
> should be able to send mail, and the recipient shouldn't be complaining
> about PTR records or reverse DNS. But it could be the SPF on
> shellworld.net, which needs to allow mail from
> mx.shellworld.net.cust.hostedemail.com.
>=20
> dit +short shellworld.net in TXT
>=20
> "v=3Dspf1 a:shellworld.net services.shellworld.net mx:shellworld.net
> a:atlas.bondproducts.com a:forward.b.hostedemail.com
> include:_spf.hostedemail.com ~all"
>=20
> Yes, this is also looking right. No problems from my checks, so I really
> am out this time. Sorry I couldn't be of any further assistance.
>=20
> ~Kyle
>=20
> Imetumwa kutoka mikono yangu
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email
> to blinux-list+unsubscribe@redhat.com.
>=20

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

