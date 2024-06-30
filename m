Return-Path: <blinux-list+bncBCVPTHE7K4ILNBEHWQDBUBFV6MYFM@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id F14D491D3F9
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 22:38:16 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4466b3b06fbsf11107641cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 13:38:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719779895; cv=pass;
        d=google.com; s=arc-20160816;
        b=P/3jXtaDWQRWOoejnuqtPslwC9IZuMPmAncRaK8rf/4ouoeviRtah+vrqD0zqzuEEk
         ol8wTGzQvKLnUjX/HJmLj+23V0MvGVbC1prLzvzmjWWrjAer9mSffMLGlcMAYHK6MlXQ
         PgS8aaMRVQHzhrKdbbLP83//J8BEmIcI2BpUDTZH5vh8ZRov6Mlvaa7YP3jxYti+q6Aj
         nfomBK999AJTUpp2ck+Vce4Z1wthawrDvDeak7tPKUIaOP2a1ySEF54U0qoDNUMTX45n
         W1t7iHD6NO/YrmVHhMFaeWQ4o+6ieFcCVyjmPcpMUObmjXFvhr8kc6+knDldjPErKQ5B
         LIvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=t4aQawYdf1crM6VulNGzgFqLtiZqU8gY1fERjSdCG7U=;
        fh=oS4t+jM41DlW/QIhdAIENrXYYu8qTZCDQnD4bq3YjXI=;
        b=d/ZCCM7ZJl4c9mqd2GUnOX1Uix6sztZn194MPpH+25BhwkfHaukEfoRpSm04bILhYo
         F+4QCmCrFr9UNLu0Ft0pd50sAbR8CtuRnKcR2uf2fbYvgebmC49sZR8gBj+WX0xISEeW
         JBCEwHgTjbTB5z7XFLGEDkkLQ7psK5KHu9092tXNANxkFPwqh5ThohKyQSbTdFxAN1g+
         y7MU28qPLZIKtDLoU6yhXGigm49OaIut9QTipHpbeIloBe30pKL77N9qjpoj9rYa4nRi
         ktpKtdX+hDUZ3GOfFWKVZhf+xIguortjDL9CADHjSkRQaEI1IczwYeBHW42bpT1FIzAw
         ARjw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719779895; x=1720384695;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4aQawYdf1crM6VulNGzgFqLtiZqU8gY1fERjSdCG7U=;
        b=ZITUrpfCnf+jumUzHharPANXIXEjQYXsykdZSnyhPyOmH9qM3OwZGdmg5ZXk9Prjv1
         AbZM2TdGPH0PHYoJUQDosWOccM10Sk8CkIK7gcfZx/ffC4imQkiKglcsQ/iImm4A+6x3
         7v3qXTZxQRqNtOsxjizrr3G0Iv3F9BlGifJw+1fj/IaFBL2EspwMCdikH+sA55kO2ViX
         B1MZjJe4B7GCOa9+2IXHIXZbcPsrrdX+ANb/yOt2QEAf2QU99KJuMDf7kCwpNxuLpJSo
         xORgidLGk0lpDP8lPjE84kNa3lnUWbymr0F4CNjOJjT/5mGvbMURAHvtYL6ZyoXpDtYV
         8O7A==
X-Forwarded-Encrypted: i=2; AJvYcCXQ/yhgYnCyQl5IVj/DnF+QLER3T1VUUdafUj7tJTuBGChVrt4p1ka/ea3mcIdAzmtD8C5PnVHBe1Ev5a2labsSnHnuZtIPgKai
X-Gm-Message-State: AOJu0YxCxM/ZAc4kaSH19LwFdfxaScQC7Wy+gBsyNVdcO8Ssk1VO64B6
	h7R8RWkLViRBH3+ZaayFq+ita5QEKF9Zv59Yak9MgtREM9dK1n0b/oB0iAPxe7g=
X-Google-Smtp-Source: AGHT+IGwnA6h1zdlskzOEY1Ya3UnO+MhVNWFALUEDS12uvFn1EolNzEQLU/zkzVHmRbsEjn5MIJoHw==
X-Received: by 2002:ac8:7e8b:0:b0:446:4749:8893 with SMTP id d75a77b69052e-44662e667a8mr56190351cf.55.1719779895484;
        Sun, 30 Jun 2024 13:38:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7e86:0:b0:444:b60d:daa5 with SMTP id d75a77b69052e-446545d1a54ls45309601cf.1.-pod-prod-07-us;
 Sun, 30 Jun 2024 13:38:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVTl2u63gnJT+0jdyCzpHUAuXHsfqnGOWGsPBE20vy8LrZS/MOOnJVfWxd1JwiuTq+3HiBdJd/qoKTWx+M/fcwDjrdzXqiimjnc0Lps
X-Received: by 2002:a05:620a:8414:b0:79d:7473:f980 with SMTP id af79cd13be357-79d7bace06amr448844585a.74.1719779894353;
        Sun, 30 Jun 2024 13:38:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719779894; cv=none;
        d=google.com; s=arc-20160816;
        b=jcjZCADNhPX3cn+3xllr2IbSN+V7sHpJ2AhjDzQ2eCgtr8Qv5GEvexwLJJfELOZre6
         Ax2cZS5GBS+ekZ9ItOmk89zebk9DoSLrP7FciPtOFhmSjZITWrjsdoGSLNfIt/BGkXMo
         VhcKAuqs+6UjkI8pHCmgWnAiTLOHhUT8Hl1BJgRzTDz6eMwYvDAIW/o+HlLIITougvZ9
         XuhD76mf161jVvEfGWH4iyV2psNCxIx/Pkkt9u4Rv9+I/Kwii2dW2EAtEtkLI2KgM+vS
         h2XLxS2nX68Wq1Ib/WJibwMgH9u1eNNnCCZblCIFM6xSJQ77iWs0kSDP26jFs4kQ+Vz/
         /Naw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=t4aQawYdf1crM6VulNGzgFqLtiZqU8gY1fERjSdCG7U=;
        fh=5UEc/P6cnN+pNRo76WOSxBNUPhlyba74CdfpJXJCNTs=;
        b=GZo1VWqTdSaYKWMy3ZncLzHtmfg9FLzN46NKS/AWnHBiBh/CQx8sQQk8bnZQFHkJRG
         m6geF5mP3B/2RZ8QGFsd5UgQSJL9gWwUPRszOrr6mCnurZ0ZSyH2p3o+KboXDjyAPiyL
         0aSgLeut9LRHBv7ajifq/ALc13LV0G+fGCux/LNmMUy2CIXl4YJz94GEmrZHKd3qWgck
         qBVIqfsyso55/kLrsCsFWuecn8Y6VHFcvzh4o0MhehbnS93wV8BFPyh63DyJT/LCCZ0r
         7xmz9ab9NvroI1myKK5k7nnupbKgCo20ENWClTEyCenaue2GoRXmRaknfTHh7LHU6zlg
         0DWA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79d6934c731si655473185a.737.2024.06.30.13.38.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 13:38:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-654-t61BdlCJM4aVAT1MY26vDA-1; Sun,
 30 Jun 2024 16:38:11 -0400
X-MC-Unique: t61BdlCJM4aVAT1MY26vDA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0EDE11956089
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 20:38:11 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id F287D300021A; Sun, 30 Jun 2024 20:38:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EFFD83000218
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 20:38:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B2A2A19560AD
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 20:38:08 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-552-sx8jElUWNrOFUDPULrvQCA-1; Sun,
 30 Jun 2024 16:38:05 -0400
X-MC-Unique: sx8jElUWNrOFUDPULrvQCA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B66A744FC8;
	Sun, 30 Jun 2024 16:38:04 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 6FCE21001C1; Sun, 30 Jun 2024 16:38:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 6E4021001B0;
	Sun, 30 Jun 2024 16:38:04 -0400 (EDT)
Date: Sun, 30 Jun 2024 16:38:04 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Christian Schoepplein <chris@schoeppi.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: solving missing ptr record issues?
In-Reply-To: <5404297e-44ef-4dc2-8b3b-6afaae7b58a5@schoeppi.net>
Message-ID: <Pine.LNX.4.64.2406301635490.3212883@users.shellworld.net>
References: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
 <5404297e-44ef-4dc2-8b3b-6afaae7b58a5@schoeppi.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-425215286-1719779884=:3212883"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-425215286-1719779884=:3212883
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi there,
Well, one example  that causes problems, if you mean my inability to reach=
=20
there is
Bookshare-discuss@freelist.org
For example.
I suppose I was hoping I could get my own ptr record for my own site.
Karen



On Sun, 30 Jun 2024, Christian Schoepplein wrote:

> Hi Karen,
>
>
>>  Rather than rant about Luke Davis's=C2=A0 refusal to insure individuals=
  using
>>  his services are not flagged for missing ptr records=C2=A0 for emails s=
ent
>>  using=C2=A0=C2=A0 whatever iP he is using, I am hoping there is another=
 solution.
>>  For me personally, it impacts freelist.org lists, gmail, private users
>>  etc. for my personal work website, and my shellworld account.
>>  What I am hoping is that there may be a way for my personal site email =
to
>>  be managed in a way that associates a ptr record, for that specific
>>  address..I cannot even write my landlord.
>>  Is there a method that can correct this issue in some way?
>
> Email without a propper nameserver setup, and that includes a PTR record =
for=20
> the mailserver of your domain, is not possible in these times of spamfilt=
ers=20
> and so on. You will not be able to deliver your email to most of the=20
> recipients you want to write to.
>
> So if it is not possible to setup your nameserver that way that it is=20
> necessary to run a mailsystem,  I'd suggest to change either the mailprov=
ider=20
> or the DNS provider.
>
> Whats the mailaddress that causes the problems?
>
> Ciao,
>
>  Schoepp
>
>
--1949452079-425215286-1719779884=:3212883--

