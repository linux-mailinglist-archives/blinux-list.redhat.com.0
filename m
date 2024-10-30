Return-Path: <blinux-list+bncBCMKFVG4RQEBBOHXRG4QMGQEYAYOUVA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 3448A9B6C25
	for <lists+blinux-list@lfdr.de>; Wed, 30 Oct 2024 19:32:26 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b144a054basf266751185a.0
        for <lists+blinux-list@lfdr.de>; Wed, 30 Oct 2024 11:32:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1730313145; cv=pass;
        d=google.com; s=arc-20240605;
        b=kMfpi/e5OKgrTUpM/sHkUQ9yc7cUn68MyAXcyG22qR9goN8eicQbpqIMIodN3FMzYT
         yeMz5YzhMswYFMotIR773HEQf1y97YHQq//W6XeN224Y7sJsQUVC60n7a3TD2pG6uAdk
         ez38aEtM9YQft1U3Ic4qr98WM4kIJ1z74mw695kXZ0C66ZLuvalu6YL365rjklE6+KIL
         yppgrkBLTS011Q/nt2rdTOUV9zWikSwXbIArV6gYHVv0veKuY8kz3ZP52OacvlptPcQr
         VchZ4jra6F6EmYbk4CXSj28kE3JIqlJMl1rSxRgtiZxGaDuCEhueI1dqpViQLF/6AT4y
         m/BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=UCdwrS4wH1wqhvLiXnJ3kJAOjXLbAoVdN/3qlmUommw=;
        fh=+xO+2dsZ/7tCjCtXP28w4aa0a+TkXbQcJfzj4pEGypM=;
        b=iFHjfeTtY8rmLkvlp/BW4H3XdoDQvVN2XNKx/kupmcYAjUzUax8TZuUyBr7kGfV/8K
         vZKEEXbZ7VzvQnW6MHXxsWXgi7XyeSZOWLJXP1bDyEhQHL+AcxePPsfCE+76WBeYs7ZK
         YZdEHGm2VPrHTRQELUZbZdqfGKbKsfWL51v4Ru97brk64Ow22yELt4ls6FiEVdPh7m98
         C+pB7T9I4eJZMknI2JnR3BPC0cVqnYf68VdPcPPOWPK5zYkRTXRyUcbIZVh6PMGk0WlS
         xlB0HegdVRbUNfl6ymeBE4iO2OlITMphqmCu/Mpq6X+ek2JfKT4vCOgEbgOy84hyK47e
         eE7Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730313145; x=1730917945;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UCdwrS4wH1wqhvLiXnJ3kJAOjXLbAoVdN/3qlmUommw=;
        b=BhhdokNO5oUzt5+qW63CrEOtQbN2xiNz8m75t3TLw+H5QF4KR1PiVqBZhg+RGyh2dc
         ImzqQZ0IK0NP7EfBPm1hNOb0GK8S1P2tZbl3DCWURIBUIvbsHqTyjBc9YFoxDSdgKrnU
         PGdhePdx+3B77hpHmmvko3r8Bv0ur2J3zlWGEGUxANIS8Tf1JhjihsBekkxlzS44zryr
         AXaKmIQWeS//LlotNOK2ajT7bK6dDZlLepUJlDxKC+xHroDQRF9zXqIGXv8RvHSxBsuw
         VLZvsE4X/tHuBGol0FsGbuMXQpxqGaaB02G8gwK9N3CXEfSUgbhQ5O5V7JpoEc6fQAfJ
         Wh0A==
X-Forwarded-Encrypted: i=2; AJvYcCU/4Ch4tV54jXZtRyDgHwKBelegC1SBSVbCK8LdagQRo3WBrumkl2UDm1W5jckh0KLzrwDtMQ==@lfdr.de
X-Gm-Message-State: AOJu0YyXS9xDbsrG97dn7gpNPZ2Ukrw3fKFDrwcObIntuQ25Zo+8n2VU
	MkZ+/Je3smI6kRDQH/nYt+jlNXdi16JTOqJK6XmTjhGWNEM8U/4aObJhiSLcZuY=
X-Google-Smtp-Source: AGHT+IEILNegX0TyeLcG8HjJHEadBorNsIptgDiwEhhQg9DWhdsDadFWuAobY+MkaC1xeCGGBBmWeA==
X-Received: by 2002:a05:620a:4402:b0:7a8:554:c368 with SMTP id af79cd13be357-7b1b05ffa1cmr552321085a.6.1730313144845;
        Wed, 30 Oct 2024 11:32:24 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1b92:b0:460:3891:ad09 with SMTP id
 d75a77b69052e-462aaab5e1als4262731cf.1.-pod-prod-00-us; Wed, 30 Oct 2024
 11:32:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUb/t+/1kPgM1v3ybZIsahiUYhzzvMTMuZOvrotDGbJ/dx+JO37boYdkLNZYZw6JKAt6eViQdI8DCfOOw==@gapps.redhat.com
X-Received: by 2002:a05:620a:2916:b0:7b1:21c4:ecf8 with SMTP id af79cd13be357-7b1b06a1f7cmr542364885a.28.1730313143635;
        Wed, 30 Oct 2024 11:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1730313143; cv=none;
        d=google.com; s=arc-20240605;
        b=QEHaTMeJphVoRslidHEmiyxvZaiCoV3cQah6G8Oe2iJgwtUd9AaAGyLyHT1xdeHGHC
         qgbV2plncHx2rU3DZjiAC3CyHlTXxrB9sboFaIymgRJH50nuTM7T3PaSY/CGLLBdR5kc
         +5sVbwh6ozNJhwZN+sw6OfITStq1KFVeN3tdwt5+KXRy78y8lfjeffEsQCJGQYa62eb4
         7qZxBvgdptEHLeX5uhbyXpbkaNdSU01/CO6iLYq7IDS1bGQ1EQ1GKfYWniNrLBm/0InB
         KfCQOolm0z79NesFJZy8w++5xNCNQe/rTW4vx6GfTre2LeGUJkIqEgGYBACfcwVmjIlu
         aiUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=auMmlL+A7PFq54eDEBvT4gCVbHDe439M4SUW8LfHBvU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=TFxgXyhYswTiNXOOC6/1b+rD9EUsyPSwEYoaqFgAW02yJXAIrWDQ405J55FJphSW2s
         bb9U71nd/Q4beTmPOwvKMxaTbtUg+5CsOk0dn3IfR2bIgVOetgtYkGCdvG6O60YQphyJ
         j3eIfDCEtiGxCEHd55qU48X7rZ/xfghI+DwPgiIfPftysiqXG70uLdeDUfKqOB6+2zLa
         7c/mzvIa/ngAgWHjKbVzju95wTxhPvgDNQD9Je3eXVLfbA6KyLlEyvilGlNXSHwcbg/F
         Mp4r+2L03lacGBcAOGl7YHDQWo5qAKpojrS55S3yd/NxdV21ko1oPvjAEPzenFnc0HV7
         t74Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b18d362b2asi1414195485a.662.2024.10.30.11.32.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 11:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-13-Yrr5p5v6NlamXLakMsKISA-1; Wed,
 30 Oct 2024 14:32:22 -0400
X-MC-Unique: Yrr5p5v6NlamXLakMsKISA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 809301955F43
	for <blinux-list@gapps.redhat.com>; Wed, 30 Oct 2024 18:32:20 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7A94630001A5; Wed, 30 Oct 2024 18:32:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 76BA8300019D
	for <blinux-list@redhat.com>; Wed, 30 Oct 2024 18:32:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EA2EE19560B0
	for <blinux-list@redhat.com>; Wed, 30 Oct 2024 18:32:19 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-528-hn1qlaCNOMeT5lLJdKWSCQ-1; Wed,
 30 Oct 2024 14:32:17 -0400
X-MC-Unique: hn1qlaCNOMeT5lLJdKWSCQ-1
Received: from [192.168.112.207] (176-173-208-123.abo.bbox.fr [176.173.208.123])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0D6A5625BD
	for <blinux-list@redhat.com>; Wed, 30 Oct 2024 19:26:21 +0100 (CET)
Message-ID: <71265e7f-e350-480f-98f3-c136a185cb3b@slint.fr>
Date: Wed, 30 Oct 2024 19:31:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Accessibility of Calamares with speech and Braille across
 distributions?
To: blinux-list@redhat.com
References: <f83f8b32-a306-4802-adb2-66d3e6ca06e4@slint.fr>
 <e5e4a446-56f6-40b9-af89-30b46e6ea92b@gmail.com>
 <108015df-f3e8-4fb2-822b-b7649d692df7@slint.fr>
 <CO6PR18MB4419BBE8415EA5700EDDA5ACC7542@CO6PR18MB4419.namprd18.prod.outlook.com>
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
In-Reply-To: <CO6PR18MB4419BBE8415EA5700EDDA5ACC7542@CO6PR18MB4419.namprd18.prod.outlook.com>
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

Thanks, it worked.

Actually I had tried it but as I run it in a Qemu VM I forgot that I needed=
 to
type the keyboard shortcut as argument of "sendkey" command typed in the Qe=
mu
monitor so it reach the system in the VM.

Cheers,
didier

On 10/30/24 13:57, cstrobel crosslink.net wrote:
> Did you try super-alt-s? See this FAQ:
> https://wiki.debian.org/accessibility <https://wiki.debian.org/accessibil=
ity>
> I haven't tried that Live CD, so I don't know if it works.
>=20
>=20
>=20
>=20
>=20
> -------------------------------------------------------------------------=
-------
> *From:*=C2=A0'Didier Spaier' via blinux-list@redhat.com <blinux-list@redh=
at.com>
> *Sent:*=C2=A0Tuesday, October 29, 2024 6:16 PM
> *To:*=C2=A0blinux-list@redhat.com <blinux-list@redhat.com>
> *Subject:*=C2=A0Re: Accessibility of Calamares with speech and Braille ac=
ross
> distributions?
> =C2=A0
> Hi Matthew
>=20
> I just started the live ISO for Debian Trixie, how do I get speech in the=
 live
> system before starting the installer?
>=20
> Cheers,
> Didier

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

