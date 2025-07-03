Return-Path: <blinux-list+bncBCAJTHUAX4NBBM5ZTLBQMGQENTSA5KI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ADEAF79EC
	for <lists+blinux-list@lfdr.de>; Thu,  3 Jul 2025 17:07:34 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a7bba869dbsf123834121cf.1
        for <lists+blinux-list@lfdr.de>; Thu, 03 Jul 2025 08:07:33 -0700 (PDT)
ARC-Seal: i=4; a=rsa-sha256; t=1751555253; cv=pass;
        d=google.com; s=arc-20240605;
        b=OuHIllWPWx9pDjBUBJuAM2zJysVClN4Ney4Kjs0uQu0VuxNpWM7YFMulb7zMNknB1L
         SWo6skl+l7ONxRAEKtld3ga4Qo0QhysCV2r9McuIBoScrMMUiY8M6hSg4PHtzL/Qfvvn
         LhGhUEjTDY2qWect04sTg5AhbCUDRyhWLoHN6s2wqIaVatJfpdv7vnpsTZxo+y8x5N6r
         n2GUKOxTm2xCN93AAJUcAt8qmpR3pAiv1rhRSIYuRSXtNFz5NQBZQSCwG47GVJRC+hYS
         6xv5xCXimBnBJBtW3Q3cydwuFhxvaZQcAkq74nyZDVkZaEJYmPo/f6pKAbVzqgdtpQXc
         WDZw==
ARC-Message-Signature: i=4; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=LWpgEFH0TB8uHOrnIydK12RVUBVXdcCqrRTgTmapT24=;
        fh=zTIXsbGtDNknZ7TvwOZMqivhr7ZqH9g2Mr0arGWocBc=;
        b=HOH47ws8j0gaF0alDV7QLU4+wsBurYIl8mkN76580VxaWocLe9pO8Z/OhcBBaA61+R
         tzT6QM5B4NAX8AXkrWeqe4r4BGb6f/UJ9iotS4sewYdg4kHsVz6byWRfqHsiIke/sSJ+
         LJ7IsM5nLNNa6gDtwuwazyHGxp23HNnGHQKjhex4W69Bwm3M3Vwuz3luoF+orCWlPK9e
         RJwrsbytwesKTfc4xh0CvvwJkG4SvaNMQWa3SMHtQuLeb2m3MWEkT2r2TI9nZsut3PrR
         ca9ECZPz8M+9/IhGN1UEV/0hV5+q4Niy4Y5ytDY9d7VC+RAp2E+tE5ev9lTiPT0UEUuB
         Bx+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=4; mx.google.com;
       dkim=pass header.i=@crosslink.net header.s=zoho header.b=hQoAsCZv;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass fromdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751555253; x=1752160053;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LWpgEFH0TB8uHOrnIydK12RVUBVXdcCqrRTgTmapT24=;
        b=ioRuhhjwh0BBgRgWDXwvQl9wdhemJR3snzBDVubko5L5i8qVhRutFZnjj5uqDwvO2p
         uSAwYBQRqeaTqueZifXpLPUv5Fb8+hZxFSgsDUPZC5vLohO4H4nzoXCJZwgPEuXXnWUP
         bMcC5omznICtswoQ22o3zD7B6KSpFUwLhF/4oW+Q4bOwZuw8rwFOzsPRfRz80+A+v9kd
         tLLsTtliuOkgw/VGJ9kTFQcHV2e0Env5GhZcojYwfxoqzNGSj4sBculL3DYjRiO+NABY
         alBR3w/1+dIyaYMObl6TaofMw8zLJHHKoxuOfz7dCcGr2oEaid8brPLQtoRr0B/4yzB1
         QpNA==
X-Forwarded-Encrypted: i=4; AJvYcCUXj6YC5Z/0Ig4q+nE6vsmFBvNXQKlpz4a/y8KvogrmZTo05PayQ9YjALQ7a3QzqXEfIP2xSw==@lfdr.de
X-Gm-Message-State: AOJu0YzcsWliw3hPnXb7KghVwrts982R4ySYcZuewxFQjYQRxqnN2erp
	8Hebx42ZUQqb80w/RCuvomi/lE5xAVwS/2EF/3dpPK6SAvarNOpWlXD3i7Y04QNX4z0=
X-Google-Smtp-Source: AGHT+IHwsaw3JzINx6z49MyTao81CgJJV1LInUD58kCbA844ar6jyJkvJxDORCyXYaf3DR+CD6eXMw==
X-Received: by 2002:ac8:59d6:0:b0:476:9474:9b73 with SMTP id d75a77b69052e-4a987a6d653mr58599901cf.42.1751555252340;
        Thu, 03 Jul 2025 08:07:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfFbdEh3heUDUlUwlXmTNSz5WQGO85fSO3DAsSyHC2AOQ==
Received: by 2002:a05:622a:11d4:b0:476:7bf7:255e with SMTP id
 d75a77b69052e-4a99405d639ls306891cf.1.-pod-prod-05-us; Thu, 03 Jul 2025
 08:07:31 -0700 (PDT)
X-Forwarded-Encrypted: i=4; AJvYcCUE9Qhl0u/tgEHnOFore/6nRB2HFRm9a34a15PqNE5u8uy6166x6qES44wry+6J7SitUImGmboxTRjsrg==@gapps.redhat.com
X-Received: by 2002:ac8:6f0d:0:b0:4a3:1b23:2862 with SMTP id d75a77b69052e-4a987a8c217mr65393761cf.50.1751555250940;
        Thu, 03 Jul 2025 08:07:30 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751555250; cv=pass;
        d=google.com; s=arc-20240605;
        b=DOqFxpGMxBDLScqGqGCmio/xl1PGXfUnL0OCOCtPvTuzgf4gf9vAbMpPENhBLPRLjP
         rZCsoMPtYvowmjxXXZALmB+vqzztqodkCPB62n1/AjyvhqIBhQPaEVPldAIbXNS4SE4Y
         myO8/U9df+MuZihYD8CptI4oU8QYPpDfVmbqnIM9Smu7tjRtmxOv1ZqSV7EX4dWMKcsA
         niEEExQ+CBVFgwcoRuP/7yr2U4RAJv9cZRldbhuQgZV2hsEanlqBpiJLdJ3uD60a9+QY
         W7RjHimWmuy0V8lsO6xJ6gf1zZzxjkh3wLom/4j7105cTd9N9bE+8iXxvOy91aXShnFc
         4nEA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature:delivered-to;
        bh=WOtm+ZI4lEy8zM48PK6hgoRnZrkBic0DUU3tdJgY1d4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=YqtihvtWuOSQ02hHXICNiL2Nnc8rMYVaoO4+K8ucv8xHAkxOn1Wu6paxhOcJw1KD4G
         lkbijMgOudXmJaUfHZMf1n8JAL3lmQL8eosmpuDr8JFgoUZSuCjZ+mYjPiIv4uXwxd2O
         qkNkt86sObScyk+6H9luCOno3EkmocBayW4xb06FySO1W+kx/fCDIqW1ll9SG8RFwvVL
         99xq7Uwb7iNuekK+0ZTz73EYhTEKh9CRIWT2Cbl4UDoHdw+AedT0MEs0cOmUSJ91o72S
         vYwCR9bNOIu15t1uaIYl1LKGpKIUQz60t0FnCe07drC715Ovozli5hqYszGW2NuHuuKF
         ENvg==;
        dara=google.com
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@crosslink.net header.s=zoho header.b=hQoAsCZv;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass fromdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id a1e0cc1a2514c-884d1d7e2a2si3744897241.119.2025.07.03.08.07.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 08:07:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) client-ip=136.143.188.14;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-357-HoxWkAtCOyCqksS06EuSvA-1; Thu,
 03 Jul 2025 11:07:28 -0400
X-MC-Unique: HoxWkAtCOyCqksS06EuSvA-1
X-Mimecast-MFC-AGG-ID: HoxWkAtCOyCqksS06EuSvA_1751555248
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2223A1808985
	for <blinux-list@gapps.redhat.com>; Thu,  3 Jul 2025 15:07:28 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1EC4F18046C5; Thu,  3 Jul 2025 15:07:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1BE581803AFF
	for <blinux-list@redhat.com>; Thu,  3 Jul 2025 15:07:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 62168195FCD2
	for <blinux-list@redhat.com>; Thu,  3 Jul 2025 15:07:27 +0000 (UTC)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751555246;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=WOtm+ZI4lEy8zM48PK6hgoRnZrkBic0DUU3tdJgY1d4=;
	b=OgeVsoOCbw8jWFpTklmI1VkIZSkKG+j53nf99+hULW3u9JU0LEf7mJvIXYqIZPYecnyXWw
	eHNqUQl2ycGgKrglZX8PdAaD1zxhh3baosBOJqC7iNrpxgeMICht+Lx1+PUXvW6BjDps9F
	O3MjIDYYtA0RiJEU4QHS5S5oQIJzh2rRl2jOvI5nOzqfFuAhlTW1FfE5BwelopsfXM0bjq
	RHmXSCvW4DutYIR01TiDZnoUK6z2IzlBolsYw65MTPkQ10Kb76vGCGrtY5Oau2A7Uav1km
	xeWPY7TdUQDY/Rf6ZmZ3XPnsXBeJ2UDqlcFJJhzYGwk1kEyFlEga43eJ0hfiBg==
ARC-Seal: i=2; s=201903; d=dkim.mimecast.com; t=1751555246; a=rsa-sha256;
	cv=pass;
	b=bduPIQAcxllrE1C/3YuJI7B7eigNDH74oFTm6fL9ET9HuJK42yENPkRfGdBfpHBHklHpXE
	7STmUdPfldc5KaLjgIF07ZWJT2f42xU+9GdsGqDxIa9Wz6ciibKDw8Sw7h4KMhuRw73F34
	8tDpU+YjUi7VxRsm3yfSVJEg+hfRCW9tFrJiKXOgWWWNgT9rDUCzjG1HIxUYX1GnDggrVR
	8u9m4fCzFQklyX6Ezg3AWdI1oDtLQ/AjvBX6c0V+yXXVtzyhRu+WmkrXKDCC+fjL4tcZYk
	XwBCQieNv2kv8QCm8IOSR0mhxnDm+RdWqNegSddGvsm9+XbWRuo9+MCgQ52EGQ==
ARC-Authentication-Results: i=2;
	relay.mimecast.com;
	dkim=pass header.d=crosslink.net header.s=zoho header.b=hQoAsCZv;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	dmarc=pass (policy=quarantine) header.from=crosslink.net;
	spf=pass (relay.mimecast.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-182-zG87_L4mPrW8SuvWTyyvuA-1; Thu, 03 Jul 2025 11:07:23 -0400
X-MC-Unique: zG87_L4mPrW8SuvWTyyvuA-1
X-Mimecast-MFC-AGG-ID: zG87_L4mPrW8SuvWTyyvuA_1751555242
ARC-Seal: i=1; a=rsa-sha256; t=1751555241; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Y81t/FtYgwJWYOo/HU63LYBDkQ7OQcrc/FTVPzl8jBsCjXWw0UDfOd40mSx/nqn0FMq8vRJJnJbMRwrAM0R116uLonYVRwOwPOewTS4seB0PeHQgdPu1CHgldJv9nnFRuCEpTtSjqE0YafI8tjs79EAzK9FDg5exBOZm+F6BC7M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1751555241; h=Content-Type:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=WOtm+ZI4lEy8zM48PK6hgoRnZrkBic0DUU3tdJgY1d4=; 
	b=KzakfzGnbSOuhQlwhu7DAeYYVCFCAVpTxkOjkq0+jOi8mAFovG5GyOR/ABaVBrJm2GMcvn4yQqhYv9QkNTewPWPAeo5WGw9zcWKb01iXbHT5mDcqaIoLbL54CwAMqgUWwZ4gvnfcsGLTKoPwHwrOSfeBpM9YXhgbtLSS59jBXQk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=crosslink.net;
	spf=pass  smtp.mailfrom=cstrobel@crosslink.net;
	dmarc=pass header.from=<cstrobel@crosslink.net>
Received: by mx.zohomail.com with SMTPS id 1751555239086324.82478989927824;
	Thu, 3 Jul 2025 08:07:19 -0700 (PDT)
Message-ID: <a19767a7-72fa-4787-9314-5cd927901d63@crosslink.net>
Date: Thu, 3 Jul 2025 11:07:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Seeking Guidance on Switching to Linux for Personal Use
To: blinux-list@redhat.com
References: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
 <eeef70bf-0bf1-4d4a-86c9-da034184c977@BlindHelp.net>
From: "'Chevelle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <eeef70bf-0bf1-4d4a-86c9-da034184c977@BlindHelp.net>
X-ZohoMailClient: External
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jCoMwTJrKJcGuOe39iM5yCklAEF3ZFrgQ55tM_hwna0_1751555242
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative;
 boundary="------------0dKc3ddmfw2UyGSrTqR0rky3"
Content-Language: en-US
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@crosslink.net header.s=zoho header.b=hQoAsCZv;       arc=pass (i=2
 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass
 fromdomain=crosslink.net);       spf=pass (google.com: domain of
 cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Original-From: Chevelle <cstrobel@crosslink.net>
Reply-To: Chevelle <cstrobel@crosslink.net>
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

This is a multi-part message in MIME format.
--------------0dKc3ddmfw2UyGSrTqR0rky3
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Alt-tab still works to change applications.=C2=A0 Control-alt-tab will move=
=20
to the desktop in Mate and also to the top and bottom panel. Windows-e=20
or super-e as Linux calls it will open Caja, which is a file explorer.

See this tutorial

https://en.wikibooks.org/wiki/Using_and_accessing_MATE/MATE_basic_concepts


On 7/3/25 09:12, Abdullah Zubair wrote:
>
> Hi everyone,
> I'm truly grateful to be part of such a welcoming and supportive=20
> family. A big thank you to each one of you for taking the time to=20
> share your experiences and advice, it means a lot!
> *Chime*, Thanks for the kind wishes and for pointing out Debian=E2=80=99s=
=20
> accessible installer.
> *Rudy Vener*, Your workflow with Speakup and MATE really inspired me.
> *Kyle*, Your deep insights into Fedora, Orca, and structural web=20
> navigation were incredibly helpful!
> *John Doe*, I took your advice and started testing with a VM, which=20
> really made things easier.
> *Sathyan*, I=E2=80=99ll definitely be checking out Accessible-Coconut. Th=
ank you!
> Now the exciting part, I=E2=80=99ve already begun!
> I set up a VM using Debian 12 on VMware, and installed it using Orca=20
> right from the boot screen. Installation was smooth, and I initially=20
> chose the GNOME desktop. Orca is up and running post-installation, and=20
> I=E2=80=99ll be trying out MATE next to see which DE suits me better.
> Since I=E2=80=99m coming from a strong Windows background, I=E2=80=99d re=
ally=20
> appreciate some comparative keyboard shortcuts, especially for common=20
> tasks. For example:
> In Windows, I use:
>
>   * Alt + Tab to switch between open apps.
>   * Windows + M or Windows + D to go to desktop.
>   * Windows + E to open File Explorer.
>   * Windows + 1 / 2 / 3 to open pinned taskbar apps.
>
> Can you please help me understand how to do these same tasks in Linux=20
> (GNOME and MATE)?
> I=E2=80=99m especially looking for:
>
>   * Switching between running apps.
>   * Going to the desktop quickly.
>   * Opening the file manager.
>   * Shortcut keys to open specific apps if pinned.
>   * Any GNOME/MATE equivalents of the Windows key combos.
>
> Learning through comparisons really helps me transition more smoothly,=20
> so I=E2=80=99m excited to hear your tips.
> Thanks once again for helping make my Linux journey less scary and=20
> more exciting. Looking forward to learning more from all of you!
> Warm regards,
> *Abdullah Zubair*
> DevOps Engineer | Web Developer
> Pakistan
>
> On 02/07/2025 3:12 am, Abdullah Zubair wrote:
>>
>> Hi everyone,
>> I hope you're all doing well.
>> Let me quickly introduce myself. My name is Abdullah, writing to you=20
>> from Pakistan. I'm 25 years old, and a lifelong technology=20
>> enthusiast. Professionally, I work as a Web Developer and DevOps=20
>> Engineer, so Linux has been part of my daily workflow for quite some=20
>> time, though mostly in a headless, server-side environment.
>> I regularly manage Debian-based LEMP stacks (Linux, NGINX, MariaDB,=20
>> PHP-FPM), handle deployments, maintain Docker containers, and oversee=20
>> several web applications and services. So, I=E2=80=99d consider myself a=
n=20
>> intermediate Linux user in the server context.
>> However, I=E2=80=99ve been a Windows user for over 20 years, from Window=
s 98=20
>> all the way to Windows 10, which I currently use with NVDA 2024.1.2.=20
>> For a long time now, I=E2=80=99ve wanted to transition to Linux for pers=
onal=20
>> desktop use, not just on remote servers.
>> I truly admire Linux for its freedom, flexibility, and licensing=20
>> model, and I feel it's time to make the switch, but I=E2=80=99m aware th=
at as=20
>> a blind user, this change will come with new challenges, especially=20
>> around accessibility, desktop environments, screen readers,=20
>> shortcuts, and overall UX.
>> That brings me to my main reason for reaching out.
>> I=E2=80=99d love some guidance, mentorship, or a roadmap on how to start=
 this=20
>> transition. Specifically:
>>
>>   * Which distro(s) are most accessible for blind users?
>>   * How different is the desktop experience compared to Windows + NVDA?
>>   * Which screen readers or tools should I get familiar with?
>>   * What should I learn first? Are there any key tutorials or
>>     beginner-friendly resources?
>>   * How do you handle common tasks like file management, software
>>     installation, and system settings with a screen reader?
>>   * Any must-know keyboard shortcuts or accessibility hacks?
>>
>> If there are any detailed guides, blog posts, or YouTube videos you=20
>> recommend, I=E2=80=99m all ears. I=E2=80=99m ready to invest the time to=
 learn and=20
>> would really appreciate your help.
>> Looking forward to your kind insights, experiences, and suggestions.=20
>> Thanks in advance for supporting a fellow blind techie!
>> Cheers,
>> Abdullah Zubair
>> Pakistan
>> Web Developer & DevOps Engineer
>> (Blind Linux Enthusiast-in-Transition =F0=9F=98=89)
>>
>> To unsubscribe from this group and stop receiving emails from it,=20
>> send an email to blinux-list+unsubscribe@redhat.com.
> To unsubscribe from this group and stop receiving emails from it, send=20
> an email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--------------0dKc3ddmfw2UyGSrTqR0rky3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Alt-tab still works to change applications.=C2=A0 Control-alt-tab wi=
ll
      move to the desktop in Mate and also to the top and bottom panel.=C2=
=A0
      Windows-e or super-e as Linux calls it will open Caja, which is a
      file explorer.</p>
    <p>See this tutorial</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://en.wikibooks.org/=
wiki/Using_and_accessing_MATE/MATE_basic_concepts">https://en.wikibooks.org=
/wiki/Using_and_accessing_MATE/MATE_basic_concepts</a><br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/3/25 09:12, Abdullah Zubair wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:eeef70bf-0bf1-4d4a-86c9-da034184c977@BlindHelp.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
      <p align=3D"justify"><font face=3D"Calibri">Hi everyone,<br>
          I'm truly grateful to be part of such a welcoming and
          supportive family. A big thank you to each one of you for
          taking the time to share your experiences and advice, it means
          a lot!<br>
          <b>Chime</b>, Thanks for the kind wishes and for pointing out
          Debian=E2=80=99s accessible installer.<br>
          <b>Rudy Vener</b>, Your workflow with Speakup and MATE really
          inspired me.<br>
          <b>Kyle</b>, Your deep insights into Fedora, Orca, and
          structural web navigation were incredibly helpful!<br>
          <b>John Doe</b>, I took your advice and started testing with a
          VM, which really made things easier.<br>
          <b>Sathyan</b>, I=E2=80=99ll definitely be checking out
          Accessible-Coconut. Thank you!<br>
          Now the exciting part, I=E2=80=99ve already begun!<br>
          I set up a VM using Debian 12 on VMware, and installed it
          using Orca right from the boot screen. Installation was
          smooth, and I initially chose the GNOME desktop. Orca is up
          and running post-installation, and I=E2=80=99ll be trying out MAT=
E
          next to see which DE suits me better.<br>
          Since I=E2=80=99m coming from a strong Windows background, I=E2=
=80=99d really
          appreciate some comparative keyboard shortcuts, especially for
          common tasks. For example:<br>
          In Windows, I use:<br>
        </font></p>
      <div align=3D"justify">
        <ul>
          <li><font face=3D"Calibri">Alt + Tab to switch between open
              apps.</font></li>
          <li><font face=3D"Calibri">Windows + M or Windows + D to go to
              desktop.</font></li>
          <li><font face=3D"Calibri">Windows + E to open File Explorer.</fo=
nt></li>
          <li><font face=3D"Calibri">Windows + 1 / 2 / 3 to open pinned
              taskbar apps.</font></li>
        </ul>
      </div>
      <p align=3D"justify"><font face=3D"Calibri">Can you please help me
          understand how to do these same tasks in Linux (GNOME and
          MATE)?<br>
          I=E2=80=99m especially looking for:<br>
        </font></p>
      <div align=3D"justify">
        <ul>
          <li><font face=3D"Calibri">Switching between running apps.</font>=
</li>
          <li><font face=3D"Calibri">Going to the desktop quickly.</font></=
li>
          <li><font face=3D"Calibri">Opening the file manager.</font></li>
          <li><font face=3D"Calibri">Shortcut keys to open specific apps
              if pinned.</font></li>
          <li><font face=3D"Calibri">Any GNOME/MATE equivalents of the
              Windows key combos.</font></li>
        </ul>
      </div>
      <p align=3D"justify"><font face=3D"Calibri">Learning through
          comparisons really helps me transition more smoothly, so I=E2=80=
=99m
          excited to hear your tips.<br>
          Thanks once again for helping make my Linux journey less scary
          and more exciting. Looking forward to learning more from all
          of you!<br>
          Warm regards,<br>
          <b>Abdullah Zubair</b><br>
          DevOps Engineer | Web Developer<br>
          Pakistan</font><br>
      </p>
      <div class=3D"moz-cite-prefix">On 02/07/2025 3:12 am, Abdullah
        Zubair wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net">
        <meta http-equiv=3D"content-type"
          content=3D"text/html; charset=3DUTF-8">
        <p align=3D"justify">Hi everyone,<br>
          I hope you're all doing well.<br>
          Let me quickly introduce myself. My name is Abdullah, writing
          to you from Pakistan. I'm 25 years old, and a lifelong
          technology enthusiast. Professionally, I work as a Web
          Developer and DevOps Engineer, so Linux has been part of my
          daily workflow for quite some time, though mostly in a
          headless, server-side environment.<br>
          I regularly manage Debian-based LEMP stacks (Linux, NGINX,
          MariaDB, PHP-FPM), handle deployments, maintain Docker
          containers, and oversee several web applications and services.
          So, I=E2=80=99d consider myself an intermediate Linux user in the
          server context.<br>
          However, I=E2=80=99ve been a Windows user for over 20 years, from
          Windows 98 all the way to Windows 10, which I currently use
          with NVDA 2024.1.2. For a long time now, I=E2=80=99ve wanted to
          transition to Linux for personal desktop use, not just on
          remote servers.<br>
          I truly admire Linux for its freedom, flexibility, and
          licensing model, and I feel it's time to make the switch, but
          I=E2=80=99m aware that as a blind user, this change will come wit=
h new
          challenges, especially around accessibility, desktop
          environments, screen readers, shortcuts, and overall UX.<br>
          That brings me to my main reason for reaching out.<br>
          I=E2=80=99d love some guidance, mentorship, or a roadmap on how t=
o
          start this transition. Specifically:<br>
        </p>
        <ul>
          <li>Which distro(s) are most accessible for blind users?</li>
          <li>How different is the desktop experience compared to
            Windows + NVDA?</li>
          <li>Which screen readers or tools should I get familiar with?</li=
>
          <li>What should I learn first? Are there any key tutorials or
            beginner-friendly resources?</li>
          <li>How do you handle common tasks like file management,
            software installation, and system settings with a screen
            reader?</li>
          <li>Any must-know keyboard shortcuts or accessibility hacks?</li>
        </ul>
        <p align=3D"justify">If there are any detailed guides, blog posts,
          or YouTube videos you recommend, I=E2=80=99m all ears. I=E2=80=99=
m ready to
          invest the time to learn and would really appreciate your
          help.<br>
          Looking forward to your kind insights, experiences, and
          suggestions. Thanks in advance for supporting a fellow blind
          techie!<br>
          Cheers,<br>
          Abdullah Zubair<br>
          Pakistan<br>
          Web Developer &amp; DevOps Engineer<br>
          (Blind Linux Enthusiast-in-Transition =F0=9F=98=89)<br>
        </p>
        To unsubscribe from this group and stop receiving emails from
        it, send an email to <a
          href=3D"mailto:blinux-list+unsubscribe@redhat.com"
          moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">blinux-l=
ist+unsubscribe@redhat.com</a>.<br>
      </blockquote>
      To unsubscribe from this group and stop receiving emails from it,
      send an email to <a
        href=3D"mailto:blinux-list+unsubscribe@redhat.com"
        moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">blinux-lis=
t+unsubscribe@redhat.com</a>.<br>
    </blockquote>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--------------0dKc3ddmfw2UyGSrTqR0rky3--

