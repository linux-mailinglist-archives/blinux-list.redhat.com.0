Return-Path: <blinux-list+bncBDGI3AUYYYCBBZN4UG5QMGQEHUZ772Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD0F9FA796
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 19:45:59 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6e1b036e9sf342669585a.1
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 10:45:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734893158; cv=pass;
        d=google.com; s=arc-20240605;
        b=K+7Yq+AkNGnoOM2J1QvDgLuoH35nrhDsME8M5OiWny6fWKtyxVz6JxCTsLKOJXZzB2
         zeP2yiyWP/24j9AAaP6de93yeBlnnrYlNPmp5DUdhzZc45gtcIgRdTmCfr6jyG4ZBKSG
         tTEUYo4Y0jtoBgYKHYkWfd5UBCaWGPPxjmEFGMBKgtm0/KuAMT3Dn85M0NDesL7JnxZJ
         TYA2mvrTutX0LrhWaVDp962/mNqECWFb9sfNaPf9GHPckoXeolzH3dMcgG8z+87oClTF
         /jo0VpXMwNOctuq5VEN4w7iujyNcFGUEjEzUPE+mJ3odyE6pUbrBp/pAJFJPZk3CJVtO
         QOOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=n3yV9DT1F6ykY4HUuYZciUWpKgVwQp0uWjEGd+N/OM4=;
        fh=gNTLh3PXKsa+azJ3DlWfOG1mZqDmMJUl2lt/CV9inqA=;
        b=TMl57OVZL19i/LdCueh9dJ1aIe7VWeeWeRjtJy49wwWHZPAtWkkfVIe3n00i7IuRAA
         O70W0I14K1S505FOWlae7A+/3NxPA3ea1huykJBBNXzdIZbFwmfHKrWfScaDthBa30WI
         hhDg4QochEAL9sYk7d6d4JAdSYYNRCTG/lo/LIboiMJHw6mvD4kviUKqcy7k3/wzz4oU
         4hZPrcbtYKHBCwyfzK7w5rGMfCoybflW7Si2Y8JtdwdgM68ySiWQLNVDlxnQxB0oJjEv
         MySTcxrAROv7QM52+kcn8UoWv7fUJKLwge8j3ZCox9PaC8UVSd22Ef1nSJKFgtxpL3gJ
         FDsw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734893158; x=1735497958;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n3yV9DT1F6ykY4HUuYZciUWpKgVwQp0uWjEGd+N/OM4=;
        b=QcZN9mDPRHc9Y6vtMYeoyu8a2f1ORty/xfY1YgF42Sx58Xog5VI9G8Xr6z4NnP5hrX
         q+kYjxU9elTzeDeZ/nvzWfLT1Cg2Ek5ish/6GapwzJLH/TlZ5Sr0nzw5Z4VLNSI0EWG1
         xEd8VnB/oeyL+YT++59ClYumR15RSovirucxwwqGcqeILAJkg4dOC4VqU6Y7sR5XBHui
         K9WKHqyH++/s19p5a0nKIprVimGMWgWmmMuifxQKxpuXTbpy/Kt/SLC3IpdGnOOFDrnP
         00liYrBaDTdQ4FJX76Jqk06VfPwoZqgkhrwVoZzxP+w5iMyB1oIASfwHNRbv/S2j6Q+L
         W+Vw==
X-Forwarded-Encrypted: i=2; AJvYcCXErd7PQ1dubXwpF5kCSLra2fWuyXEm3UhejMQE5NDT+6iEv1UyUNnuWI0kufl3oRo0ApSLGw==@lfdr.de
X-Gm-Message-State: AOJu0YxewkHEOdJcMYm7JKqS7/Eelp6aQhXSMHAIEZ03+fdR/Lu2cLdh
	uQghNYu1eT7zIc4qn65+jHjXrsJIzGBxPyat+rfIy4/r2j7UNy4OTWAZokd40xk=
X-Google-Smtp-Source: AGHT+IGskz9MqAWTMUJoA8PubBmWD/1c1xe++wqxNdiBNRMDV5mM1cKsuawrlGJHBQIw233AREYDPw==
X-Received: by 2002:a05:620a:3913:b0:7b6:d710:228c with SMTP id af79cd13be357-7b9ba79e139mr1737151085a.31.1734893157958;
        Sun, 22 Dec 2024 10:45:57 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5205:0:b0:466:ac8d:733d with SMTP id d75a77b69052e-46a3b05aebcls49175101cf.0.-pod-prod-08-us;
 Sun, 22 Dec 2024 10:45:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWHQGShRhnp+1Xi3CekFdH7VWKnpgN2NqYrugXsAdDHjBMB67RGgHt4kfPdFIH3DGTTNz2svNToL7QVEQ==@gapps.redhat.com
X-Received: by 2002:ac8:5810:0:b0:467:706f:14b7 with SMTP id d75a77b69052e-46a4a8ebed0mr160490071cf.30.1734893157152;
        Sun, 22 Dec 2024 10:45:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734893157; cv=none;
        d=google.com; s=arc-20240605;
        b=cu1jeMrS6Q6shUbKE84QpVaYK4BkMnzCD0tW/ck4fh+aCwIZ4nAA1I6MFtm25ohW8e
         F0y3pIUeXMnO5rCWPrPTNX6Tz27CvI+ZTvJr9FD3pbcPCaf6XRP2j1CyKwDwyJHkhBTj
         8Z02KU2IQN6eA4L4Z6lr2gshcE/FT8mPWzAmr03qpYJ9A3I+H9fpxQFLsoRZhoeDQ/TV
         dvwJcGx+l8KzIHDk4x7hcORsjVPyEy89eX1b26Yjk0/M+DVCQnCT/kh9LdzmZlHZzSsC
         GSiCGjWNoQPujKMfrrPK2YHkGrDCeI6wA0P9gYV2LUfqxDhoJyAdSHMEU2rhwfdAxFk2
         snAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=uXWjAAtN7n9Mlus79Y+vwTWxtM4otX04Z+sa/36A+2Y=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=LwoE/6KfSIRzn+mYEOaQ8qxnO5puwSdz7PKWVOyAaYEAhQBe9SIhsfTfIEC0n2+64F
         qCx1RC8dgL2GpJbqBF9rS7DLGhdrpeaBTr21QNK2fG6F1tBM39zlWBBsRPvRxZbvL5EU
         5Ud75j2ddna+meZbVjdfeOahTV31sdlcHb+Yiyy/GP++6CRKsGtLVncZRrzINzKV1m+N
         wvLUl4Z4UOfHJIRw00Lrkpwr0kn+pOBRc/SygxGbPzgBPZV7R8jrqzmV08ovVUjUZ3B5
         5JAGg3DwHffMm3mbFqTph1e9wAEoSvpUZy+LV9Dz0DR3x0AFnw8jiFAUo/BruTEb9X15
         tu+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ebd680bsi99670761cf.514.2024.12.22.10.45.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 10:45:57 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) client-ip=166.84.1.75;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-262-FCmrCcyHPT6hGb2eYWr8tg-1; Sun,
 22 Dec 2024 13:45:55 -0500
X-MC-Unique: FCmrCcyHPT6hGb2eYWr8tg-1
X-Mimecast-MFC-AGG-ID: FCmrCcyHPT6hGb2eYWr8tg
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D738A195608C
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 18:45:54 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CED0C19560A3; Sun, 22 Dec 2024 18:45:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CC61319560A2
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:45:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4B4E21956088
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:45:54 +0000 (UTC)
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-538-fnwvmSwwNvuNJTQDLQg2FQ-1; Sun,
 22 Dec 2024 13:45:51 -0500
X-MC-Unique: fnwvmSwwNvuNJTQDLQg2FQ-1
X-Mimecast-MFC-AGG-ID: fnwvmSwwNvuNJTQDLQg2FQ
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (1024 bits) server-digest SHA256)
	(No client certificate requested)
	by l2mail1.panix.com (Postfix) with ESMTPS id 4YGV4z3299zDR8
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 13:27:47 -0500 (EST)
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YGV4y6k5Vz4GX3
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 13:27:46 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YGV4y6RRZzfYm; Sun, 22 Dec 2024 13:27:46 -0500 (EST)
Date: Sun, 22 Dec 2024 13:27:46 -0500
From: Rudy Vener <salt@panix.com>
To: blinux-list@redhat.com
Subject: Re: youtube issues
Message-ID: <Z2haInMLi9tm7Fjy@panix.com>
References: <Z2hB3hnS-T8uW2DC@panix.com>
 <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi>
 <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com>
X-Mimecast-MFC-PROC-ID: aN_KOUG-dH43JbMKEU7F0wZqCuUiLzCZGEVQJZP1feE_1734893151
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4c85N2KWb0ZLvRmA5-xjxSSliCSd4TjyO6vj74VGnEo_1734893155
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
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

I just listened to a few youtube clips using
a script that downloads the audio with yt-dlp to a wave file and plays it with
mplayer.
All is working well at present.

On Sun, Dec 22, 2024 at 10:12:13AM -0800, Chime Hart wrote:
> Well, thank you Elias, I downloaded-and-installed a Debian version, but I
> get a seg falt when running it. Makes some reference to x11.
> Chime
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Fulton Fani Falls In Flames https://limerickdude.substack.com/p/fulton-fani-falls-in-flames
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

