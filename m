Return-Path: <blinux-list+bncBCMKFVG4RQEBBP63ZS3QMGQEL2HOMJY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 2923D984CC2
	for <lists+blinux-list@lfdr.de>; Tue, 24 Sep 2024 23:23:13 +0200 (CEST)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-49bd58a2444sf2050946137.2
        for <lists+blinux-list@lfdr.de>; Tue, 24 Sep 2024 14:23:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727212992; cv=pass;
        d=google.com; s=arc-20240605;
        b=YKjAB2w57hNKHdFz+zL8wTh2QTAThvaHPoAK1hjDF/IXMdcVdNknRDmy5qx/WQWoSC
         8UmpArb1tHv6PlG7jsGio+0pL3v+Cp74KLCnQL2KO0i8naDhssKF9mwW2M3IPBy3MdhE
         rm9k0jearVgRa1lbFEGa0Fndrp8QNOdqkQc/NgsATGszOmTP2OlG1tRIfW/Y4uty0guZ
         cjDdFA05mIy7T5vmaKsBC2Oa2I/g9yYSv0C9gVvVWCWahS+vm6PPISQFe1SsndUILV8i
         GMA63uB4Sj8kGMgf+EnGW/gJInhRXIcOuCiKvz+UYMrD3MXNtMtI4Zqc04zJCnyr16GU
         XvTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=Op+ANTJv7hthl0T66C2+wIKduMzAgeIJ5utJVPu5VmE=;
        fh=fck1/5fR2aobyjgrByKq1hjskv9Wh/cQ9e9CD90B9o4=;
        b=A9g682dSJ98yXzCfUjmEH56qZYAfEKrIQdDyg+FNT5ZbzRe/CAb4ob1NUpvtR5Yemd
         GLDzd1f7i8GsinLOTv8Cr9r+EDnROYA54d5fwVzZH/u+Se1TDnKZXgf+Iz5+ea1wj87N
         soBmc/S4qQ0pKEoP4Kn7d2vF0/uAvcOth8nc7l1kNxQmVTKbMyBgDFrVFv7enAEAjMRc
         3f8zqSn/c50t0rTMoDCAuca61ZURu2jl9hHauqY9ALPN0+IykhF4O6sm3w4pIuYQAUwp
         DfPAu8F0IQ/PTofpF+FI/HQy5kBGbHeu6bhBjl8x/jjGxL1wcBN9PYqqJIgxYCAVZIQN
         oB1Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727212992; x=1727817792;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Op+ANTJv7hthl0T66C2+wIKduMzAgeIJ5utJVPu5VmE=;
        b=fp7RS/D+a5UUXUpb9chK+PBpBLBiq4BeFoVezuEimvnbzB6NLct2rEcyxvq6FyP3of
         8YyZri5mkAQ+N8MtFXY55cZaxgP63MINoOl2emhoA9XsiSiffQsIEE1baHpNpnm7gJi8
         whefY3zqxvGGXBh6OpROiVKWKcKdoO3GUYM1jk7Wrhgbl0UqV8+etGreHVUYtqJvBlmb
         n8I2I1AygWjUZKBOyU/zh/4p/4/kYV9dC+hRrYikcCLv1GOrp4CpJIcZkm68zq626J1a
         Wa29WcxsjxyDaATwTRb1Qp0BIKIJU8auoqZ5foZP0uGqoUPLQHe4o6mhDyqBsTYtMk4O
         JLog==
X-Forwarded-Encrypted: i=2; AJvYcCVW7DbwjwEQdoayxDNbWdlbG4rC2zPMqbZDDgsMljlagwtixWl95USoM8lrIHLi/Mf590Xnnw==@lfdr.de
X-Gm-Message-State: AOJu0YzW9nLhytp6anHnwyIUs1+WBGRQmW+h/Xrc3X7QLllm6RtjLog0
	uLGnRX7JE3bw8lwDQOF1vW+pqdPah2kCHfoIml13Hyz4tw+UGqKGcckRdNRsFNU=
X-Google-Smtp-Source: AGHT+IEAv8uWIedsdIdOCMqeWxchBjgMmobLXZqJRg3X0a7D8p7f6sfSsedaXw3PwHYvRzJLjIhb+w==
X-Received: by 2002:a05:6102:50ab:b0:493:b9ae:31ea with SMTP id ada2fe7eead31-4a15dc67ebcmr973398137.6.1727212991848;
        Tue, 24 Sep 2024 14:23:11 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5813:0:b0:458:a6c:8071 with SMTP id d75a77b69052e-45b4080147cls47390641cf.1.-pod-prod-04-us;
 Tue, 24 Sep 2024 14:23:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUggBuQRadaWDUG+p/ymKaAVwkqLYIsjo/0GQPI4dklUqu9MJCExZ9NPJyvoc7whe5TkAHAyOfnXz8yig==@gapps.redhat.com
X-Received: by 2002:a05:622a:144c:b0:45b:16f5:6c16 with SMTP id d75a77b69052e-45b5dede324mr12062851cf.24.1727212990841;
        Tue, 24 Sep 2024 14:23:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727212990; cv=none;
        d=google.com; s=arc-20240605;
        b=WdbrLhgNrFoGdUE4vLb7/fdG2Ke19sU1XE8DV3D4rvJQ9n2ofVWF+pM0lJjiW1seke
         iay5FJ4HEHG6OL+LNAByBtlIod+mP0i6lPVts6MQgJihLttrlGcSjL385ONEfXAqUBx0
         iq2Ww79p393RUUjTSJADBANprSz+j4Iui2nROml47dohNsqwqDVpBEnE3xEq5CCSBNFt
         OO2nlIUNBvFZOvFTEMfdR5//RqeFT1J+pdK5tr7cm6AnYl3FroCvMUA7HNwsGoDUY69i
         TleXEe9q1ECs6+ICseT/i9qaEMANixUq7xx4EViAtpnEi1inGzevOEaCjaPprKOrR5vx
         46OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=eePD+XcP8dKx+Ahm/LA1lSqomUbn+thrvt93cBKwtfE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=CfLZrTo3xiuPez17O18nUuV4vy52QQXYXsoItf6ATFeg4x9AksZrRPwx4xNqQQxZR3
         fDPPd3LtJZGksVuXUmNEi3Fan/hcuKVYhP9uh4AapBEcCp6TMiquZ3Tx+06m0dmEd2Ge
         wgEASB2dU0lF1nTL6aGO++TIqvFFmoAPyNWpwKLB8wDSrG1FI+M5SqvoHJKvvOFaRxyz
         ykdDEyTxJ7PumzSgAWi5g5QQJYuDkto7igT4o55KgRjLIfxjscqCH16Y5uyrT6SO/Ubi
         ddiRPrI0uBgYuQCYizd2DVZp0YE/h9WyS2XiYosXH4Nez6e4AtV+H23PBHLy8fbAzjvs
         FBIg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45b526820dbsi25535791cf.251.2024.09.24.14.23.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 14:23:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-605-E8wFRLIxOomNdQV5DODY1w-1; Tue,
 24 Sep 2024 17:23:09 -0400
X-MC-Unique: E8wFRLIxOomNdQV5DODY1w-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 924681955F07
	for <blinux-list@gapps.redhat.com>; Tue, 24 Sep 2024 21:23:08 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8FC41195608A; Tue, 24 Sep 2024 21:23:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8D38E1956088
	for <blinux-list@redhat.com>; Tue, 24 Sep 2024 21:23:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F1CE218B6532
	for <blinux-list@redhat.com>; Tue, 24 Sep 2024 21:23:07 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-12-pUUUxtfPNo2DL85Via95Pg-1; Tue,
 24 Sep 2024 17:23:05 -0400
X-MC-Unique: pUUUxtfPNo2DL85Via95Pg-1
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9DF2662B66
	for <blinux-list@redhat.com>; Tue, 24 Sep 2024 23:18:24 +0200 (CEST)
Message-ID: <c48f9106-7512-4775-909e-23623f669bae@slint.fr>
Date: Tue, 24 Sep 2024 23:22:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: a question for didier?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2409241651200.870459@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2409241651200.870459@users.shellworld.net>
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

Hi Karen

No issue at all, you can write to didier at slint dot fr from your office e=
mail.

Cheers,
Didier

Le 9/24/24 =C3=A0 22:54, Karen Lewellen a =C3=A9crit=C2=A0:
> Hi Didier,
> I am interested in a couple of points you have made about coconut and oth=
er
> Linux distros built a bit more tightly for accessibility.
> Challenge is that my questions are not likely to interest the list, and
> shellworld.net to the best of my awareness, might not have updated their =
ptr
> record yet, meaning writing you directly from here will likely bounce.
> May I write you from my office email instead?
> Thanks,
> Karen Lewellen

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

