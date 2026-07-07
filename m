Return-Path: <blinux-list+bncBDM4LSNO5MHBBDFWWTJAMGQE23SABRA@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n8ZAIQ8bTWrEvAEAu9opvQ
	(envelope-from <blinux-list+bncBDM4LSNO5MHBBDFWWTJAMGQE23SABRA@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Tue, 07 Jul 2026 17:28:15 +0200
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 0420B71D44B
	for <lists+blinux-list@lfdr.de>; Tue, 07 Jul 2026 17:28:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=google header.b="s+kQmVc/";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (mail.lfdr.de: domain of blinux-list+bncBDM4LSNO5MHBBDFWWTJAMGQE23SABRA@redhat.com designates 2a00:1450:4864:20::546 as permitted sender) smtp.mailfrom=blinux-list+bncBDM4LSNO5MHBBDFWWTJAMGQE23SABRA@redhat.com;
	arc=pass ("google.com:s=arc-20260327:i=3")
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-698aa8bd688sf4214441a12.0
        for <lists+blinux-list@lfdr.de>; Tue, 07 Jul 2026 08:28:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1783438094; cv=pass;
        d=google.com; s=arc-20260327;
        b=lfgLmCHe0jb1tSTUDJYMmwCzHsi69lY4qPc1Lyx3u//Fw1oFNRwF7iYR4LzIPNKfBj
         B5Ac2gzGYlFocPJsOOGRITF96lrzhUWKJUFabmO475s1ipoWBl1XuA+xSQEKbisFfhS1
         wCerpgfWyyC/748pPQMvZBOvQJKbNo07Pa2prY2k8Kma32GtwxQ/5Mqjs8s2msHB48Ba
         y1G28xfbjku6q/49FxJNIp+VyigOfO9yimBCEkoPNBrawPqCT/bErNVuJJS3fzX297fZ
         EwwIyQdJyYKXZAAGPO1INEHiskaUgdjcPzoj9twhT1a2sqE+gml491uZUAA3wkMwbaiE
         KsLQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:dkim-signature;
        bh=6xJY/c2vWbe2Mol/fx4q5CvkfiB6S/t7jBQpqIoFaR8=;
        fh=ZX0+9mcl8GG3fzAn3Xejg3P1LnkSkTDu4izNKfD1kyg=;
        b=BkBvspxkSa/8/w1TZGdfewQ1X2cC0oyI6PjqLFHIHRBORSz2E8vsfIUeMVQ9Hz0rIM
         IEzFukwpsgGpza8WEhZubBmE6fgefCszmcR2FWN1jaBsDR9Rv3210XAjMA/vBJj8c3fY
         RmHg/nDcXNZTEx7n8p7bEZeG+mwU+fj310FlEH4ekbwKdfzAhJ0hzoX7tJvRCGeCyC9q
         6DNlZViFEc59bW35lMPpZ06uoPiq5Y4QEF2AETNCkAs5YXxGOfBd6DZeXkU0Le2fJ/F2
         gg3rD1jOcpO/nIt1qD+yzrERGJsFhJtjyMWMZXnBD8z7+/Qktho+M8Dz3GPQBvt3/5Gk
         LGxg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=lkfhBHNB;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1783438094; x=1784042894; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-type:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6xJY/c2vWbe2Mol/fx4q5CvkfiB6S/t7jBQpqIoFaR8=;
        b=s+kQmVc/z/Vge/IhWle3nVPDKf/K/saO4QmEaumX4Hh1sCoo/35qPb4yh5lW60q5O3
         w8TPg04bWR+DtPo6HZDDPAo6b/CD8yKTxOaZYG8flKb60SoSf0FgXqjqsilKDISXdbtG
         UDQ1a5BPujU7y678LaHdv49ml+Le43oOphSbcp0ht70VqCgmBV0dSsdyxLKMyRTHuOtc
         pKTr7vPfD2RpTd0x1GkpNam/DmOELhc6qxUzwqZ7zHMmDy8YXo+KOnzzmIDPQOfoosjU
         lL1QYfltDGTLwRPnyntpz/gPSRGqownn2HsOGH4uYQgG8O0Gc1UdcFdfADNRl5rjstI0
         l6mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783438094; x=1784042894;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:content-type
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=6xJY/c2vWbe2Mol/fx4q5CvkfiB6S/t7jBQpqIoFaR8=;
        b=ZnWKF2kvqykXN9aKL5skKJcJYdUCNeDQyAYHDIVwIaF0WoeD+gaplNsa2Ani4zVFIl
         YiGsj2dMEUhfqlaOxIwdcdUiHfNZzICDPi2gkAi5QWwcv7g2DQ3Ouq+TWtME8O1zYEo4
         JHPFeHHd26FbddBetQEskOFo1IER2fUi8sQX6k94r2WXRLQLY6oh9b+31QEfzmVHkhEE
         Yx5zqlDCyCjQWbEvhLRdjTict93qdgGdKHoj2mab/BEUQhvgeUhgI0d0TEyrrIl80T/a
         s3gAlfkQ7lK7DPh8yoeX12XBuWhXtRyTnmzfasW0KOvkBo9KTNjAztbuBwADTeLGBBpb
         1Hiw==
X-Forwarded-Encrypted: i=3; AHgh+Rqx2zSGhNsT7DwQ2iiGukVEgkvspqjhs8HTT7O3It9veGrdFkcN9wE4fMQIwGTfqu6CHIh5Jw==@lfdr.de
X-Gm-Message-State: AOJu0YxVz2unicaG+EZHqxI8htHWmIdkf2ZVuE5dXsecbeao7cjEIs70
	XYy4d22qYDbWy+J1q6AcP2mBZHPRty3hS355X0s1J/8Dh1FUfz5gz3nz2Ftz5KsIqxU=
X-Received: by 2002:a05:6402:548f:b0:698:3b7c:3b41 with SMTP id 4fb4d7f45d1cf-69a85c5abb3mr3123781a12.32.1783438094018;
        Tue, 07 Jul 2026 08:28:14 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h="AX0PUUcOWkuKQAfgU+tFg+E8UILyEK8OX4Y6F08kB/J1MFCZ5Q=="
Received: by 2002:a05:6402:4449:b0:698:81ab:c50c with SMTP id
 4fb4d7f45d1cf-699fbde87cals3945028a12.0.-pod-prod-08-eu; Tue, 07 Jul 2026
 08:28:11 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AHgh+RrMhK2vkgfAmJck8UzAbj0yghhVVvq2IlkR/WtTLBjkTYThFBgVwsNxPx5hj9Dfyns2RfSkEpPVn7rrGQ==@gapps.redhat.com
X-Received: by 2002:a05:6402:534d:20b0:698:bdf8:399f with SMTP id 4fb4d7f45d1cf-69a85c3dca3mr2382755a12.19.1783438091252;
        Tue, 07 Jul 2026 08:28:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1783438091; cv=pass;
        d=google.com; s=arc-20260327;
        b=kRVYMWBR8Bb5z39oszC+MUNhtK25r2MCghtrKgYdvRfFSQKovdYxVPk24aTlDejl2T
         XMXgQMkg5iwJXPszui0yu0iMoHUiomUaLtd0KPf5jRImbZeJxnLM0Xc3yMqFhuZCA4CH
         UYTwDPfwPDWwnHdPvz74yEOyVlq7bc93La/BH9gnXoL2N4AoI4AxSDaXICWYZzi6Ko/B
         dKjDmoUjT54IH4Btqqkv3PKscqZflEGN4EkOkttcjm3AX3EC0H7aq57UhKJHT7RhOucZ
         w51wvXL10PND8WtjZO7rxS7mZF66rkx0vFGvRMSKOkzUUNfipaLHh9eewJkBYp1s/q8/
         gnXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=e1phbNgCnhDtUsmHZbLoV54jtUs4Cmlu5cy9BRtwZUo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=k7kaiBn/EmRzfcrxoMbqXaITai31DMH9wDCBD374inMArk97lumu0zozkWI+LPKYm5
         R3Hwufxuj0TgPISD+0JqwuxW+fAAkIR6N6i8Bc8lannRtAdHnMIysjNEdDAG1dh9QkdC
         uoabet1cl20pU22Vivd/pPyceS0yqvqU7xb9CNmPdneVg/0Mjpmcv555SbbG2mKKFVYI
         5nU5Hj6SPT7q7ueRqgrOqLy7WFHcNo5hgZlChXc0SFRpUlbTZztXsz6VUw/0LUyrGGoE
         4mdVp3C4zC+jy95gME+bFvlwzq4jxF8UJoUX43F44nGan5LUN2jAMwJN5h55GDvHrF4N
         IY8g==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=lkfhBHNB;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-69a19cff00bsi8898285a12.77.2026.07.07.08.28.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 08:28:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-424-d-r2M5WwO9W_s5_mXNSuwQ-1; Tue,
 07 Jul 2026 11:28:08 -0400
X-MC-Unique: d-r2M5WwO9W_s5_mXNSuwQ-1
X-Mimecast-MFC-AGG-ID: d-r2M5WwO9W_s5_mXNSuwQ_1783438088
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DDAD5195421F
	for <blinux-list@gapps.redhat.com>; Tue,  7 Jul 2026 15:28:07 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D8EC51800678; Tue,  7 Jul 2026 15:28:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D6151180065F
	for <blinux-list@redhat.com>; Tue,  7 Jul 2026 15:28:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 66B7B1801322
	for <blinux-list@redhat.com>; Tue,  7 Jul 2026 15:28:07 +0000 (UTC)
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=mail.com header.s=s1089575 header.b=lkfhBHNB;
	spf=pass (relay.mimecast.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com;
	dmarc=pass (policy=quarantine) header.from=mail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1783438086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=e1phbNgCnhDtUsmHZbLoV54jtUs4Cmlu5cy9BRtwZUo=;
	b=UvWHeGVNeE8fltfvh2NU/s1rE4X91LqwJoGKiE10k3J1x1RvYG22Xs8Ulbgv9l71PD9JPq
	xI4j0dZCj5Hc391rBfyermQhyMc0d9sLIJfbLnbAXhwQWMpMXTZQvjDTDGZ3oQlx7BdH5p
	QKwTKUPRvrW+Atnr6FGiZDu3fG8xk8nZrmGodPkHrHGUhDTtNC8CG75A0RNAzUVr2xTHE+
	USHm/F3Mi7cJFJPdJvGdUFNh8M+r81XQi8hSMkJ2qHNCSy3NJdKXnCHLJj9IVz1wv2iOk5
	WPUjjs92uhGFW245lRJyY5M7Cc37TRItAMpV0uNe0Onn+f0Pv0I93sbyhKJ/GQ==
ARC-Seal: i=1; a=rsa-sha256; d=dkim.mimecast.com; s=201903; cv=none;
	t=1783438086;
	b=F1CkANoKPqKvcecvmGIqmxziM0B/vobHgM8zhaS/ddAsc4dLUmfzJ6HorN+R09XTjup3MN
	KxP4WfacZ0mk9JyF4AtG8ld5tQscwTvkHROWQ6nH/wsH+pxCAnNnPzld6VqQcc3qyvXj1t
	qB6ZScrcHjvRF/a1QXvKezY+jQKvKEP1lktelDwG1JmCs4JxnZ/IJJKaszRGTr6F7MfTaX
	iEuVqqB4aA7noVS/d16FX/oydg1K5uyfhoB7WwCVPLS22kMUF6+BA+zMSBovzOXVyfxTv6
	LWp7wNrpup7qu70UqaPZIl9GnjXrSilO+hrAh9blwkk2GfOn1ptwT9VH2CnjmA==
Received: from mout.mail.com (mout.mail.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-138-WInfWt3_OVealPA_VFghDw-1; Tue,
 07 Jul 2026 11:28:04 -0400
X-MC-Unique: WInfWt3_OVealPA_VFghDw-1
X-Mimecast-MFC-AGG-ID: WInfWt3_OVealPA_VFghDw_1783438084
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from client.hidden.invalid by smtp.mail.com (mrgmxus004
 [74.208.5.15]) with ESMTPSA (Nemesis) id 0LqB4o-1xKq6I2YPA-00esRx for
 <blinux-list@redhat.com>; Tue, 07 Jul 2026 17:23:03 +0200
Message-ID: <5a2f2bc3-40ae-4a7c-8cc9-585e41df2f26@mail.com>
Date: Tue, 7 Jul 2026 17:23:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Braille, sixx or eight dot
To: blinux-list@redhat.com
References: <c718cb16-580a-42ba-b402-3954a5155862@gmail.com>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <c718cb16-580a-42ba-b402-3954a5155862@gmail.com>
X-Provags-ID: V03:K1:8OOV6MU/aJRpWwneUhtx+WuBPs2yvLWoFlbg3exaS9snXasD+rl
 qf8/yIqj7XjxA8WVU5E0IJV13guX4KiaOf2PFFVg/EJqioH8joT8/YtLJyNuUhV3aHQCa5X
 vWsSACzy+b8uhPeSgSqDl9tAAxruR6rOilYcSw4aKUXAI3w9rxB22KCJVLYKsrGm8bFNvxv
 xGj7k9V38774rOK1BLpbw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:EALO/MhNCyI=;QuNmeo4tSvjMYpA29l3JcdBLbkK
 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
 2Qn2Mm5ImuPsQ/3bnFOsAfQA==
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: c_vldM65WByGHaajsLzm1QPmw3K7HPYumDTHyJNQ6PY_1783438084
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@mail.com header.s=s1089575 header.b=lkfhBHNB;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com
 dmarc=pass fromdomain=mail.com);       spf=pass (google.com: domain of
 johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.21 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=3];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2a00:1450:4000::/36];
	MAILLIST(-0.20)[googlegroups];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_EQ_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_REPLYTO(0.00)[mail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bncBDM4LSNO5MHBBDFWWTJAMGQE23SABRA];
	RCPT_COUNT_ONE(0.00)[1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-ed1-x546.google.com:helo,mail-ed1-x546.google.com:rdns];
	DKIM_TRACE(0.00)[redhat.com:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[blinux-list];
	HAS_REPLYTO(0.00)[johndoe65534@mail.com];
	ASN(0.00)[asn:15169, ipnet:2a00:1450::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0420B71D44B

On 7/7/26 4:47 PM, Daniel Crone wrote:
> Using Orca, is there a way to switch to eight-dot Braille?
> 

You'll have better traction on the Orca mailing list.

-- 
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

