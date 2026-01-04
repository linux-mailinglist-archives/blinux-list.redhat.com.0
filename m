Return-Path: <blinux-list+bncBDYIZZNASAHRBS7C5PFAMGQEOR4ET6I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C11CF1721
	for <lists+blinux-list@lfdr.de>; Mon, 05 Jan 2026 00:01:33 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-88a3a4af701sf391387706d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 04 Jan 2026 15:01:33 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767567692; cv=pass;
        d=google.com; s=arc-20240605;
        b=AjeNsfMzQuvZr636iJxT1fdfsJj7c6aed1Vmy9e3qettsWZkIvhzgujnrMhI0QmGnZ
         BrbOlOhubkvXO8iotdg82gxNIXRDgwhLGNbHXnElHyhnSYqgDy+Ab0sQCJ7hZrTsWtsL
         xAUDjoEub9rgp/N/Fo9LI+rC30Nj6gmVEnze9E1im2GJ0TubKRLF6Y02Cd74+TkRTBwk
         kRC5sQsWQegwBFmi5hrdKStKzIYFQiQsy8cAmybMQQomiztJV4UEBmtQEdeucl/b6gYE
         4yLPFVbUSMP82mTj7lEmOAROdiZi1d1Hgpse64bO7EzaLsJxWYO1d5Mvc2zeGzaXlioD
         2l1g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:sender:dkim-signature;
        bh=iPN1vNrRtmG67vZLwBWnn03zXN4TZfuMBbwBzrbp4rU=;
        fh=owqA5Qy+pMC+uDSAcElPcBJjkA/Md6vi059pzgzHG6M=;
        b=N+2tFHDGbGyjd/UJCUEr988/G4TGcASbK4tqCj9e9Lo4rPmNLQ4sGVlcMRFVuR9G5W
         ydlWFqesQm7p0ZX6stU4UriKklL4b1smn8DOtHIgG3P06ZMpx/i9ckV3HWNrfb70FSW3
         pBO+IQ6xU+owfzFo7VWC3ZHLcXIIFC2+OAZo91GZsapFC6hIoWuc9DjGYvUPU+kwBO++
         jIp0PpEoqpcb7GhVvl3+/AUNh+0IgdMOjz1fMdxA8Vv7OPge8G+3xSvtqFzGUS1s8dUD
         ZxI3JSon79/l9lGk9zw9As0t70dxDOO1zCT91oOE/DrgVhkJGVKft5YStG6mH0/N+36N
         OVng==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=JXQqSa8F;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.47 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767567692; x=1768172492; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iPN1vNrRtmG67vZLwBWnn03zXN4TZfuMBbwBzrbp4rU=;
        b=kNVgRLc1ihGuYhmkaP7VlpQsr58o8LD/eZzwcGwrF1J9QiXgAqmuil9t62cnRe3WuP
         x3Zom7MSLZkU+FtCLQ/hB81sGnS4C8qYlURflIRmw6sE0M9WKchg9+gPDZAeQOcomrpQ
         PvBos2oHvsbfzCtEkH+RaEtG19ez21z2xP4CJPx0NNfV5heFah/xPSTVuM3+fsIqNgDQ
         6huDrDDxkkJ8v6HdL83T/t+jZaY9dQ19b2RlhKKNn8uqVV3okd1lfOEFaMGvk6hzxtt2
         CkjzdU/+f/babTSAOYYXgxuiOCHs07/sHYbe3uHcLUSPTaukZsc3QmopIXDkTRnEJz0D
         /22w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767567692; x=1768172492;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:delivered-to:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iPN1vNrRtmG67vZLwBWnn03zXN4TZfuMBbwBzrbp4rU=;
        b=P5N0I6WJeDY41ipIBnl+vn2mnQNKydRxtgXE+d0KWWSVLC9iORJX8Fa+iDjAFB0ZP6
         5uY7YHbKdB0Q1O4BeAT0PDyVQ5nVlCe+JLhmwoRGlmJR2hEzZ2VuxH5VCaKvILl/lJIf
         oCCznQSlEs8IymP055YUhYpm1Kerk15DUCHCveu4X2ybbbE4EKnDhsBYhgNyuzbnMVcp
         kcHk6qLctw0Yi6XRsIMtOi05AbB2cKLQnowdlR8DIxEBd5XsZWOtUi47jEqrpkk5hf0b
         NiiHtBspuovvD7yp7bIxgF1Zs7UZkY7N6zTPyng3ACq2EPQXgPHTrMNP13E3Q1h2pGr/
         XzeA==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCUIbXGE5czEazaLzhPd8QWMFCwldRQ4K4USCRZVmiGb4Vx8I+7ZYru/BHdJSgxyIZUNKC+J2A==@lfdr.de
X-Gm-Message-State: AOJu0Yz4QchG8WOg/id/8jUC9HRogdyqw71GEj/vSozmkEmb9vF2GXM6
	ajcTrT0si5yQiYvcLJfzn0190lNGcKj0rylZNlMfCe0F3oGLsiCEOE6JKWZeMUBe6jw=
X-Google-Smtp-Source: AGHT+IE2EyjaBU/qwTGsbEEP3HDkc5eSLyM4MEw0fMXOH5jU5xyx0eKsdTEE/FouAjGyWl7LIha+rQ==
X-Received: by 2002:ad4:4081:0:b0:88a:57db:8e04 with SMTP id 6a1803df08f44-88d82041599mr494721626d6.8.1767567691695;
        Sun, 04 Jan 2026 15:01:31 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWZPx0gzERr6JY+0LNEAWP1IME3E5q4I7DOfV8eeSs1JNw=="
Received: by 2002:a05:6214:2268:b0:882:3acc:d7a with SMTP id
 6a1803df08f44-890389380b4ls67769276d6.0.-pod-prod-07-us; Sun, 04 Jan 2026
 15:01:30 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCUOMH/gkhHHn7/cvcxxf+wqqrdURMsm+m5sir+719Tof1PPpISmRzqrw8Q5I6yUHekRVaZQb5HXXlp47g==@gapps.redhat.com
X-Received: by 2002:a05:620a:4001:b0:8b2:e7db:2545 with SMTP id af79cd13be357-8c08fa9999dmr6978441185a.53.1767567690417;
        Sun, 04 Jan 2026 15:01:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767567690; cv=pass;
        d=google.com; s=arc-20240605;
        b=HK1yEu24G9pCiS0SeEz160ssuUro236eU1Lrf1c84UhCHeET3sotxepS0QDZDItCmJ
         3CulLQh1kXLnW9pGfBCQFQ9cMaasXqNYkJXiZJCctJhn6Ric+Y9p9Aq/hpDB8G9Dfjum
         qqHC9ognXN6JSZXipYWOGqa9cf+kfsHOGnUYtT8JgCIRUDFySnpNgYqGN42gIqJmQKgX
         LKdLJ/o+SUPRisJJBrrAcncB41sNkNDJt7zvKqMq7WdeXcOadUDdeCNV9bMJjsi6Aods
         KVIXgM18sdJ+6AR3ljJXTpAqAV9nUzb0VT8X/hXMjGEmAoJBSzWMGqcVdziLP3YLuHQK
         d/pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=0wJhB5LeZtQD750CC2CbJ7KlYQHo45znVlQ4DWdJzv8=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=HOe1t7cqYnwpfuMX1ti8UgXn2Rt4eigqnkiPpFDTrQMFskbGClDfGm1vVkERWnrJ1z
         3XMYS328xAwayTPEUsdY/6pQ30tDmtR+8wKDjumAUnxwrekGWaLWnL8Hs2rua7zpHzZT
         OkXrwNUvggvQgUU0hTXL4hlP5+5ENIvyVdE1yCG05CkHoUK/OoMJykvibd4sv+0llG4B
         TF4FQ1Fm/lvzyP6qWPvF/54+7y0lUnArfwcypUEz6uVRKgHp5WzlwFueCDvBauh+sD+Q
         0lb++IndXRNoaov7VVnJl7gSdte2Y8uHAEk8XiP5RA27EnU5Sli7FgGw8cT4M2or6pFK
         SVpw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=JXQqSa8F;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.47 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-8c0975efa63si5617107285a.641.2026.01.04.15.01.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jan 2026 15:01:30 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.47 as permitted sender) client-ip=209.85.219.47;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-197-cfz8-AUxMyGzE8Qy-bqMoA-1; Sun,
 04 Jan 2026 18:01:28 -0500
X-MC-Unique: cfz8-AUxMyGzE8Qy-bqMoA-1
X-Mimecast-MFC-AGG-ID: cfz8-AUxMyGzE8Qy-bqMoA_1767567688
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1F4FE1800343
	for <blinux-list@gapps.redhat.com>; Sun,  4 Jan 2026 23:01:28 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1A3BB1956056; Sun,  4 Jan 2026 23:01:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1725E1956048
	for <blinux-list@redhat.com>; Sun,  4 Jan 2026 23:01:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 970681956089
	for <blinux-list@redhat.com>; Sun,  4 Jan 2026 23:01:27 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767567687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=0wJhB5LeZtQD750CC2CbJ7KlYQHo45znVlQ4DWdJzv8=;
	b=Qqg6MRv+a6wheuCl7JO+nevGoYLQkzxjxPQ4T1Y3PUVJRCTgzZAYqVVCppKoALe3J6kdzg
	INCirtt9XetHixfDBOw7fzuFti63lQmoNIrCHZGwtV7QyiVDx5o8zmyFCItBaTSwYzMzQY
	rOg8gXiETjKg9omy8gnH80G/l3sSYpwqb6sZIel/eM18UxKR4I4cYA6oDqKK3UesHzd8xr
	TF6o+dW5hi3RPBsKLOrilxmjHPJXZySSpaibtK0qpDIyQbFQtn8zK7EXVDH9S6nCl+KFBR
	D43tGC/eZ1HdBG6Xznk9wYwHhlJf/gGQ0JCrV+8up5hkXsgQH/odKVI+/u4FWQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767567687; a=rsa-sha256;
	cv=none;
	b=kAe7yT7/zIywEz8rn8CmPcsf3MPpNN4iIH0bkPkYrcjCSA05PHDtBmAfq3wm7RX3ZqTx8o
	xEEwCQBux/tA2JQG/JDHBwtA701Yo0ebKKEp0e63Xo+U6Oxnm3/w7w0HPEpZFNM6C2UGZ/
	Bo7d9QM+1feKa/fi3O+5wCpwjucXrHJlKUNRvWOfhSdVk6vnhrvqJvGxOgifhgoAGsKyxM
	huVSpTvMTZbkzvuvfI0kDwYOsdwsJhpIl6zYq1IhhMkjPQgA3eaSoOF3OMK0P+Ky5onRTy
	AAEfHupLHw7OX1BOjSPVVSlP6xWzY18SzmPSZRz7v+P9XvqzeaXgfqA3m78Yeg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=JXQqSa8F;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.47 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-193-D_M6KmzzOqCAk1ttx-5R1Q-1; Sun, 04 Jan 2026 18:01:25 -0500
X-MC-Unique: D_M6KmzzOqCAk1ttx-5R1Q-1
X-Mimecast-MFC-AGG-ID: D_M6KmzzOqCAk1ttx-5R1Q_1767567685
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-88fca7bce90so147752656d6.3
        for <blinux-list@redhat.com>; Sun, 04 Jan 2026 15:01:25 -0800 (PST)
X-Gm-Gg: AY/fxX5XdCAdY0j/B85sJZdD35HaOWVP95Vp+JlnjYWw770LHAD/5YAoI8/UZ5Pgh3y
	Bv41n/3wmsdQHCB8O89YyQ+PXDOtEhVLrjm4t1eyOVaFAHKLg9NkU2EbC7ljaPFTGucS+8b1CVX
	ohw+NUAjrYPkeiEjrOhLLvM6UoQHEZuwW/o0ykz+vOM09hMZznJozX3eICQux8TGC8CIBiZS6zs
	K2mSueEbiCyPJyxKyGot4rQpvD4R2FbYCdJ2orZ0PAi2tEvGUabtBJ6PRCZXbZIGXIl+ZyL7SBq
	vvqXhuw+ZLzyumyM56Z0q4OxUVyR7Arf/QVSe6dpALCy9wPRIMbx74tMbgMutqbo3oBqAllmnpj
	Th05uMK96Rg4PxWtcCxCrxygHRAnKSuMGdcbXAKqfaag8PROxzXP5yciJPprnaF7BNUh/35/8p1
	5frEk6yRzYlAUjsfmxSpkerDllNnvp1VXRO1iyeKiNhJAZ7dqu3fxy1hW9k6/pOYSCsP2OwHMIS
	jgkgQod/LOXzb/R
X-Received: by 2002:a05:6214:5c05:b0:88f:7d9:f2eb with SMTP id 6a1803df08f44-88f07d9f382mr609884446d6.14.1767567684304;
        Sun, 04 Jan 2026 15:01:24 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890105c3b34sm164195796d6.48.2026.01.04.15.01.22
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jan 2026 15:01:23 -0800 (PST)
Message-ID: <0188d089-4f53-4d9c-a1c7-dd70183a6b50@gmail.com>
Date: Sun, 4 Jan 2026 17:01:21 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: vojtux_43
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
 <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
 <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it>
 <495c0d47-4455-4c74-a1f8-1648f290048a@gmail.com> <E1vbeKX-000sRo-2r@lapcust>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <E1vbeKX-000sRo-2r@lapcust>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: TuS9KckwWSwb76BmnhybUYqtsyksZhSW4D1t2neYiE4_1767567685
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=JXQqSa8F;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.219.47 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Artur Rutkowski,
Just to let you know i fixed my issue by switching to GDM from lightdm.
once i installed GDM i disabled lightdm and enabled GDM and rebooted.
once i got to the login screen i was able to adjust the volume with the buttons on my USB speakers.
it is no longer yelling at me.
Rodney


On 1/2/2026 06:32, Artur Rutkowski wrote:
> Hi Rodney,
>
> Do you have problem with volume in general or it is Orca-oriented subject? I ask it because I control volume by amixer only. I never touch the Orca's volume itself and I don't even know if there is any dedicated setting.
>
> Greetings.
> Artur Rutkowski
>
> https://www.youtube.com/@Art-ur-g2o

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

