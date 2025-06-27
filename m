Return-Path: <blinux-list+bncBCV3N6GOXMCRBT4V7PBAMGQEN3APPGY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD4CAEBDBE
	for <lists+blinux-list@lfdr.de>; Fri, 27 Jun 2025 18:46:09 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a4369e7413sf46203731cf.1
        for <lists+blinux-list@lfdr.de>; Fri, 27 Jun 2025 09:46:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751042768; cv=pass;
        d=google.com; s=arc-20240605;
        b=f+iS1Rr3EABdorECRiuZlU5Z3rgNyMsa9/ZS0mSPkksmWLbzLs4eiO/0MVJ35p4WbQ
         vg1x28Mfd2RBu6YWYvalgkO4xl0+2JUdNW03AKvKamtYZhN2JXqfVc6wTZ8g1p8j5QyI
         N1GdbnXEJ0MjxGh+8rGSmqUc+cZPw2tJ2/nX7W9peyYImyo5pfnMzUD6fobdoZAB6bw0
         Q4W2QxgbjCdDeO/8TZn7AXQWL/DQq7uyUYY1rmw58RF7m3gA5jCfQiGB9qFAswA02Dv4
         Z8GoqMmVEvXYWEhgEidEkynqc8hyGJ65UrW+Slmk8v6vSE4gewYZMxlTNBH9lRBQbSRC
         MDVw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=hKwvU5tyS4XnpoYcrVrKVenyAAWxtbdjxx5nqal34d0=;
        fh=eMXhacZWM/WPNeuhCfVoRwaF1hP2ytjkBXjGnV0TPyk=;
        b=FQKW0tQ9j+8qgp5v/AC4VR3w/Czg0xLqq7Be76BYQ7rlno0ggcflY+jy341fM4HRcx
         lN74+B2CkB7s6yf8iuCzWVyZl5gceydpo6eVywSCtcRMNH/HGQ2R3vQQC1lk7EgtM4AQ
         b5g+kuZ5MZfoF92c/2cbA7/KUWedQuC3+oMLEttuaUu4fypV3n4oUU96NcrTMHuQL0pS
         k1QeJslXSeLkpqsQyaB8DTSiwXnMCgmEhtKbzk+/gCarG6N4I1X/psHuWBJnz5nS+QNR
         HlAeVN98caBRGtfSqck7x1RoybEn0bMGFf7LJhxQjvvo7/hVWVHQ5Yeosjp0W2XXpiYm
         Q7tQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=OQDhXTGt;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751042768; x=1751647568;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hKwvU5tyS4XnpoYcrVrKVenyAAWxtbdjxx5nqal34d0=;
        b=mrEGZvnRKTOj/SMcviJlu/BoVMhRfkyUp5iidVXB3y6gJQgsCr7JvqjczTeKeI7VnR
         s1+yCU47w1g55LhEqU5TS4dESp65laY/BqJmkcA30jZuGEtpJiym4OBfbcHYHSiTNmAF
         +qFySjGtGW2uAYwc2QoEiOXjNsLqLqWQ8s/aRbIkKW7iGldlFX+3scNCRx+1GyNQMDyI
         yCxz09tIt94pdUyFzCYsYu2i2oJtoHdp4RHF82dpVt+zMz3yCYAKdG1pJrZW4Onf4XuV
         49GsPY+o2WmHBph6cb60DCus4wIu24J1e0ZBDnv4oFbEvLzdiZUzU1L8LZ87RcZIO/3Y
         Dt2A==
X-Forwarded-Encrypted: i=3; AJvYcCUapUgY6qGg1n0IGatLfnmus0OBwAsxde79TozCYHJmNULAEFsmAy1NsBKJGRnXcBPBJwiIXw==@lfdr.de
X-Gm-Message-State: AOJu0YwRgUM2gEYCOyjr41tI1eoOA4DH3Xw+WrNVNCTZI+ge6C+hXWST
	GplLRtmu0qv3mwQL5n5DyCRF0tdKZuGZxQnPhS2oHDO7N49dJs61DPNVLNU/Whk6/nA=
X-Google-Smtp-Source: AGHT+IHPZEBvJaoJxs/9OcASqkX/V1kxcaHXEE4oUBxJiPb+DL46z6wWCTVN8VSBm/zqy5wshkyV2w==
X-Received: by 2002:a05:622a:7281:b0:4a7:6e08:6294 with SMTP id d75a77b69052e-4a804e696cdmr14647201cf.19.1751042767745;
        Fri, 27 Jun 2025 09:46:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZeBgiWt5v7qfDcktqRhfkx6Ojfe4tQZOnSTN3mcUodRYg==
Received: by 2002:a05:622a:87:b0:4a5:a87e:51c1 with SMTP id
 d75a77b69052e-4a7f3214bddls38240391cf.1.-pod-prod-03-us; Fri, 27 Jun 2025
 09:46:06 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUUz7xmOfOxK9xNjnPjjieW27IiAQPz2YZ4P2WLHhaZ2v8dcNL4AeB5NtCQKJ9hXracuiaFxodoML8DiA==@gapps.redhat.com
X-Received: by 2002:a05:622a:a90c:b0:494:b1f9:d677 with SMTP id d75a77b69052e-4a7fdab4de8mr51405951cf.48.1751042766501;
        Fri, 27 Jun 2025 09:46:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751042766; cv=pass;
        d=google.com; s=arc-20240605;
        b=CZY4wufYA+P54ADc4Le93UIp/vPqxT7EWLPPaQXiVYy9leVg98FwNCgWSr07mvhqvD
         DMlbmOIHYEuDnt1vv5P4gaaNvUyUfHSV4btRurk+HWvrqPaI5RGEoawiPJdJHiXLXT4E
         W+t8WVqU/jJ8ftkFPFKcXO0RqsPo4ItjK6WnnMVDpyZOpo8OBjMCtA9h4zWsxKELUzS2
         oMdaFId/XywbAbdZfm1daaijhJxPkKf3R89Bxm02bLmBrndgho/Fb7cwFdydcBFC81BJ
         vRaIE/M5NheVTpDld8jpurAh0QIJBNIa9eWlpXIpsncWklmIs+qZ6AEXstQBVY3JxtTj
         PRTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=pFHRI5TDuT4BfZRZR/H6WmbNDxQIfkN7/Z/IsLrdQMw=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Xg5H0UO5eJPlp8KpT8DrP6W9gzObkpPs1WpIPqJ7EqmLE5MVzv3dwb+Cv59dN9ZeA3
         H/N402MRy4IeFc8YlpfUnPPMWnTRjM1RirLdvlIEDxZRx1Z7we0jvnR1cGfG6uR8AXJG
         RcqxZyrA1CI3g0MF8HKGei2aoGIjbKGJqAz84beezthVn7QwYL0y3oSijGpnHSik8RdK
         q2kt1IB6lUnV3Mno4w1iZjFN7cnv1+udwHPAB0LUjNHURPyzalRyGa5Zi8gf0wfBV9ro
         qYk/9PBaRdAF2UQkiAO77rqaKYg8JxuzozXaOQG8ijNeH5NXKmTQbmVqPoNzsV6ZY6dv
         Ce2w==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=OQDhXTGt;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a7fc23fa02si25240391cf.328.2025.06.27.09.46.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 09:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-502-Qw1jatfCN2S1iUFOqwk_Jw-1; Fri,
 27 Jun 2025 12:46:04 -0400
X-MC-Unique: Qw1jatfCN2S1iUFOqwk_Jw-1
X-Mimecast-MFC-AGG-ID: Qw1jatfCN2S1iUFOqwk_Jw_1751042764
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 10AB81955EC3
	for <blinux-list@gapps.redhat.com>; Fri, 27 Jun 2025 16:46:04 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0BFB918002B7; Fri, 27 Jun 2025 16:46:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 092E518003FC
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 16:46:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 97F3D1954215
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 16:46:03 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751042762;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=pFHRI5TDuT4BfZRZR/H6WmbNDxQIfkN7/Z/IsLrdQMw=;
	b=Nadcfs/IUVzHUvh1fOsivvJ/ZYAUIHMzByg8WVO3c+MxU6VmObVXjzlmVKujM6+5nx1ito
	Tnb1MnPBLJntY7KrR3SE9Ee7VX7nQ+6B9geGci1LND5hGcyk+/m0FdYpTlPAftZ6GbxX2l
	yuC+3onM5UUjxrv3pCTbY4RkVKKjcMEwCttS91Cu72mEQuCzzABYkRwgEzvMsXt+e3UxVZ
	XwQxV5BR952bp/Zpw+6HuCSegwL++Qf6hFR0x5554gvEz47pDy7Ug0YSDUsd5pKEFUk4E6
	ugWxHfhZhQ6uOUIK59KMIwVuqmWGctbOhdyZ51M0cOvbuU/yUZntLCNZai5ENg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751042762; a=rsa-sha256;
	cv=none;
	b=MAg9aiJdfue9COKazjp3moLxE51QBcpSeSptnfzmvNjQcND1PYnvAvFkHkxuRfKll9pRJP
	Vbtfo4IakHSdsI2bQ4AnrFLO4NX5Q9vae6AxDHrGDqTvXX/FDr4U1Codv6MpXV9b4lyN2f
	wGBbBJvRQ+/Nf+UAWH9Y/WecSOhU61COVSUpoYg6d6ySLdKTmh1FI9dMtqc6OQ4qQbUItb
	udV2PeMTxP9hAmbNW3o3aOl9HA/lfx08yGOwT8/xFDjsrXKbAeb+9/ATXFpnZqCWAE0aGl
	kZ3pfgijsch5x+QHrGa9ffXmrZAzamam5RuLAC0jn9tuoJydIxECnk9/rpsNEA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmx.it header.s=s31663417 header.b=OQDhXTGt;
	dmarc=pass (policy=quarantine) header.from=gmx.it;
	spf=pass (relay.mimecast.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-628-erd7hwbYM-K0eMTG3eVjNw-1; Fri,
 27 Jun 2025 12:46:00 -0400
X-MC-Unique: erd7hwbYM-K0eMTG3eVjNw-1
X-Mimecast-MFC-AGG-ID: erd7hwbYM-K0eMTG3eVjNw_1751042759
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.236] ([136.47.142.229]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N3bX1-1uv95o08iR-00so1S for
 <blinux-list@redhat.com>; Fri, 27 Jun 2025 18:45:59 +0200
Message-ID: <e3c1e851-b34c-4a39-8dc7-7bf9f4504671@gmx.it>
Date: Fri, 27 Jun 2025 12:45:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: external drive
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8F2A944E-6737-433F-8667-35747E4CBD48@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <8F2A944E-6737-433F-8667-35747E4CBD48@gmail.com>
X-Provags-ID: V03:K1:SzxXgcgNt61v/E4ZoYRvfvkaUtM4yl8553Z532weczict9f8yhd
 e80lmnRAQHiV8zxkiijZsHhUwu1q8g62hh1Lu/arTiw2O0xPZ7yb2VFV74toaR36p5ui2zp
 gVFc76+zqmndQbVpQa5oGoxTOzRdjYV4auZRgmYuqorkgo+GO7ZMHkW6xWamC5uM0pk735D
 K9swpEvTijIbYV7mKw1nw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:sID2n1eir8E=;59+XNylJHxVNKNQYECK3dXBojZ7
 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
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 2G2OgRI1of5HOt6_ZTE1eFsCkTPBLRnFu1x-wPJ_xSU_1751042759
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=OQDhXTGt;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it
 dmarc=pass fromdomain=gmx.it);       spf=pass (google.com: domain of
 kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

A loose cable or an otherwise intermittent connection can sometimes 
cause this. The drive doesn't fully deregister from the system, but it 
reconnects and the system thinks it is still mounted and tries to mount 
it again, naturally failing. If the cable is secure on both ends, and if 
another cable doesn't solve the problem, it is likely that the drive may 
be going bad, especially if it's a spinning drive. Of course an 
underpowered spinning drive can also cause this type of problem, as the 
power going to the motor is good enough most of the time, but is not 
enough other times, causing a soft reset, which would cause the error 
you mention.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

