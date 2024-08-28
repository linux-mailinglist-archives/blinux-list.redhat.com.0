Return-Path: <blinux-list+bncBCMKFVG4RQEBBSO4XS3AMGQEO2PFFUA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 1316F96299E
	for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 16:03:56 +0200 (CEST)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3db1560c5efsf367477b6e.1
        for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 07:03:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724853834; cv=pass;
        d=google.com; s=arc-20240605;
        b=iDC4UQ6v9Ie7OGNX8EZD5AeQWlBTyZmBzOVxTeODXl9VZyKaa2c6rRxiMfVq0muF+6
         cbTOYzlJWmx/i0LrZUgf6da+QeqrKF3+2wvw9UcarDVjEqXQx9xM4azdnoagUffl/N4g
         yXwDILlvJOFwDt+6yGLwMQbe9UfvlxF/iI0uyv2ybj+K+ayqRZ+KMYNhvQUpf+FUAE/d
         9eXNsuwbbTIubt6s9boLlJe61ZVqiOzEW4c/LPBnsStSloM/IhiGgEayL9F1kIM20X8U
         WEm1fS4sIiE27FCFlne4xCK6VF6nty9kGP1vxetspzsqzNUyehsI5Fj8qlAvvgynREBU
         fjEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:autocrypt:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=cj0L79s05fGllpjZB3hp5zqwiSkuxMXcoZ3CKHwjQFI=;
        fh=cNNZMJZ3WpLKr7SNYe+IpQr1ntnITAKB45nwBQOVaJs=;
        b=kEarWY/3iB2EO7QmHRLWortiH2nbIX8j3IomIBIqHhdJiIPkWf4i8pCqGih21DnZYT
         FjpvTO8bvB2TklRU1f0+v7TvmlakyRDmVXHWKwthQYKQV7L/GSNavYg49AjFS9uxFZ7a
         adEfbhSrpZB+8TSLVGiJlf8V56HyrB6jx5RMwnpT3jxotBetlALXwYpoMfFPj6MQFgIF
         3A4hA8pE3l/QUYkVyvEngqauzJNKJEnzSVH1fslcIrGA2Xl5sbJPAXJ5MgdWS2Lxr53k
         pwZ6gqBwY5FOn8F9hX/y3aA3qlrCC5IfrFguLwSx6FVaXe3/R2vkQIvuk3fRfN8w4dP+
         yAbA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724853834; x=1725458634;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:autocrypt:subject:from:to:user-agent:mime-version
         :date:message-id:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cj0L79s05fGllpjZB3hp5zqwiSkuxMXcoZ3CKHwjQFI=;
        b=BXLKvUD/Uz9oPcm+gegr9fEBQ17uyGK4mYTBrjURlQ/U+GoB504Gb305d29GUwEsNb
         eRwxmmkawlNUp6NheakoxjbRrFyOS8ScuItRHD5h4aAzdkMFEmXlO6/tGd/BF/BqsW0o
         4olytr9e/mgC2nPdw58B/6NKr0JgszR9PguRpY2VvMU/O+O7Cm+6r3QTXhefe+4ae0Mw
         asNNuGVvWIC2lVAByKyyDCdxZVZar4b89nAswRBCCq0nS6M0UhuXSGpo8NTbXEtvvyYj
         FdkOV27raP29BRsDjG7F/IBsQgW2Hew01ByRChjZqEbobXpVM4St+Nc70AzDCiThap+Z
         w1cQ==
X-Forwarded-Encrypted: i=2; AJvYcCWGRsRqr+QoS9UozxIbhvdfhn02VvNvuwD8ZiVHQGEpvqNLvBS9H0elqVScIu1qEmqEJeThWw==@lfdr.de
X-Gm-Message-State: AOJu0YzuBLmpeoBKwkP9+NxOeAPj1aqnP+u2VFL6oWMX+C7v/sgkxyxU
	LHqF1KpnqBkzbrK7x5dtFpy5hzeavEPMmSUHtQR937qOGyhHn/bDFmWOC8sGV4E=
X-Google-Smtp-Source: AGHT+IE/HnCaMo+J9eI+UKrU1v+y3PLaZdhIPjh10uCNslgE7z+2P9tRbGVJyQGOAl9GY7jjgQTwcA==
X-Received: by 2002:a05:6870:b289:b0:26f:de62:7d8a with SMTP id 586e51a60fabf-273e6773d99mr9077006fac.10.1724853834267;
        Wed, 28 Aug 2024 07:03:54 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:4412:b0:25c:a475:98e6 with SMTP id
 586e51a60fabf-273ca71111els552534fac.1.-pod-prod-02-us; Wed, 28 Aug 2024
 07:03:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUcxB+ouL3udb0oALeBvvOyvqxRkZihXxA/yUdCER0WDge2t09hrWaKLVVPeMM8X75sLmnt6tTktFs3Xw==@gapps.redhat.com
X-Received: by 2002:a05:6808:22a2:b0:3d9:24b4:e12f with SMTP id 5614622812f47-3de2a871bcfmr14709896b6e.3.1724853832783;
        Wed, 28 Aug 2024 07:03:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724853832; cv=none;
        d=google.com; s=arc-20160816;
        b=aNzCixsXld6ytEKIpafwJDaSSZNy2ElyZiJceMV8oE1PmcsHPZzmYhAO75LsDuJ3DZ
         AwduyqqhEEmKEOJSyAkM8CYjdp57DCH6NqgceSYNQ7TClT1IwokpN2vi3RRo+lQpgpp4
         BMvXZzEEckwOSIIhSpqPA4InhBWbr9S7yxL4nhuZ8yXkObAk7kOsyekNGdUyXeGKySpM
         r3oBvWe+Q6P5zG03O7tKn/RFpJRguj60fbO/mGP2KCeXd+yqSyaZYR3twWWTcqVsrN06
         TkC6j2PVdcHuGoCiZ/NfdsyQ/SzJTQ0L6oitL3lL3svcTgzSHuyO64X4QYDKPzK9tuTc
         h+4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:autocrypt:subject:from
         :to:user-agent:mime-version:date:message-id:delivered-to;
        bh=0/rfV8hJnTJp/tkpQSDhy2XH5v/5wKrVs8ULDRfqnfo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=vm1kieeRhVXh+Ey++9XZrRp0WM0IwhjAT8SFTHsjle/jt23yuxUlTneN0PprN4MV9q
         gaSnIgddUFboj7vD03ePg6a81DIggAELenjIG9hyWS0hE1bymmlvaDv3Cb2F+4M0+Jcy
         idryqDJBp8aZ5HFEcjqp9rT5+tSithc9jiNu1rceXKwWb+c+Y6hn37594T+9dgXJbX2T
         6j87g8LP2ezRaZCptrWCOUs8T0+80c7oKie4UBrkZlb2wpWKFitvbBJjo95NTX1CgKrx
         IHj+QNIN+x5mjaQCsaOtNnrohMZY5+vpolBBDFkXFLy6vQihXvUjhTPFAa2Ce5WI3LJv
         C9vA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ada2fe7eead31-498e48dbdb1si3208868137.305.2024.08.28.07.03.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 07:03:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-640-bFuoBCPkPd6lEBtlc6oORw-1; Wed,
 28 Aug 2024 10:03:50 -0400
X-MC-Unique: bFuoBCPkPd6lEBtlc6oORw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D56111955EA1
	for <blinux-list@gapps.redhat.com>; Wed, 28 Aug 2024 14:03:48 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CF89D300019C; Wed, 28 Aug 2024 14:03:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CBDE53001FE8
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 14:03:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4C4AF1955BEF
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 14:03:48 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-342-89XkatCoPNWGOBI5yifalA-1; Wed,
 28 Aug 2024 10:03:45 -0400
X-MC-Unique: 89XkatCoPNWGOBI5yifalA-1
Received: from [192.168.116.98] (unknown [176.173.208.123])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6FEC665EE7
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 15:59:57 +0200 (CEST)
Message-ID: <14b31a22-f67e-4102-a2b1-fcf8e4c9c540@slint.fr>
Date: Wed, 28 Aug 2024 16:03:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: Didier Spaier <didier@slint.fr>
Subject: What do you like in Accessible Coconut
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
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
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

Hello list,

I am doing some bench-marking of accessible Linux distributions to gather ideas
of enhancements of Slint that I maintain.

Among these having tried in a Qemu VM Accessible Coconut i have found it very
interesting, hence my question:

What features do you like in Accessible Coconut, including but not limited to
those you do not find in other Linux distributions?

If you did not try Accessible Coconut yet, links:
https://zendalona.com/accessible-coconut/
https://zendalona.com/accessible-coconut-user-guide/
https://sourceforge.net/projects/accessible-coconut/files/latest/download

Thanks!

Cheers,
Didier

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

