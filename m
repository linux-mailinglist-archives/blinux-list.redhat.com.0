Return-Path: <blinux-list+bncBCVPTHE7K4IJZSGVWQDBUBE3D4XFC@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2C49319F3
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:02:06 +0200 (CEST)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3d92425ce97sf4549562b6e.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 11:02:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721066525; cv=pass;
        d=google.com; s=arc-20160816;
        b=I1WlMvy6Ypg/68Nm52eJONMB17191vLKGeLbak5hRLdfnc2m4vIRv1Zff7GbHwNMYr
         LhKEn/FP0ygzqEHnNI6L10uNhjQh4h6h5V0P6COyV1eaHlC8OluMGY9Ia2CubggaCQL8
         6sg9QCavDUtBDqpabY0fOtwb+WfZ+O1BghkrwePtAGbXwfdN+rtaSc7jw8Pb+a0Z4ZjT
         CcspCY5QE+EgqPGICvZiuNLkSueh03kRytSwlTfuo1H/iuyijqXA/dvuFQTnUV2LORh0
         ecK4FBeQ3WEXdccqjHmmLoHAfVkbSpkiqn8b71rM1+Ry7X7prTtStGbPyYN3laC6Eg4N
         aTOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=S3o4lRiLxUzM+Q/U+YxMoWJj00GKDFk9LpO4hfBkqsE=;
        fh=g3foDWoG3s95xvr6CjVAFH2QFTdgbJmuFR0Qu+ra6Ys=;
        b=w6vJ9YZbM/V4CUn3HkwxKDXT4gDHjANRpvIsKzo8SjN5Gw83skpF4S+Cw+3nuFfTe+
         ira2CN7TqlKMiJazC+CECAl+Tn9Kk39QOpWhwgboqEULO76yjxMFoz1omtrimX7BMVtj
         X8c60cZLv3LBG4ERb7TVvx5r0fpVbquFSKXIEg5YRb+HqL2QtW9XbVbIlkbXoK8uCyPH
         1lL0Jtkl+O4ZZZF2Sm0XWTbE9XFTJ2awoDyp1fF7d47FSKZekdeHJIvK2rznSzyFuMG3
         iqBEnCywAsXymEH73ilPyAEkkxiSI6Vh8VSH56sxC4cRHzE9C9R+rFc8RrnugiHsy2Jk
         EsMA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721066525; x=1721671325;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S3o4lRiLxUzM+Q/U+YxMoWJj00GKDFk9LpO4hfBkqsE=;
        b=JYs29SgHtl35DtB1BqPgIewc16iMoY1OMPcEVvnejdCYXieRnug0yaJQJH7PFX+QIB
         vyO/fk2Eurv1U718eHRsydlyMGAjz35tOQSjySd/kWkZVLNP27MW2x8gb8WU0Ou81zgc
         ymw7qp7j8V2g1VRVUy3AvrMqJRLQ9/Gf17o4bNGjk07M3sqahpYFlbNGCzpiCJjGohp6
         NiqbjkmVlRxkeoBM+eGnrMlug3boyMmoCLcfr8gnF4FfnDMgSyUQdk1ZG/YWVGq8vIJJ
         zqu8z1UJzAZASDWidsX1gMoBaOp0nFUJ3qD/RuPZIiv9gPipPc6QGlOe0/nAL1IzK98p
         e0fA==
X-Forwarded-Encrypted: i=2; AJvYcCU4QSJckemkTp+lNGQOBLflhk0lF0QBBkmBeQjum2Fk0e+SjfrwBetB6bgalT7tNtW++h+xXJWZC8bryUx2y4VENtBEIemA0XIu
X-Gm-Message-State: AOJu0Yxf8bHuC6sMwRnX19PuAQ0fb8jywz+VkS6hXG4bON5TntcytqtY
	1Lw3xs1U9cw1qV53jjVPh9dr+VpM6HRqr5CC7XqAYzt+m0QvPODJd7lyElFYB7Q=
X-Google-Smtp-Source: AGHT+IFItRCXr3W5clagX4WiLJS8XWa+GvFrgLqE5xu/4i5OZZprq12N8lIOlDfhvQjDtDdFzs1NKQ==
X-Received: by 2002:a05:6808:1784:b0:3d9:30a2:f8fc with SMTP id 5614622812f47-3dac634c9e4mr429574b6e.20.1721066524443;
        Mon, 15 Jul 2024 11:02:04 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:2b91:b0:e03:bbb7:44d9 with SMTP id
 3f1490d57ef6-e0578eaadd6ls7900023276.0.-pod-prod-08-us; Mon, 15 Jul 2024
 11:02:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUJCJrecmcQOm/0MPAMJfDRLvXg7CNo7u2AgKWaGegCEdgYBkXW+Xo8zhILQmkrSxwfpoMgfiVovBBbd0VJFR2H/bzpeJPL9Jtzt79B
X-Received: by 2002:a25:94e:0:b0:e03:4b27:795e with SMTP id 3f1490d57ef6-e05d3b3203emr325680276.28.1721066523491;
        Mon, 15 Jul 2024 11:02:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721066523; cv=none;
        d=google.com; s=arc-20160816;
        b=T0pPLwKRsasH12FGWCArLCB7A7AhKPCk9yTURQobN7ebTJocpKXvqpw07fQeKIZYxz
         q49Py9Bs9sjVL4vjymz/1lQB6KuCcjUlj6sL1/Hnj0aS7R+6Qi+ZWjk8I6gUdlnqz3Kj
         G4RFL2GBwFghNkK1nxUSQJjFchzNKgkcETaUfejocDkgg8nneg0VxcgKMcB7uOpKGALH
         JSM/cYGVNxvp145UfCQQ86ZwXZXXy6KKXWNKPCBQI9G5Zsxbfc5vLaXaO4778+QxSFUn
         mqsz9FRDB0oHPdoC/rl4xyMJymMMxTiQGpreHP1zeElt3KYZxxoPPyHVfw6wEFPZQrkt
         pboA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=S3o4lRiLxUzM+Q/U+YxMoWJj00GKDFk9LpO4hfBkqsE=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=HWrChHwcSBnTQ6sOfRa8ogGWD1bJGnxryNnDIiosub0Y1ZzqoPk/2P5kd+MGCqS0hg
         f0hapxvqqXtOr/poiD5pnNzQhQdLS8iTkTc/Q8NjzsKIqHtNY3dBt7CZjsz0zIX7NtRf
         LHvg3x0D38HeHhtyJKEDWVgSzTUZylN9u4CayC8sf8GoE6ujCs65F8XI3T/kl8mogHEg
         m/icmaiclKN5ojZtORR4hTiqiv4t73M7Sl6bIuUT1NxsHbUB87kGCschcI9IAEOt+qsT
         /n+g6rraAr5KzKNmUkR/VpLXWDLH6qftSLvsOAgF4pBkW2uFLG1I2vH41+hJPQDKgISZ
         auHg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e05a46ad4b8si2470690276.459.2024.07.15.11.02.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:02:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-596-98JpzQY3NOe-OGjOqExapA-1; Mon,
 15 Jul 2024 14:02:00 -0400
X-MC-Unique: 98JpzQY3NOe-OGjOqExapA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 210331956095
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 18:01:59 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 123A319560B2; Mon, 15 Jul 2024 18:01:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0FD1A19560AE
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:01:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 846401955F43
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:01:58 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-15-zxH6MoxNOLawv9C4CHfq1A-1; Mon,
 15 Jul 2024 14:01:55 -0400
X-MC-Unique: zxH6MoxNOLawv9C4CHfq1A-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 5BD1240508;
	Mon, 15 Jul 2024 14:01:54 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 232A11001B4; Mon, 15 Jul 2024 14:01:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 22AD21001B0;
	Mon, 15 Jul 2024 14:01:54 -0400 (EDT)
Date: Mon, 15 Jul 2024 14:01:54 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
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

Thanks  for these details.
For the sake of further exploration, is there a Linux command that will 
share all the packages currently in use on a server?
I have entirely too many things I do professionally with my email, 
including filtering  items into folders to use anything like fastmail.
I do currently ssh into other shells as I said, but must visit shellworld 
first to do this much.
Still, if creating shellworld 2 might be possible even on a dedicated 
machine, it might be worth exploring.
I have 54 gig of data in my main shellworld account alone, 6 gig for my 
personal website..cannot imagine another shared hosting service giving me 
that kind of room, but might be wrong.
Kare



On Mon, 15 Jul 2024, Chime Hart wrote:

> Well Karen-and-All, Many of you are quite familliar with my road. I came 
> kicking-and-screaming from DOS2windows, slowly in 2003 Linux, but with 
> horrible DeC PC drivers in Speakup. Eventually in 2006 got rid of windows 
> all2gether. All along since 1995 I had Unix shell-accounts, Netcom, REXX, 
> PrimeNet, and Shellworld, where I hosted my web-site as well. In May of 2020 
> we almost lost Shellworld forever, so after at least 3 days of no e-mail, 
> with a big help of a dear friend, I switched my domain to Fastmail. 
> Unfortunately their interface does not work in a console setup nor without 
> javascript. After awhile they blocked traditional ftp access. I found ncftp 
> as an easiest client, but now must use web-dav which has many fewer options. 
> As far as your exact question, as you see I am not hosting my web-site nor 
> e-mail locally, however, we use exim4 to grab mail from FastMail to my local 
> machine. In addition, I have a laptop also running Debian SID with a quite 
> new Zabbly kernel. The laptop has graphical so I can login to hotels when we 
> travel. Eventually would like to put graphical on my main machine so I can go 
> to Zoom meetings. Wish there were either a menu-driven or commandline Zoom 
> client. Along the way, while I've been in Linux nearly 21years, I almost 
> still feel like a beginner, but still sometimes when I atten a Linux LUG, I 
> can still help some1 else. Also, certainly folks there are still somewhat 
> baffled how I use a computer while totally blind.
> I also have a MAC which I know little about, but took a class. I have a 
> Chromebook, but the Chromevox screen-reaeer is much less easty to use than 
> something like Speakup. I hope those details will provide some prospective.
> Chime
>
>

