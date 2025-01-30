Return-Path: <blinux-list+bncBCD3RKH4ZIBBBQ5O566AMGQEFNV2W4A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 35ACAA234CB
	for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 20:47:18 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8f6903d2esf22594626d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 11:47:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738266437; cv=pass;
        d=google.com; s=arc-20240605;
        b=lQ7J9pN+lUQpKRxNPLi1Ov+FpDhi+88M9zehtU6PW7KIGRQPYsU791nN8xab/5tYXI
         XLh0U+SeqdXXbsZmLMuW4p38Bqu5BV+LTJzUjgPbcbJ4K6S/1CXFHLoDOZu+rysWJhrg
         rtHpWt13LrHU3CujO/1LBksoKqtzp2kDNEJ3+DGDA91Qp+WyaUVqt7nYU60ta//LLbly
         H7gGACgbaCoEF+EBTnBOFHBpVvFs35cNFKRJ5QlBwSrS/G4DQwQVFz0WuQgedz8Eogyq
         ZPPGiQqdvlXVZH2HqFDfaSTccGCFgB0deo8AcnN0i4VGXeUDPRK4XeGhi1Vw9fpJ0Uhb
         ur8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=ux0FrO0x+KUhJZpClzS0dZVpueeQOCrjQ0TuZRqw1Lg=;
        fh=Qw8K92q2JmstAWlVphrvlAemCkS5DmX9w+HBtZ8NNw0=;
        b=ZrrRqmpg09vdu92XDpp2vIaZQWAOuE8lQ3n35l3rmKBes63AC0VysI1/piCmdi+tXV
         aU36IWe99bOL+yTRpSj1WF2y6kljRD5HpKsGyR/8tFLp3OpRyIPbJg/XMpbcqr6y9x8q
         E1KQNSqOBSaHQVUx34IEMDjPtl/UObA6xWonDFd8CXCB1Qlx/0iKwz4Io5PWF/8nDs5U
         9mB68DAvmCBpgvFSwsKpv8yRTgs40XCOHkJlaPsG4Fbp9RYntq5NDdTMA/a5GByogrFW
         LfQkEBQ73UwekfKsXwxUEedPTeiAYEqlOL+zHeC8qUqDcnGYnLqXZxPgNApRBYDKtqn8
         Ylog==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.48 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738266437; x=1738871237;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ux0FrO0x+KUhJZpClzS0dZVpueeQOCrjQ0TuZRqw1Lg=;
        b=SItgYqRjTPjhMS5R6XE3bionegnTh1vLpv8YSeYXeCRWzI3s956lMifEsXD4aqUKfc
         6pyg2DfTKSM4uARj8I6ppm5PB7O0FPy1zanRi6uHGZVvMxLBMvnOSGLBbHLM0gv3Q3TV
         6Fy8tlSqY5Fj/2cCv+XB3xwGuQp1U72K18shHfDnJRTTj0t0CmPqaUhOEu4kAoEPlJmb
         eAfxMRy8qx7qxFF0tuevFeLXpBXYqID5yXBd6KKFkDh0Th7sVTjtPALM5stsf7/6J7pb
         +u2f6Yd6kAOWE7eBfMPe+1nk4K5aNBrz9duAJVlT9cj0JXSTk21PVNE3JXxf6dllYdiA
         193A==
X-Forwarded-Encrypted: i=2; AJvYcCU7Xcae8HmwyTvXRyZNkoM7KDMG1wHxEsiyK+NFhygy9MlkBgHn4C1Q464BPPlpy4wYFLYTAw==@lfdr.de
X-Gm-Message-State: AOJu0YwG4+K9J2NcQiHYGIFgxcj3FT+KEurVQ8EnBNQ4lBexV55PZf1j
	xvSvtiOHBbJT3xEyfzwml+z1WZc+c8EfUQ3zsze+5BVlTHkHoxcU6UtMzkzXPWU=
X-Google-Smtp-Source: AGHT+IEoEm9AokZvBpyGzAFvKzAsqXh5JTaP5pTDqjOGswc7lxsaR1zfZRDJDtvN4NkhWqa+1lwmAA==
X-Received: by 2002:a05:6214:19c4:b0:6d8:8b9d:1502 with SMTP id 6a1803df08f44-6e243c648b9mr98559146d6.30.1738266436471;
        Thu, 30 Jan 2025 11:47:16 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2e48:b0:6d8:89a6:8447 with SMTP id
 6a1803df08f44-6e253e3d45fls1519316d6.0.-pod-prod-02-us; Thu, 30 Jan 2025
 11:47:15 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWniwHGxU/Xs6LcIJ7yrfKzxOWxQDXO/nqU+3L9vwZ21/oPzhUfjaLZXXNBa46F4Hl9uP/xLceQru0GCw==@gapps.redhat.com
X-Received: by 2002:a05:620a:278f:b0:7b6:d58b:9de5 with SMTP id af79cd13be357-7bffcd14cc8mr1411583485a.13.1738266435262;
        Thu, 30 Jan 2025 11:47:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738266435; cv=none;
        d=google.com; s=arc-20240605;
        b=IY3UTWDfxuLFfg+P79wY9L6r/2hmcPtefLKxhqQN+qlx0DvHHMcq9MrmfojJGgnt7B
         a8OlKY2+4Qg6GAFLvKdi7LZsmFlGRocMTOqx0RMbGDkXajp8vdJtWW/yXeFeCxsGFNvW
         KkNf+e4DD016xBHR8krHFmm8cFU4hDz4tmvvworhHMdbaIOQKToL0u307GqQ1/qYkVYq
         aKrSvzsRSDZI4xdtpGTSHpQkxqtsK9xFkNSHNKZV6szLuxky0fmIj5cAYzLeIxz7s/na
         /MSjyl/qCyNHWixrihEunmLGCkAuha1F2vTp6WOgR/2p4TWETO9ny0mTgk00k61nFJ5d
         wRWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=brppFW3RTzRPdpha/IX86LeF5umriFCee6ArOgjpFyw=;
        fh=Q+Y7lzGrST/xRvqosv865ng+8A0+Zmkmf47hszPju8s=;
        b=RPqbu1IhD7DJpOt2tKrsFE6wAbDKSIsqgzjX078a0ieIN/EACUTOLtEIYzr1vz/2XW
         X/qR9F9blX59xuhum/5EI6NHYQDvEBBsqThTrHA4PyMxsdskom09HBdWjuPMJ0oZKDjc
         qTtly4E6CAT5pzZonDVr72PN4plI06OlZSuqAAQLB5Zv8tmZJ05QZJ8DMKAFQL7bq6Tj
         B8ICVw/qYApH8cc1/uiI/e7GJV/Wj5v0ugiM/50iB0N1t555XT5/KIQRcqIbn8EGZLTV
         n1jwvaLP+sSTjVJ7VJyIFdF9hye/3Yoc875zEdCjwMShxewyYvXopPaYEWPY5Uh02BeQ
         X1uw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.48 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7c00a8d6436si224068085a.141.2025.01.30.11.47.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 11:47:15 -0800 (PST)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.48 as permitted sender) client-ip=209.85.208.48;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-364-hD4SUzLtPrm-YGIFXXNuqA-1; Thu,
 30 Jan 2025 14:47:13 -0500
X-MC-Unique: hD4SUzLtPrm-YGIFXXNuqA-1
X-Mimecast-MFC-AGG-ID: hD4SUzLtPrm-YGIFXXNuqA
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CC7CB19560B4
	for <blinux-list@gapps.redhat.com>; Thu, 30 Jan 2025 19:47:12 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C6EA118008E8; Thu, 30 Jan 2025 19:47:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C3D821800358
	for <blinux-list@redhat.com>; Thu, 30 Jan 2025 19:47:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3B1771801F15
	for <blinux-list@redhat.com>; Thu, 30 Jan 2025 19:47:12 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-41-eWRNVSbBNB2evAyN8co70A-1; Thu, 30 Jan 2025 14:47:09 -0500
X-MC-Unique: eWRNVSbBNB2evAyN8co70A-1
X-Mimecast-MFC-AGG-ID: eWRNVSbBNB2evAyN8co70A
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d3f65844deso2101202a12.0
        for <blinux-list@redhat.com>; Thu, 30 Jan 2025 11:47:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVzNPu1QAi5l12mfw+X3qs6lPXpHw6IskBDpWaP0bMqmE/hXoJIZbwJ5O0cH98zMrswsmVliZIOvn2VfQ==@redhat.com
X-Gm-Gg: ASbGncsePpg3vY7pD58dEDW9Dx2sAYEv0nuvmEZxGhqgnHln69lTi87UPBcGd0nNG5S
	CX6XTr363Yy6d2XxGI7n3PSi3XE42YObuuQRpmTI0ZwrQXf/0u1RFNwOOXQO3ZdcuJjFuDLUcJE
	4fnnFEJmoY50MPBsRX6Y7hzF7cDRX+4g==
X-Received: by 2002:a17:906:478a:b0:aa6:7df0:b17a with SMTP id
 a640c23a62f3a-ab6cfd0973fmr810712566b.34.1738266427743; Thu, 30 Jan 2025
 11:47:07 -0800 (PST)
MIME-Version: 1.0
References: <E1tcsd6-000YH1-1N@wb5agz> <CO6PR18MB44191CF4BEB8CE9214BFD620C7EE2@CO6PR18MB4419.namprd18.prod.outlook.com>
 <742860A5-86AC-4976-8B82-8E2C87DA017E@outlook.com> <DM8PR18MB44214CA8D328FA22FB5C7C14C7E92@DM8PR18MB4421.namprd18.prod.outlook.com>
In-Reply-To: <DM8PR18MB44214CA8D328FA22FB5C7C14C7E92@DM8PR18MB4421.namprd18.prod.outlook.com>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Thu, 30 Jan 2025 19:48:17 +0000
X-Gm-Features: AWEUYZkbGW2V_0waSmVBgNw9DofwUpAZeFF2CJlGIt-oA7fsR9C6d-JMik-eBHo
Message-ID: <CAO2sX30Yn0D_tduOohn2MjfWrsYJJPpivTHgOsrHFPKeZszzMw@mail.gmail.com>
Subject: Re: Control-Alt-F1 What is it?
To: "cstrobel crosslink.net" <cstrobel@crosslink.net>
Cc: matthew dyer <ilovecountrymusic483@outlook.com>, 
	Martin McCormick <martin.m@suddenlink.net>, Blind Linux <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: okzrRhO6kVtmQ2Xfwcri8kkUXH0Bt2lncx-d1H7iISs_1738266428
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jQeDl4sp4PHZQQwzJYNhquX4Ldw1g9m33sStVUtrHOQ_1738266432
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000f36423062cf1b08e"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.208.48 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

--000000000000f36423062cf1b08e
Content-Type: text/plain; charset="UTF-8"

I'm running Debian Testing/Trixie and have Orca and espeakup playing nice
with each other.

That said, I picked LXDE at the install additional software step of the
Debian Netinst, which defaults to pulseaudio for sound, and I have to run
the configure pulse scripts provided by Fenrir to get espeakup and Orca
playing nice. On a completely clean install, I get Orca in the desktop, but
the consoles are silent, and without those config pulse scripts, the only
way I've managed to get espeakup talking is either not installing a DE or
doing something that breaks my graphical session.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000f36423062cf1b08e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m running Debian Testing/Trixie and have Orca a=
nd espeakup playing nice with each other.</div><div><br></div><div>That sai=
d, I picked LXDE at the install additional software step of the Debian Neti=
nst, which defaults to pulseaudio for sound, and I have to run the configur=
e pulse scripts provided by Fenrir to get espeakup and Orca playing nice. O=
n a completely clean install, I get Orca in the desktop, but the consoles a=
re silent, and without those config pulse scripts, the only way I&#39;ve ma=
naged to get espeakup talking is either not installing a DE or doing someth=
ing that breaks my graphical session.<br></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000f36423062cf1b08e--

