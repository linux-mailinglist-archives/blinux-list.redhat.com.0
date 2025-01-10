Return-Path: <blinux-list+bncBC4KRXEWRQERBCNAQ26AMGQEIDTNUXA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id C96F4A09D28
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 22:24:27 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6dd43b16631sf31506856d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 13:24:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736544267; cv=pass;
        d=google.com; s=arc-20240605;
        b=CxIhB3oXdH1bjzxAxUn2iE8IavlWGlyCTgflmXs6NqPnHfsxDMPnCpAq9Q5+j0Gezh
         CF8LewnM/subNfd9iTEeJVihkGIhv/Q3acG9+Wm3NQbrJTuSxYCx59ZjubDbE/yvJvD9
         +MRhb+iPGcHFT47SgFToQGjqg7qc2wio8diRLvjUZRX7vA1f8B0SZYj0M8fJXBsbIPDd
         7mgx+wcowtLOvlgB5Wibqmf//7c01DM3VFzvebZr8sdnYTnI7eo4wJd43Ga5fSw1Z1n0
         U2gY+mr+XqipYh8lPWxC2jxs1zJ4eGxJpB5mOhQA8rMxnDZS0EkAL/5arwrMKq9QfFPN
         7IjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-filter:delivered-to;
        bh=9Z680tBXgbYIuktDuIEWRT6YwnRXQgVcL+dkbshoX8U=;
        fh=Yp2t0OoGyZzSxtu4Y5nkT7mfrhflC+bhNUuE6ygd9Kw=;
        b=aMAMk/09zQtZD6BgL/c2I1UL2KFWYOvJ/aLjC+BRF84teXvODxZWpuhN4bsMazDntO
         EO7KLIHkRFYaPL0aInAyKesLqSnmBwLh6FoYnv6Pp7wfXtKkRZZRhyMFa8pDi0edOFqp
         hLfp32ooFZHLAmQirdEDHVZS3bwo2qzp9Gqzs+OIY9Qqkf2JljRTBAmWyheOseEEpvTW
         tqsnNwxW0Q43IgqXbBkgxpbRRl5SAZNkA9BP/3lmsH+75bNVO7bv+uU5pWqYK4kVD0jW
         hWawXllvTE/NQl7Zj4EVUbhF0/zX0rYHAcVNn0lr0RdmxuXzv4RKl+8vkTxPdiJt8TZ9
         fKLg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736544267; x=1737149067;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-filter:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Z680tBXgbYIuktDuIEWRT6YwnRXQgVcL+dkbshoX8U=;
        b=Gy6dzSZlwSz4P9z4WuBrbCFggddyfv0ogeAsEruiCD9wEsKFSBgl2V10Dq7tU0Ht3c
         kE5cD6iSC2FE3k+fTXZDD7hczSj37ArdU1eCMDallzcUto//UdNuKnzVbJc/GqWoU1xA
         Rd2eG68JlC6rVJ3IFlUJIx1n7n+uq2PoAnPDDPkTu9HVJCabzYzjUMVlWf9QzwWlK3az
         jz7WG7QAeiByPcY7JfYF2jm0PEcewICI2EsExgJbFaP8S8g2Um3eB5AVCf5zxVqMfDdy
         RvoxlIZxWzYSwCIX0w8UE+3nDEA58d+PTTQDgCHOfALoLWwTIFly3XpG2NbhVTys3Lst
         uD7g==
X-Forwarded-Encrypted: i=2; AJvYcCV69cz0O+511I4hTV92iele/uynRLrZBVo3aeNvjcgptpOSPraPhuQnUeK7M+0inUr60JiphQ==@lfdr.de
X-Gm-Message-State: AOJu0Yy2OGOQd29BcYc9QZmWjP9Vld3koL2i7Cvg6qHMA9Pz61tKEytH
	K1R0SNbgdX2JcOx0LrV9jDFWxdQSjoyPD0swQD2rUQ6mrM4K6/XlvwLFrKG7P1w=
X-Google-Smtp-Source: AGHT+IGbk/G+nwMXs67vOPJ2eThQVjcVPBMLyY+M2RTySB4B8rdzrsbylH4aHfj+3xUGRkRPtoTOvA==
X-Received: by 2002:a05:6214:624:b0:6d4:b1e:5418 with SMTP id 6a1803df08f44-6df9b2d388dmr204336356d6.33.1736544266254;
        Fri, 10 Jan 2025 13:24:26 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:570e:b0:6d8:f050:cdf8 with SMTP id
 6a1803df08f44-6dfa37d63c0ls30330486d6.1.-pod-prod-08-us; Fri, 10 Jan 2025
 13:24:25 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVCEyACCavS0kVXmfJPm+m0f1v1Ht+f7zoPXow7slpTujMtyzqrSq7WAzeMwI4L0Eo1/hYNt565Qic52g==@gapps.redhat.com
X-Received: by 2002:a05:620a:1a83:b0:7b6:6ee8:6c03 with SMTP id af79cd13be357-7bcd97aecd0mr1817694785a.58.1736544265300;
        Fri, 10 Jan 2025 13:24:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736544265; cv=none;
        d=google.com; s=arc-20240605;
        b=BMVIivLPZAo3Kd368ZcQXV7U/uREi9hxbFeLb4Q2xYZ/Tpsi0e7rg41OZSwhNqfyeW
         1WjP5Aa/xs+p1YLrMaRl1MB4djQKXwfkzleqFPfCgba61eIZSXlHMIid2xl50yqW9Icx
         eDtVoYJ7ANWFFKPDULtpJIxs/sQ7W1U+hX2VDYm4cAIhWip1EZxAMr84jbY7Z1GNeGFY
         HjTOLFI9pm4OxnENSLFlcQS99Wjm7I5HumtecBzDbT+GL+gnRRAKJuiIhgePn7fj37rc
         vbLJAxJ12Q9p2T4lGoxohaIVR5TeXlJowameTpr5mbmMb3nsHsqvKMJ0PUSwZXy/4lh1
         n71A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-filter:delivered-to;
        bh=XIPVemeIXAslLm3J/7mDi5l3HuKh3uxrfc4yZEwWvtk=;
        fh=m2zRATmuTZicRuRKbOizvemJmM3yCQdFuJdmCkkgYGs=;
        b=fudI0cVeaCNnq3+t18fYa7bZWTfQAB20D4j20zkvHutBibQ3NFGX46FtNOjDSh+H1B
         6HNO8bwDWelUmsOHLnaAZmHsDA5oL/HW8ec0ovmzTzIQbGh22XyuRDQ7TtPIsa6FduxI
         1UjtNATf1IMZgzlvoa1peYV/KLEg/m6lkycSZ+a3p0wMy74fgMJwR8iXVeZCURGNAlZM
         /ep16SUb7545nf9uArTj/m8BnXB0NUCu0HHzZ9rt5SghLwElDjLuoc9gW7J9jb73DriK
         XF0mUdjpoe8f14x3puVqkTLZHIhhsXDHWXvzu/+bMCmNI1BlqVz9GODCohBHb/z6PUZD
         E2Zg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7bce34fe8f9si525102085a.489.2025.01.10.13.24.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 13:24:25 -0800 (PST)
Received-SPF: pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) client-ip=185.181.61.11;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-416-qGlfz1vZNtSoi_7GrmWvPw-1; Fri,
 10 Jan 2025 16:24:24 -0500
X-MC-Unique: qGlfz1vZNtSoi_7GrmWvPw-1
X-Mimecast-MFC-AGG-ID: qGlfz1vZNtSoi_7GrmWvPw
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3608F1955DA3
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 21:24:23 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 318A13003FD1; Fri, 10 Jan 2025 21:24:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2F11730001BE
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 21:24:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5D622195606D
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 21:24:22 +0000 (UTC)
Received: from dalen.lamasti.net (lamasti.net [185.181.61.11]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-438-u-mu-SWKMCifHHlokYewoQ-1; Fri,
 10 Jan 2025 16:24:20 -0500
X-MC-Unique: u-mu-SWKMCifHHlokYewoQ-1
X-Mimecast-MFC-AGG-ID: u-mu-SWKMCifHHlokYewoQ
Received: by dalen.lamasti.net (Postfix, from userid 500)
	id 9C42314C203D; Fri, 10 Jan 2025 22:24:18 +0100 (CET)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.0.7 at dalen.lamasti.net
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 9C42314C203D
Date: Fri, 10 Jan 2025 22:24:18 +0100
From: Lars =?utf-8?B?QmrDuHJuZGFs?= <lars@lamasti.net>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: Rudy Vener <salt@panix.com>,
	Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google blocking access
Message-ID: <Z4GQAhGHg5vd4WoZ@lamasti.net>
References: <m3a5bzvek5.fsf@dalen.lamasti.net>
 <Z4BPAA0lH17FcIEN@panix.com>
 <ffc75290-c44b-f50d-996c-cdbc5db72b87@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <ffc75290-c44b-f50d-996c-cdbc5db72b87@hubert-humphrey.com>
X-Mimecast-MFC-PROC-ID: gg80SUG0cQlMkJsZUdBAMmEbw8oANu2yF4eP4USzz7A_1736544259
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ArYdIft_tnLhMwHap1nMetAmbeeGCDzcgx9lj9ZVTto_1736544263
X-Mimecast-Originator: lamasti.net
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: lars@lamasti.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
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

Hi, Chime!

You wrote:


> Hi Rudy-and-Lars: Maybe not completely related, but I was getting a similar
> message trying to download youtube items. Our solution was to alter an ipv6
> digit.

Yous, that worked! I used the -bind-address-ipv6 option.

Thanks a lot!

Lars

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

