Return-Path: <blinux-list+bncBCMKFVG4RQEBBL5U5KUQMGQEUSGZ2WI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 0727E7D8717
	for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 18:56:17 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-66d03b02d16sf33469666d6.0
        for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 09:56:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698339376; cv=pass;
        d=google.com; s=arc-20160816;
        b=OHmqf36Pvk8105GEw5I/6vnmeULRlBxvp93AEWg3v3684frGrHApbpIO/AU1yBJkWA
         S/N+aoo4slYjF6dMIMU6oBevwzC0+JKAb/9TAcxra7eLWJ4oW7wgGmCrHszssr1AKBlG
         27zSIy8nEQBOPbXGOMgBcIA6psjRCuzxI6ZYIQweP66pubblumNWyLtyhIx+bGbki3ik
         7H7y9Z50KvfaElAmbSSb5BgmI88rPS5bOdX49K4I1xnLzMQPfcI7mEkcNOYuxNdtKyOu
         qaILjEOdRtMdwWrhi+XNLwP1g6MrrRtTMBbiM1u2BiusSFjbuh87+kJDnl+LqiMg6q3F
         4voQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=K6TfUtqDDQES+YCtNp5ZP9gHesE0yYwV7DWgKnn7VKw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=IshajG5/8EHBCqRDcvY8J/7sg8mJ0lMy0eXEDnvR8vHP/kbl9xA1d7dfEKOlSWNirz
         8wYzsV++bXKjmL57JUqQwghiE/n14cnjcHPH/80ttKfLOqGo6EAnMwAJ/Zp+M1zIWll/
         FZgmhTnHuXQd2A0v7nTHnIyUmrgAlU1KjbDMNIIjXClaRXPzTQhjkyCujPSbSe+dOhCr
         OhjxE1p24QRfqEgY/OJbrLELL0fcmRfCXJJ19nNjdCOobJ3KH154NPXDpymBl+Cv/YgZ
         O7bgofiAjMN0zgnNpkiV08RpqEnFot35bko9fIBZiQdmHjUB8lZsewTOCtJSzrwD+rsx
         CQ9g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698339376; x=1698944176;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K6TfUtqDDQES+YCtNp5ZP9gHesE0yYwV7DWgKnn7VKw=;
        b=EKXRdNF2cpEc+DyIBpvLOYNlbS+XZbTeo+q1KBV3kBAks36T2QbKQRxsFli1661NVk
         OwBtpsRAyoEbTHa1TdImExVYUI89JVIZMqXcVZXY0R1iMYAyANJ5bQBIKcOQp4QHLdRa
         enATt+R5tCDMmX1m8a/GWWozVmtT09JTI34XDFntxaYD43dUqHhYIEuQvz14E0mHUKj4
         Ss9SNp2XullZPXpn6roD265kLxYVWyTAl4CN9YBYzbGA3cMHZpsBz282cM+D9NJorz0i
         sr0tOYGQZnd0R0nb/TclF/ao+hZv2p7A92TwL5HAU7HQN3N2zS0DYoSM/ZymYtThZNZn
         VtDQ==
X-Gm-Message-State: AOJu0Yx+rlydjXRWS8JO/iStKgZK1ia1ONOGbxssnM2EY0A4quuXMwOt
	IAqB3GbYTRlrpjAReJ88gcsmZw==
X-Google-Smtp-Source: AGHT+IGTte+goVJZSEwIJMWeH3g3quyA5KmWONqMVoh1TUggOVpilJPCKr5m70EEs1eRoxwnLZbdgg==
X-Received: by 2002:a05:6214:1d06:b0:66f:a46b:c3a3 with SMTP id e6-20020a0562141d0600b0066fa46bc3a3mr5491501qvd.12.1698339375931;
        Thu, 26 Oct 2023 09:56:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4985:b0:66c:ffc9:ab7f with SMTP id
 pf5-20020a056214498500b0066cffc9ab7fls235636qvb.2.-pod-prod-00-us; Thu, 26
 Oct 2023 09:56:15 -0700 (PDT)
X-Received: by 2002:a05:6214:f23:b0:66d:9987:68f9 with SMTP id iw3-20020a0562140f2300b0066d998768f9mr442889qvb.15.1698339375341;
        Thu, 26 Oct 2023 09:56:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698339375; cv=none;
        d=google.com; s=arc-20160816;
        b=bvOrz5IeinSHrAs9SqOHnw9l4uxZsIwcGbsSZhyoU878ue6lEXsp6Mag7CUAQyys3Z
         ps2xzpYEleY04y7vpSkhPET7012XwPrHggDtFv9dMFFwVJ4zmEkg2arkfnWUjAUMwSb+
         LsZwN4oTl1qwjcVJAwyzhPW6z36l+WByKMO5BZaiG+vrw4KonN9ezn18/Pc4IuivK11W
         JrFd3nYEaBTc4NN8Ay6SNzGw006IXNFmUpHMJnZds3Vyh5XYjJRT2zxPnQPW0KjTTJdy
         +Ud8OXdQdD4mF66QAGlyOL8czkXExuX5hzk0fzY/1peWeBHbFEjYQ87b32uu+Nhkm071
         8+gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=N8/r6WyDsRBRIiuBKvCkVwypIvcUaWZulN4dNXrHn2Q=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=EkunOLpVG6NJIH67EnZybZbCNGb9QJY5ycWQ6PGG2xIzvKNY9DAZSsYjDDzx/SLdUS
         IGgXI6vNH5iOvcNWIif2fP9l+HnXzBDOBILOnMTrBrqcC1coPn/jkLMygGgVcNqhzkNl
         bmbiBTwxUfqf6U6ZGgdtIM6TwwK/H9fd8kdmodKECcq6kXjkimHELkT5LaElaLBdy/tX
         ZT/4BzrGIGAOyNarLKvKbGCHSzw9iWCihhNd4HXiUZGaZbeowykzAKhKRIzFfXZiLfL5
         jHqDLDMdH+KzN72l/eaw7V9AiDHbRm3NzPite4A+elAhiXcO8yhBguuz0abwTHudEyzl
         HdpQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id ek17-20020ad45991000000b006587b5f54aesi9492348qvb.24.2023.10.26.09.56.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 09:56:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-kHzB7U1TMlSoI2wcx2Hbhw-1; Thu, 26 Oct 2023 12:56:13 -0400
X-MC-Unique: kHzB7U1TMlSoI2wcx2Hbhw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8E3B101A53B
	for <blinux-list@gapps.redhat.com>; Thu, 26 Oct 2023 16:56:12 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D5F8E1C060B0; Thu, 26 Oct 2023 16:56:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CEAFB1C060AE
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:56:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1FD33C025CC
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:56:12 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-118-LYq078eKNqSquHQFwpZ2mA-1; Thu,
 26 Oct 2023 12:56:10 -0400
X-MC-Unique: LYq078eKNqSquHQFwpZ2mA-1
Received: from [192.168.41.245] (92-184-124-67.mobile.fr.orangecustomers.net [92.184.124.67])
	by darkstar.slint.fr (Postfix) with ESMTPSA id CC5B5C2EBA
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:56:02 +0200 (CEST)
Message-ID: <47e0cfd8-224d-4f7c-b5c5-33c1de60fc7e@slint.fr>
Date: Thu, 26 Oct 2023 18:55:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: seeking a sftp site to test a problem?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
 <e5b85119-9e37-439a-aa0d-d77a0a3d970b@slint.fr>
 <Pine.LNX.4.64.2310261209260.3065297@users.shellworld.net>
 <9857b30e-cba4-bf77-66bb-20471e31b1a1@hubert-humphrey.com>
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
In-Reply-To: <9857b30e-cba4-bf77-66bb-20471e31b1a1@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
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

Thanks for the explanation Chime. I initially thought shellworld was a soft=
ware,
hence my confusion. I have now found the website https://shellworld.net/

Cheers,
Didier Spauer

Le 26/10/2023 =C3=A0 18:37, Chime Hart a =C3=A9crit=C2=A0:
> OK Didier, Shellworld has been around since at lest 2002, created by anot=
her
> blind user. Shellworld is under another owner now, running ubuntu. Its or=
iginal
> owner Ken Scott was on a podcast explaining the service. It was surpirsin=
g your
> search didn't find it. Also, reguarding putty, when I have used a windows
> machine, I had much better luck useing teratterm.
> Chime
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

