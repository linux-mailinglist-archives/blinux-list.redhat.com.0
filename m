Return-Path: <blinux-list+bncBDEZTZFXXAGRBGHA6THAMGQEBO7EANI@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDeHOh0w3WlAagkAu9opvQ
	(envelope-from <blinux-list+bncBDEZTZFXXAGRBGHA6THAMGQEBO7EANI@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Mon, 13 Apr 2026 20:04:13 +0200
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE753F1C9A
	for <lists+blinux-list@lfdr.de>; Mon, 13 Apr 2026 20:04:12 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-8ac93c8ad0bsf64035996d6.0
        for <lists+blinux-list@lfdr.de>; Mon, 13 Apr 2026 11:04:12 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1776103451; cv=pass;
        d=google.com; s=arc-20240605;
        b=ddD4MHODXiN3cGRnQ/eAI8ZvPD/phC9e/oakqj6gU4/vaaUY7ObGLA3mMEE1HYmbvH
         RykNcPs51UNSVk9KR+zBDN6n2dC73yzZlcxt658eXocn0Kzs2EZOy6UyRq0VUN2CHP7c
         pQ/lAg58s0Wf0/I1Y/2mHXhyXnON0OOYUlMMc7b8ZG8Lt8VoFvN/vS7GXJ+sHbcDkgUz
         NCNgklBUiXEBPkTx4eJtGOhJu6hOPuZdtP0aRDP6q9f2R1hT6HI/685fmdY/xbDGHboL
         jW+aWy6VcRQpZ9Fc7lQL5oIKeV9x+pxmm9v3pzTQ9TRXPFbStfrq32HiN4202476SKXO
         V0Hg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:reply-to
         :from:date:delivered-to:sender:dkim-signature;
        bh=jSHK7LEvcwidALGHZU8riIo2+2k0PpKuWHmicCIzmbQ=;
        fh=w1uGGuPIci7eewNlcGgsTUMv8M1XwUJ3Sn0Ug2FC53U=;
        b=lzfq7b5sR2HpbzS2MTZ04lXSj+U73xMD3LQ8nkCNlV4exQ3+Kvan4LUtjYZNyHI3iP
         whpY3W4CmcaOV43KmbpfDA8njvy9Nw6uUOVfTIs7VPEskDQF/JLcWFJixyGbP/ERfdDo
         fI74MYZ0PPX4RDR/NOyp0ukfuJLjMnkGTrq38SrIymcpqzRHgXlvejK/nS8Tivutwzvu
         jN/2RHwOaEtDbt/JiKFKg1o8oI4OXcjFqZSFK9kIYm/HyE82fyslBs218lbjzIqYHole
         +udiBWNxscdNBRN7FbTDzMSCozDqGHfHX8jMmDeNRMbwX8rVmZZnfBn8gY4fFTMDTx6i
         sdaw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20251104 header.b=kjsjdnlA;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of kd7cyu@gmail.com designates 209.85.216.41 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1776103451; x=1776708251; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:subject:to:reply-to:from
         :date:delivered-to:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jSHK7LEvcwidALGHZU8riIo2+2k0PpKuWHmicCIzmbQ=;
        b=CtM3wCzrTjFqJwZ3AD2gy/DZoJ0CCkgw43GC7Ne5eY6MOBFWEf3L8bZGVtTvSydkR5
         DEZzSO0DwOIXExqH/Lbea5cI9FD9nTDsAPPAmwctbeVlfx6O3eL7G/MCtDeLNHeWOZ/8
         icZsMz/9yVlNxA6FN5oYrOgOS1LaY+N4sIt+D3ps4oQxaCKTy2zR85mK/0V3FPbAAB/F
         X92cnfOWZ/hfC7qsvr2zDcd9WqHiLMP3wEaigVKXqPf5m26jouDGQX2cSOt1sdy/uL8c
         3BkybsUmXHwadNE44y/Ld1M+xbhaBuxlShSmCPOKpUWel3XN/5nW7zc/y0lhWVNIBfMm
         J5MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776103451; x=1776708251;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:reply-to:from:date:x-gm-gg:delivered-to
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSHK7LEvcwidALGHZU8riIo2+2k0PpKuWHmicCIzmbQ=;
        b=o9vjzR0LYyMnp8OFK8UFz1AzhbTF8uzcCQC5Fu3hAubBu/j3U/UgFL66+OdXJCCgQW
         YfzwoQwXTTAGAt3jH25CEgVT1kENylue4w4VNcqonsUbB0ScEx8Tf3OeyQSZwfroEyn1
         H5q6sOZ0w5LGLcYA3SzWRZeWWz9Z4YhlSM3G5hAw0DRFUfCwE8cqh206vZ79pE4EH7Sm
         8HS82MtWYelroxnCIZJnQHzEDnrEFDQYKABVDsh7IPL8pXYye/FBqAmYq+wcNhB2dk4Q
         RIJsCWJ5Y0sxp55AcWjHJ7WB/zpTIqZLSD0UwbVINF2RX+ejyRAzFZZ3mOS+9wmgeXBk
         Zfyw==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AFNElJ9G/NGNFw633pshLtY7vW2FuyRdfRl9hEnwFx6NVipeH6GVdEE/OgLSibg+sYRgc6xJOqa7cA==@lfdr.de
X-Gm-Message-State: AOJu0YzEphoH5NLndiTMw9nMLTbduzzcerajdUQJPgDirvVxwKkV7Ba6
	jvXSXVdNT7EyE0u4EANENMDqQrQ1N38+PLS4aCxb5QpR36HuiHvaYEpmox0ybq+8roo=
X-Received: by 2002:a05:6214:598a:b0:89c:87b9:a5c3 with SMTP id 6a1803df08f44-8ac7469ee5cmr265717076d6.25.1776103448951;
        Mon, 13 Apr 2026 11:04:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h="AYAyTiJtcZ7HnPSeUrZux2nGaNe76i5KIIdRsYly109GEE8vSA=="
Received: by 2002:a05:6214:19ec:b0:899:f89a:1192 with SMTP id
 6a1803df08f44-8ac834ef96bls51568766d6.1.-pod-prod-00-us; Mon, 13 Apr 2026
 11:04:04 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AFNElJ924Sw8ZAUb8PmD8eopS/IeteJcIM/9wanoYPlNU6zHgnpgZa9qM//nwSj7BZTsjPT89L7zjZs45TsvRA==@gapps.redhat.com
X-Received: by 2002:ad4:5e85:0:b0:8ac:bb62:fe65 with SMTP id 6a1803df08f44-8acbb630ff9mr15314106d6.23.1776103444410;
        Mon, 13 Apr 2026 11:04:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1776103444; cv=pass;
        d=google.com; s=arc-20240605;
        b=YUDxrxUxnljboKrKgQo7Sj4CmsbjR2ZJU0GYHYTGNaCt+7Jlll+pauJgjtzHVWlnIn
         8CybT/Fnb15kc70WnoOuhI4xllcHWN11REnGtd5M7Y/ddit9ZMunFyhZWEkk5vvnduXu
         VHkav4RnpncVYlU+s1gLADl2LrYkveA4fG3dbWWafJMfEFIvBMPcyCgk5ouPJIsYcpG9
         4Se3FZ86fD8AXDCp1MDYLImBjkIyzhPnBWstCgfRpvNBgw2zlFHWyq4wiVbttaqfvyZP
         IiJNjGKtIaKqpc+hRIq+h3WPJN7aVBpcxIO73hvwzMu0g4uttjw4pVVyXPsr1OFCCRLq
         aL4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:reply-to:from:date
         :dkim-signature:delivered-to;
        bh=R4GAVtKR8+PHE0hY3bhU7hHxizNsgtkb1iKYR/So+Ms=;
        fh=nGhuQFZWdDqlGnuhnnL+i18FVeYU+n88mTcrSXXYKCs=;
        b=gtJEL3m2uhsOeuMPyNkDlrIgzH5pJOiOvO+BUrYtW+b8w+itxMcTwhEEMQQVW/Lzs0
         YGgEN2mF2l4xbIWoE/8XDQzm+Yjniru0v7/OOKLDdUN/LpM08txc/vjpoRIcZ1b8bHvl
         k90/8MxdHBAUk65PCqlZMEH/8IkQunEdpJtz1es1nB+APqLGK8u+bHkc+B04AqNAcpGn
         igplgINgkzun8Ed3owdMg+X/VD0mLzae/gMfcVUWP2WMb7sbKA6I1hqcMfMbk6INrllh
         QlaDZuE2lg7TxXewJImSvPyqOX/GQQ+YyLCumAyw56FZ/Ccxk5ImnC+vQgGRiM+Y1HPU
         t6kw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20251104 header.b=kjsjdnlA;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of kd7cyu@gmail.com designates 209.85.216.41 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-8ac84948021si174104866d6.30.2026.04.13.11.04.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2026 11:04:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of kd7cyu@gmail.com designates 209.85.216.41 as permitted sender) client-ip=209.85.216.41;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-659-caNzZ-J-MgSa5d-7sh_Acg-1; Mon,
 13 Apr 2026 14:04:02 -0400
X-MC-Unique: caNzZ-J-MgSa5d-7sh_Acg-1
X-Mimecast-MFC-AGG-ID: caNzZ-J-MgSa5d-7sh_Acg_1776103442
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 12AFE19560A7
	for <blinux-list@gapps.redhat.com>; Mon, 13 Apr 2026 18:04:02 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0E80B180057E; Mon, 13 Apr 2026 18:04:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0BD5F180049F
	for <blinux-list@redhat.com>; Mon, 13 Apr 2026 18:04:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 952B118002DA
	for <blinux-list@redhat.com>; Mon, 13 Apr 2026 18:04:01 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1776103441;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:dkim-signature;
	bh=R4GAVtKR8+PHE0hY3bhU7hHxizNsgtkb1iKYR/So+Ms=;
	b=HkoYor2GtsycI+9C0moLT51cqRgBcuxlM3vuG0YgVTA0z0ybtNfzGfocQ8iI2ZhnimDbc5
	+y5E2UoU6ydSKuxCdWJpsxUS6KqNBRYRGNR30OH2g2QywVnVE88hJma1hQPv3sTt8WwWEm
	PYZIL74lMNX+4kPb1SSPXz66J6q24Mj1woN5dVfx+K5YDaSIF/28fm3shg6/0df8D0/1Uy
	O42GxtfZs9Q3VquKrxNGXkhIOKeMdZlxWmYvby6QUwQDJr/Rt4Z6+Ai9nRyrobaFKob18g
	ILGV4QQEsvW17mdN9MJ6D3OXAEAQRbvTMExrREkPgfHNsB9GO+iWL0t8Xxid5Q==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1776103441; a=rsa-sha256;
	cv=none;
	b=f71+oE+dSA4TkmByNtYdGiU6kl/SaAhdMUflHdiAbKHonySrfijJPq6HPpu4Ff3N5T8TBi
	VnAqExpaKYBD2wHIeHr8Cg80Lz/1o/mI/dgDgA4arGm0ttotjlOBK9vd34cwIgWuAHsVS1
	zDUOzZEU5WDT6FXTe+pVSRZaMOq0MC3kCAwoEisd6R5O/e0YZn+8Z2WIBMCJjhD+o7vFeV
	Zdb4iXoh/wbG8w7D4MdoMAdQDQ1syqOYLwtKuiYcCqkLnu0sDAR1BoaIfdXYk7DuaTKc+g
	9dj63NnFQd2QvQWvm3bQR+j8hGHSypxXgCqukziOwOkkY9+teHctWLWITaNS/A==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=kjsjdnlA;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of kd7cyu@gmail.com designates 209.85.216.41 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-101--9EmasUbOlK6eSMreXV4GQ-1; Mon, 13 Apr 2026 14:03:59 -0400
X-MC-Unique: -9EmasUbOlK6eSMreXV4GQ-1
X-Mimecast-MFC-AGG-ID: -9EmasUbOlK6eSMreXV4GQ_1776103438
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-35e563b0ee7so816571a91.1
        for <blinux-list@redhat.com>; Mon, 13 Apr 2026 11:03:58 -0700 (PDT)
X-Gm-Gg: AeBDievJb+WK9Nt4Mx2cm4vgjEtqahHtA3s9UB7EW/Ld47gOU1OV8fSTSkXQplVdg+6
	+McdSFQuNAagU9t0SZH0OcqvATb9zgtahbyW0O+QWWdKT2/G5KfUGxfaRiJ4wFMC2fGBnXO0hGV
	/VfzbY2JrCabdcDi0bT28sykPUsRzecEFFvnoZLPUTKzD/vkyLMvvufGMBUN2tO+zf93i/oeF0r
	nCsI19tQ/iTdkQm+xTXFs0f92R7OdrXXonk0cjtctfnYlgJsyn4KU6DVO3RnOL2ilXVtb7jvnWa
	InKp7sP75L53WdHYGxUW88A83mC2pQFLhzeBJhi9CjKaGz790gpoQwmK0kwIN2pranV3rYRl5dU
	vF3Jt0TTNozoIaww7v3WQiQHUnzk7k7+WCKQcy47Ta/2IIS79sqakCi/6sxIakTqzqxZ5nsh9OI
	QDvRfRCJUMpf5Jz/fhJXcwBZ25NjGlC00XsTDnANAHEPTAolDmFGTX
X-Received: by 2002:a17:90b:4b0b:b0:35f:b9ba:45b4 with SMTP id 98e67ed59e1d1-35fb9ba4c82mr2800897a91.0.1776103437469;
        Mon, 13 Apr 2026 11:03:57 -0700 (PDT)
Received: from Precision-M2800.hitronhub.home ([104.202.3.185])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35fb6adde77sm4030810a91.14.2026.04.13.11.03.56
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2026 11:03:56 -0700 (PDT)
Date: Mon, 13 Apr 2026 11:03:56 -0700 (PDT)
From: Tom Masterson <kd7cyu@gmail.com>
Reply-To: kd7cyu@gmail.com
To: Blinux list <blinux-list@redhat.com>
Subject: pypi.org question
Message-ID: <b6c4061b-3c02-b3e8-8424-5e0cee18d9b8@gmail.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 3WLf0y3Xa859hyrncyLrv4jHM_3hJagm94PlvMxvqIs_1776103438
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Original-Sender: kd7cyu@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20251104 header.b=kjsjdnlA;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of kd7cyu@gmail.com
 designates 209.85.216.41 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
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
X-Spamd-Result: default: False [-1.61 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=3];
	MAILLIST(-0.20)[googlegroups];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4000::/36];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bncBDEZTZFXXAGRBGHA6THAMGQEBO7EANI];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	MISSING_XM_UA(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kd7cyu@gmail.com,blinux-list@redhat.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[blinux-list];
	MID_RHS_MATCH_FROM(0.00)[];
	HAS_REPLYTO(0.00)[kd7cyu@gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: 0EE753F1C9A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Has anyone successfully registered with test.pypi.org?  If so how did you 
do it?  I have tried multiple times using firefox and chrome and have ot 
managed it so far.  Wven with my wife's help we have not made it through 
the multiple captchas.

Thanks
Tom

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

