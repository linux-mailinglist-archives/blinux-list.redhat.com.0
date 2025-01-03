Return-Path: <blinux-list+bncBCV3N6GOXMCRBJHL4C5QMGQELEEHAQY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF6BA00E48
	for <lists+blinux-list@lfdr.de>; Fri,  3 Jan 2025 20:08:22 +0100 (CET)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-e3a1bc0c876sf27327343276.1
        for <lists+blinux-list@lfdr.de>; Fri, 03 Jan 2025 11:08:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735931301; cv=pass;
        d=google.com; s=arc-20240605;
        b=jIghemkQNPxFx9NBxorC2rgBFPkONEqqdewoNVHQVhU6NHyL1bxPPucTZPstvIKCd7
         QhaMjXjWZ+ofZAsztaWlt8ktZQM/hCMwFyFQLO9ixssPhotbynVFt2FMS6OJKsH7oD9A
         JR9e3eGBPfM9MajTPYKmVGH9W3qHCgi+rtOAdoNOCp5V/9o6QbSMQLo1SVMMnN7faADN
         zu+VMqbiQdSnMnpOoIcOMOSSgaGZKLMmgZUXL/KTSSd1gu5FZbcd0dOIFBP/qskV6Uzg
         rbPmEM1EE7cRcavqNmoh8/HMuhVKhiMyevn2ggGeeW7WIL0jTbF8Nuwcm9tBJ3Brugl7
         xbWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=lzVO3e2RGDa18EcELrv2uh/7lrSEgSnKJR6Z1vSA5/k=;
        fh=8XCHwcCs+V7LX/syD6IebCMP5p0ebZvxWeIV/frO0RQ=;
        b=LP2H+mgc0J4FZb1aTOPdX74H0ucez2Z0DYmT2+n27iv2EoWjkqNva+x1bAHUCpL8Q/
         ESBQ/DkuhGFrhFoOjMxGcvIQ6FllIied4Um6f2hD64h+D2718wKGhCcesnb+GeJ8t1jP
         nb0eknVZ06Gp8P1mJLv5jhvj70LDjeJ9p+pGiUkGXK/7iXvqDtwKgt7IvVWXk6dXhP6p
         17BPei94B1nKK4lMoUk2rjzt6Um4GZglICYPWqhN3FJUhCHEyrXJDzy2NwQOgsa9Wk8g
         459zLm6SN3ViO9Y+3UkMKlzOaIFVwhhreyvrOliEY7+mlGhVPaogsUtHPRWA3y/DoYou
         EdBw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735931301; x=1736536101;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lzVO3e2RGDa18EcELrv2uh/7lrSEgSnKJR6Z1vSA5/k=;
        b=FF5zV3BLwWAN5y/8gIBfDcINoxmKWmUmBPgNjnmu0jlFF2dTo3YLhQHxTTeKp6UTwO
         F7fD2Lu8euB7722EiY+1o3WkmTHwJKAIqDjQuU8ePljgBjuXzIjIx3ZvQTHfWdAbFZhL
         Ur7h7HNyAYwfJmCVfCDYWA5khuOxOLG2KmMWrxBCu6VIOGYRZgnui+CbmPScMaxbjFSv
         XcLqQF73VlF7IwCld0vT8iUkH2juzff84fqnoU8hFuUMtte0F4Fuex2LDodA91CfurMx
         f76wmzNTNOrq4einYRZdboSACmK81aHmI/GzlgLdOMu8V7qI+8bFT02eDtCLqq0bw4Mw
         Wyvg==
X-Forwarded-Encrypted: i=2; AJvYcCWxVMqBByD6H+qHyEvplRa4f3zRbqIsW2lwB8Ty/lgluyx05n2KbPNeQo5KAGbYg2yoERaneg==@lfdr.de
X-Gm-Message-State: AOJu0YxuPs0vEfX4nVzsSTdPBGlu/L0RsGprTZiQxyPQGyeeBa+RU5ud
	b5HqZZML/P5W1Do0eClXDsnC4CS5HbisvZcKw2suyOlZEBsTU/vvTI2W+uB5UIc=
X-Google-Smtp-Source: AGHT+IHNw8gGWx6Cd/eefWxH/9htm9hn4vJgdDbhJGOY2X+QcrGLXm+xRZruq5FXMX/62/S51WAHaw==
X-Received: by 2002:a05:6902:1896:b0:e44:82ef:3989 with SMTP id 3f1490d57ef6-e538c285bcdmr36578373276.25.1735931300988;
        Fri, 03 Jan 2025 11:08:20 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:b185:0:b0:e53:6434:7805 with SMTP id 3f1490d57ef6-e5376031558ls4150921276.1.-pod-prod-05-us;
 Fri, 03 Jan 2025 11:08:19 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVwtIdr6QwLQkq3YenNYxErXhHBHupXXqVVmAvK2NT4Snc6T1A0K1l9kaiBS0p3oQmX941ijpCMDXqyeQ==@gapps.redhat.com
X-Received: by 2002:a05:6902:1690:b0:e4d:d319:b9d with SMTP id 3f1490d57ef6-e538c25c734mr41379062276.16.1735931299739;
        Fri, 03 Jan 2025 11:08:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735931299; cv=none;
        d=google.com; s=arc-20240605;
        b=GU8jcCgeH/lQencZTomzK8ycnCOs65FvrNULy/OBQwpesxwaspUywjXFhP9b3vzV3s
         98nhSvxY0gq4m7kgVO6eQGRE/Q2XqJRFlpYu0IS0k0M9pk0kT4qTVRtJ6GPyby36QIYz
         c1TYSGvwOR3aLVFIKL9pxq2HArK95Bz+24tw0WbMZ0OU7G7VKm83zqXO3er6veg+JBEP
         FkY2pMoRBrgHPkMV+hUbDxePStKk1plk6NkpCC7isPdxsXlF2Ou4y0HqjlXIoUG6f0Vs
         QJPoXK9udxkHYVvOTHgObMMfuLacQl2y7QjBeHmpVZDtSbl6bnTTBTNR/2+ldKHxbfXS
         oAVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Z4TwJ2TBVPkZ3IwGb7+ifJqUHk8hS9psUHDQsjUrY7Y=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=gt5e00bdbm/geB0mra8i0kkkkY0omEbqDyq88tNEHKJoZDUlO/Z/SsD7YiMqMNZAgZ
         6KQEpSzivaERjBhwhTWjtNjfUFMpedtJsk8N2BqxhfD5NFkAXoNjq5+USSx35S7RhTLa
         pmyC2cyM+1iLQXCwWg6pBTQaR4T+5lHPLAzcZAxvt7WtK3pSlcl5Q0WFlY0dbUgFOjHU
         tYbAFr20oIs3zvj4Cmoj0llIaP7Uw0XPP4kMzQ7ZbAYhe6KuJnMoRc+wXSvL5/YlLxo+
         oYMvEmYUeTGOdZIcfnikb9I+nNF22aPjXi5hUfK3FBst4oaIenD/VYBzAzOwr8jAbXg/
         +JVw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e537cbe6c95si16764152276.89.2025.01.03.11.08.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 11:08:19 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-130-dMfdD3XaPTWJ7Meaf96zgA-1; Fri,
 03 Jan 2025 14:08:18 -0500
X-MC-Unique: dMfdD3XaPTWJ7Meaf96zgA-1
X-Mimecast-MFC-AGG-ID: dMfdD3XaPTWJ7Meaf96zgA
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2AF631956088
	for <blinux-list@gapps.redhat.com>; Fri,  3 Jan 2025 19:08:17 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 24F3C1955F54; Fri,  3 Jan 2025 19:08:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2229F1955F43
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 19:08:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B4037195608C
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 19:08:16 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-281-0AII6wO1OryQwvMJAVUd-Q-1; Fri,
 03 Jan 2025 14:08:14 -0500
X-MC-Unique: 0AII6wO1OryQwvMJAVUd-Q-1
X-Mimecast-MFC-AGG-ID: 0AII6wO1OryQwvMJAVUd-Q
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.47.142.229]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MBDnC-1tKPXl08Gk-00BwWp for
 <blinux-list@redhat.com>; Fri, 03 Jan 2025 20:03:11 +0100
Message-ID: <1d3f57b7-ffc9-478b-b81b-8cd3cd946cf1@gmx.it>
Date: Fri, 3 Jan 2025 14:03:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: k d e desktops and accessibility
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7C381AEC-6E41-40CE-B939-087D307EC20B@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <7C381AEC-6E41-40CE-B939-087D307EC20B@gmail.com>
X-Provags-ID: V03:K1:JznGE+Oh4BH7krDkUehL5eowRNEofLTfZ7YBJZeYHD8dTfU5K7r
 Os3CGCOlJ7FVKUCdQ5WPeOc88lBp55ISH+dahTCCCP0OQGvqSzKeSroyCBbfJG6wN9QoF5Q
 MQzCtDIkP6Ria6ro4qMbcT2mENysIrQRQhMGMu+AFM+aH9ysHSyQ+VD8x/ByVK6RhMAf6kl
 R8fo/ZrYrhX8yuwZgusOg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:8+BUPpYBSrM=;bVJTTl7NpCxBmjmDtKrxmghodvs
 QiEseEGbfkS2rPfaBmOJNouON1fXp/im4VsRoC9LkZJMdYgX8aSdNIMJH1Q2r0kD1UZvDbfNR
 5zxs1JZe0RwcQ4XwxAe/KUpoopCI4ae18srplNLmPk2UiOaWSugdf3eFtpZKGP3+i2z9Iii8m
 /wtJGFT1KDDswI5ahPdbmUQwmrpWfCodY1HicbBhJjfZej7O8Br6Ch/G8nxoJJ/f21WWE6oGC
 1TkG96OC81B4Rt+0zUVh4hTJbHn4GK9OsizMCUv/QOb17Uh8eIlzaRS0q6qRr5o5Ch13miPfb
 BMLzTebkt1I/svhLmpDSEfXoC2I8gSgSVxIeilIS3bE7CKTkqiDdcD7JZKghjvYzTfB16D+4D
 0heefJpvO+agSI0eM/D7uPv9dqKA5FMYLlFayHsxzMgHrknSWtyYGEGKahBSJp4BOpjzyfjz/
 JxoAeTtKHHReQQuziIpKWCdCbImmP4Fclcs3zpK4cGnH5lgV9sjhLAPXMVp8H/hUcB9vy3xO1
 sstjaPd+cafsVwNRIrZ1DH9kYd3TJaF6N33cEz/BmfV1BtIXDoGarcV7Stt2JVgpYMGu9Aoza
 K8IoabVWLmhtyek39PyqWpzeNCSYffEsnKCpbCQxqw6kHwCUBJB4htOv+gfQCCumN366oO+Oq
 cOu6o+k6VJP9JxOR1pL5gQlfn2UFLxfeqD+mCGL5dWm17ZQ40D0oujqs20Iun502fhX7nALk8
 yb9KVMFiPEeKxQZMSFP31TjqlYQPus56LDrpPcoSuZhbSusm9aONVUOcH8up7A8fGsY7CGVFz
 ZwUy9xpCOwX1piZ5paRu5bmRssTVSFCtJe5wKGKJ7XdOeIf1ovHw/jKLqP8ZbMbyD4WtCyxL7
 yoZ20VhKdxWdiLuoH0A9n0uNo/xdU6cEeqQ6sew7sCaSeBXG94X4rlAraJ81m8tMeVJsQRcKa
 l/mNPQOqgnc79mo6W1VbySXxlzsjRpGf428EnOWGRqlXXzhRggG9Le2kMgbNGPQKK0HH+MmKV
 M4pLm5p82Y98UAxlISWYDIMsSUSQusqafylICShViJ5D5Zzv5mxlLZsuQH+llz61C3KQQHNQg
 A2szrpOpRZc87DvfFEIujVuvLlTKdt
X-Mimecast-MFC-PROC-ID: V0kaZLUlDSfZfWldN-mudQ610EBxBfhiH1XHAgmU62s_1735931293
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8rkWNw1KtfXn4d-JIjRO4lquMp5z6Hcs4hLCh-wYhVs_1735931297
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

The preference of one desktop over another is usually based primarily on
personal preference, even non-visual. Just as an example, I prefer the
MATE interface, its menu systems and panels and its desktop icons for
mounts and such by default over GNOME's blank look and having to enable
icons through the tweaks tool. Others prefer the way one desktop handles
sound theming and other more advanced things than another does. Still
others don't want a full desktop at all, preferring a simple window
manager and an accessible launcher or menu instead, e.g.
Ratpoison+Strychnine and I3+i38.


Accessibility is certainly the biggest consideration here. As of now,
the KDE Plasma desktop still has some pretty nasty bugs that made it
somewhat less than usable for me when I tried it a couple of months ago.
But since accessibility, primarily as it relates to the Orca screen
reader, is at the top of the list on their I believe 3-year plan, we can
expect to see some major improvements in the near future.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

