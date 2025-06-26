Return-Path: <blinux-list+bncBCMKFVG4RQEBB2OL63BAMGQEZJVZ4YQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E44AEA783
	for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 21:56:28 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb5f71b363sf27953346d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 12:56:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750967787; cv=pass;
        d=google.com; s=arc-20240605;
        b=J3QoEUPjXYkjZLxXgkP4D5L2CtY1ORn0ePJ+TT/OZsqrBzSk7Pzc9te2tX1uOyUJAt
         FnhdceKBxJ6m/QhGQl1HjgS24nedXGQbulaw9n5hKiakShEvhzHBxfcO/wRu2takAL9j
         /3uZBYvtDG/crJSiEL+Zw5MvP0iofg37+koVyZ0xbHtiX0Eo9ddsplUIfG3czU8aOK3I
         luVopbYvcidin6S2RmuZpWKCE9Y7gvsnghu6nGFSzGION2wnB8Vq+sOL0IuK9HbouVN1
         lp+1/eCcb1X6cG0Gi7IeVCRSDEQKVqVowTQnOAGJ4v0DKOiFB9wtFsoNSSjiCXeKdvge
         KdTQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=MdVBg+Ud90yDWk7VnB7aeXMqBLerdV1AzAYoYyQSkcE=;
        fh=EGoUxjjCAzbIk26RxFQtAsij/11oWRkTGaoDB97BfoE=;
        b=UzPd7V22b6z7dO/EoPHmagUELsMNAv2shW+nDhr+pKB0/aFQAsl0jAh4LTsEG6XlQf
         rlP1RJv199WNWF6RIMWiwMYf+c9QdxwDkLlJWAuhMhia62C/QgxOn6ZgJMDT+Aax0ieS
         AE7zNenuZlZ692R9q76K7p8LQbYuIkTpTJSp6zmbwaXb/bEVZD1w8icxta/PxSGwXV3C
         hCmqkkoISxRgMbkQWBCMhYEy7uGn31uyCmcqI+MDHDDJqcy8S62TDnJoR2QT/7gyCYPE
         kbQasnLvSUUGGqa16vED9rp347kXzGCgBzv+nFaw8vud2NV/HCcLdIRHjIDVdZaA5tUZ
         sElQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=permerror (no key for signature) header.i=@slint.fr header.s=default header.b=lkTSDO1I;
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass fromdomain=slint.fr);
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750967787; x=1751572587;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MdVBg+Ud90yDWk7VnB7aeXMqBLerdV1AzAYoYyQSkcE=;
        b=oAg+AQhKlbg/3JSKtJ4+CjHkDkZr06iSvflu/mmz4jHLR0F7CB2+pigdEztK06RTX/
         IgzQj5rzWMPVOo1FUu4p0CAEzzXxxYEPrPN/2rgK27V4aqIz+PU9LYtsMVYx9WKT+ihu
         T1D3YKEqG+A3A0KSNZrUEuB1Hg814v/SjB81dnF93aB4tJvzW7TJ7V67aOPut1uYXrvK
         zm/7UV0nLXmve3RLCCVhA5HBEBdXOCSaLdWey5e+KHtASsDLedfaGwGoLYsZD2Db15iz
         yUqU41F9+3rJkxcF+wTzPF4scIqA++qQR+FvCWecA/FtByF0VLUbWzugXN3QfLbL/M2Y
         46gg==
X-Forwarded-Encrypted: i=3; AJvYcCWIRMcdP9gFoGpRwWMsxFm+WTb1/zHxhonVuZhz/A5kNPlOZwdJ/o2nabquWVQTTMXZa+BxIg==@lfdr.de
X-Gm-Message-State: AOJu0YyQNVkvJwDYDhgo4xwO3Ch+TvsrSpZP40sAXNT/VQXvBnl3mrEp
	imGBOoj/XlQ4gmaj3CPKHlVxfahKoIsCW7CBp9a8b1Y5qsRFeGDOnPGUv4pA8z7TKbM=
X-Google-Smtp-Source: AGHT+IG5mMlwTkDms8Uag1Zii2t8j2ljpquWGBGDiXqdBpvNU4162pwruDm2PHXckQmUQE4yswnoog==
X-Received: by 2002:ad4:5caa:0:b0:6fa:cc39:ab with SMTP id 6a1803df08f44-70002152ed2mr11415686d6.24.1750967786327;
        Thu, 26 Jun 2025 12:56:26 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZdPPpTGqVH7BbFhjhnKXdNyIkOc+FGhMVt225+6vqikqA==
Received: by 2002:a05:6214:f0a:b0:6fa:c0b0:1fa7 with SMTP id
 6a1803df08f44-6fd7513c817ls23491286d6.1.-pod-prod-07-us; Thu, 26 Jun 2025
 12:56:25 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCU0e93HHNghXOSatfr8ZPn2Em5kwEn6h/gstoakprxFSoFymlw3LXR4aQrcY2JR7vaAxspQMo0qZGQiRQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:c48:b0:6fa:a724:8769 with SMTP id 6a1803df08f44-7000291853fmr13721226d6.35.1750967785034;
        Thu, 26 Jun 2025 12:56:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750967785; cv=pass;
        d=google.com; s=arc-20240605;
        b=Mp2fOd9LPNzO2G/qQETW+aVLa+IgSKb/L8Um3fM90JloIAurt8qvIB3Kl6HFXunxfn
         M1IcBQuj75eVnRipP1GkHhzKuGn260Es32RzF9je+dpC3VVI73TlA1o4nIERbaWxuyJ4
         CMRZI5qqskflYN/KeF0uKZ+d3N+lBGtpKVTLChuzcJwLNUlJ/uHfqJo7zSYgVqTKSwjO
         EP3wQGqI7a9A0ntS/X4xiZ2bkQ17K8xW8w//XjqY0JQaEniR7L4LEkwFI9Mv1JOM4RP0
         cDYGcNTZUMpgD71TjPEiu+EbX5EVVNq/gxOY6Zc1f8sjG1VHdI/ZY1dDaXKKzoc+3nFm
         SmVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=NNlsxiBJLnP/fF1m+b5ETNc+iqu9K6wJBbS64ZCaONE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Nu1anLh/gYseAp2c/sfs+7ehyBqaS3CL7fkacyqXY1k6by7t3/tnvvVIk1xSZHnKZQ
         P/VeI3uSp0pDxFZTohgh0M37IB7V/TmycFV+quiJUN7YaYHIseXjoaO1sXmo1KTaI+Qt
         m5WZNYugtrfoFwymmK5upTZ1dxFX+xDaMVKHiyLFWTkt2jpIJ8TU3kgWgZ8X1/DtNe+f
         AFaA+EpRMqnkVVB297cYmh7g06ARsruYF0VpDgRbMBjd6W2qRkV54mLTVXFj9ijOdpgM
         Qor3LpK+VviOeMsYl2a7IbwypLNWs6kz9VyCX85ldsHUKEIhliivzHLeaULZpqasXXN3
         M/6Q==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=permerror (no key for signature) header.i=@slint.fr header.s=default header.b=lkTSDO1I;
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass fromdomain=slint.fr);
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6fd77288da5si25270736d6.24.2025.06.26.12.56.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 12:56:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-141-_ANDbj26NySA2IYcD6xNsg-1; Thu,
 26 Jun 2025 15:56:22 -0400
X-MC-Unique: _ANDbj26NySA2IYcD6xNsg-1
X-Mimecast-MFC-AGG-ID: _ANDbj26NySA2IYcD6xNsg_1750967782
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 13360180047F
	for <blinux-list@gapps.redhat.com>; Thu, 26 Jun 2025 19:56:22 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0E87F195E74A; Thu, 26 Jun 2025 19:56:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0C20719560AF
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 19:56:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9977C193F048
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 19:56:21 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750967780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature:autocrypt:autocrypt;
	bh=NNlsxiBJLnP/fF1m+b5ETNc+iqu9K6wJBbS64ZCaONE=;
	b=UW6p+Ns1ouOssAgyl8S4ijDB5+gmRIyo5vOYwDqLxPbKwLhHZIsE2CharLGKTosZXw3u26
	Uo137pkC7jMZS6tLLhrg5Jl4dEwQn0dSq7y9hdTAjFFlGwlPgwQbcHkWn0oCpMZUk7pDXf
	13pa/xllX7qH0Kc6wDM1SWl+gV9wvRphq9KmpNI5tTejlWO/bW/wfZneOK9FpzMZasc6gX
	bPEiGesY/0iPogPIjIMPzbsfXYdsqBKPmqc1hG7gsGDFAEI7v/9SqP6JtvXd8OfXJggmbv
	9ry3H7OZDJQ7BGTpfGazEUDKtuKkiaKs7pJnp83KcBRW1YaPjS93tzcWel5dJw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750967780; a=rsa-sha256;
	cv=none;
	b=X5inzxACrNto8NaY/r1ubWIb4bYyIjyCPJCP/tSE4d5ugYSDhk8+yGID4G1wWkKvREJvIo
	0IUST1f1tgJAxCtpK1F0jYTK7Kbv6HhPD/VqmFQywnf4r1ZZJA92DwaE6+BYY5wzUDbO0I
	/9mJoZlwhztNEAcSajarbKOYcK12NsI/hE9Hx+1xwNfEJCv38bHvxnHnggH0CxSJQC1Ldq
	L/qknYIvu343jb+R08TtJFdzn3STA6OOOZehIXUXipo1QPUgvbSp/4OOKILX7JqFsVWZuk
	nGpc6+Lz8gMuEDEDNzBES1TphvqEGRToDcWGq9el8mR+BkLq2o6HQJi56bgQZQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=none ("invalid DKIM record") header.d=slint.fr header.s=default header.b=lkTSDO1I;
	dmarc=pass (policy=quarantine) header.from=slint.fr;
	spf=pass (relay.mimecast.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-204-i2QpcqGIOIypVeZtcpt7Lw-1; Thu,
 26 Jun 2025 15:56:19 -0400
X-MC-Unique: i2QpcqGIOIypVeZtcpt7Lw-1
X-Mimecast-MFC-AGG-ID: i2QpcqGIOIypVeZtcpt7Lw_1750967778
Received: from [192.168.1.60] (176-173-208-123.abo.bbox.fr [176.173.208.123])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 5B3311602E8
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 19:55:26 +0200 (CEST)
Message-ID: <cb4e0932-509e-4f5c-8315-204b2e5a19d0@slint.fr>
Date: Thu, 26 Jun 2025 21:56:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Braille Blaster and linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8775841C-4F73-4EE1-B8B6-2F5DFE0E9ED0@gmail.com>
 <366e0c17-48d9-46dc-b550-54b8c1da3a3a@slint.fr>
 <A5B44213-E216-477A-82E3-8E6934C590C9@gmail.com>
 <e438d884-82b9-427e-9207-1aff37fe2c7e@slint.fr>
 <C1DD2AFA-6AFD-4389-BB30-F166BEF6BFC8@gmail.com>
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
In-Reply-To: <C1DD2AFA-6AFD-4389-BB30-F166BEF6BFC8@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KBKGf1KWoqaCNitZNvw8yZS65cU8_T74PyUTyW8CNtg_1750967778
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       dkim=permerror (no key
 for signature) header.i=@slint.fr header.s=default header.b=lkTSDO1I;
       arc=pass (i=1 spf=pass spfdomain=slint.fr dmarc=pass
 fromdomain=slint.fr);       spf=pass (google.com: domain of didier@slint.fr
 designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
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

There is PKGBUILD for braille-blaster in the AUR, but not for the current version:
https://aur.archlinux.org/packages/brailleblaster-bin
https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=brailleblaster-bin

Maybe you could request the maintainer to update it.

Cheers,
Didier

On 26/06/2025 21:37, Daniel Crone wrote:
> I am running arch.
> 
>> On Jun 26, 2025, at 14:29, Didier Spaier <didier@slint.fr> wrote:
>>
>> The link leads to 4 tarballs:
>> aph-brailleblaster_3.0.1_amd64.deb
>> aph-brailleblaster_3.0.1_arm64.deb
>> brailleblaster-3.0.1-linux-amd64.tar.gz
>> brailleblaster-3.0.1-linux-aarch64.tar.gz
>>
>> Those whose name ends in .deb are Debian binary packages for architectures amd64
>> and arm64.
>>
>> Those whose name ends in .tar.gz seem similar, without the metadata needed to
>> install them on Debian using the apt application.
>>
>> In all cases these are not source tarballs, so nothing to configure and make and
>> I could not find the sources in the website.
>>
>> I which distribution do you want to install brailleblaster?
>>
>> For your information liblouis, liblouisudtml and liblouisxml are included in Slint.
>>
>> Cheers,
>> Didier
>>
>>
>> On 26/06/2025 20:51, Daniel Crone wrote:
>>> I was on the following link.
>>> https://assets.brailleblaster.org/brailleblaster/downloads/download.html
>>> <https://assets.brailleblaster.org/brailleblaster/downloads/download.html>
>>>
>>>> On Jun 26, 2025, at 12:18, 'Didier Spaier' via blinux-list@redhat.com <blinux-
>>>> list@redhat.com> wrote:
>>>>
>>>> Looks like already built package.
>>>>
>>>> Anyway to find out we need a link to this file.
>>>>
>>>> Cheers,
>>>> Didier
>>>>
>>>> PS this list is superseded by blinux@freelists.org
>>>>
>>>> On 26/06/2025 18:11, Daniel Crone wrote:
>>>>> I downloaded a file from brailleblaster.org ending with .tar.gz and then went
>>>>> to where it was.
>>>>> I used
>>>>> tar -xf file-name.tar.gz
>>>>> then checked for a script file to run
>>>>> ./configure
>>>>> but found no script.
>>>>> The were the directories
>>>>> /bin
>>>>> /lib
>>>>> /share
>>>>> Without a script, I would not be able to run the
>>>>> make
>>>>> command.
>>>>> How may I get where
>>>>> sudo make install
>>>>> may be run?
>>
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

