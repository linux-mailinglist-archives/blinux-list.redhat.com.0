Return-Path: <blinux-list+bncBDYPVTOXSQEBBMN4RW2AMGQEMYUSCCY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 005AE91ECD9
	for <lists+blinux-list@lfdr.de>; Tue,  2 Jul 2024 03:56:02 +0200 (CEST)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-65026e6285esf2667287b3.3
        for <lists+blinux-list@lfdr.de>; Mon, 01 Jul 2024 18:56:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719885362; cv=pass;
        d=google.com; s=arc-20160816;
        b=swnvINiTSp0vjFBD9pmZBWpDGuBDiAbouFRifb67/e3urD6mtmA0DfdYNrBBLU+f2j
         dikdRS7UlU2cwjrMj1vbDEk8nnxrohW7Sxf6AHNtY5FCd9eymxZwiJRCeMWAIH5tHk4H
         3s/qIIfdaHodVt7xO+fqPTQ7BjPDKsOxa2tHYQOwjiJYsSPrWmInnTdEQY8XiVjS6hmG
         9u7i9kvw9NQcMYVm0AG/P3CBKifLzaVSzvKLRADuw1RjtTUohF6e3xt9Qs7/5xHcrFXR
         duKfBJF4i/OytHBgiIdfcCg1pOtnyCWy5RsJQQhUPvLqZo6iSmRJD5dZws8KtNG+RPvV
         kLhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=toaNhiLQaAYjnmQDHyMFyx9Em3pvV5MtfmnQxjuuGbc=;
        fh=RpVNiNkVOJLW3yHdk8V2nvYhQDyOTst7wnniLg3UN78=;
        b=ztR091zWuIdmGtJw4hQXV62guS91u2R5ixMJAjz744pQC7EjTXaoG5D35p6bhY8bFH
         DOn/rJKFMo6IyXQXtlvlXZhZFM+Pv0MwehQUnUt2eF60EhLoiyFgVJVhfGdgNrUwdK8A
         2IGoA26OUqfKrZ+XEwlo689LJ4QVc6dIfYyW7APwvMnA6IHFAmnP6PGKG4AKz1LNVJCA
         qIgi5Q0NfLN+DTkoB3+lTSDcUVDd69XegM8/aFs0g8SGz5bsK8s7baDguSrZ5ljNXMbv
         wV62gfikydvtC/jmq8TDTeaXXAcKdYywGAxn8ADIlTlwSjtJsTap0Id5qDyja+USZSdI
         ztPw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719885362; x=1720490162;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=toaNhiLQaAYjnmQDHyMFyx9Em3pvV5MtfmnQxjuuGbc=;
        b=jg8N6vv7EGxdDeB31I4DLYXTuUK/Ewid8jPnYVOkuOyLswCLQeoNkOFZJVOtheaLBx
         T12dzyWPBfX9P2eYmsr5G1nTbhT2n9kqmxOgQeZWfftwynTMuw3byBxeBXSkNhgBqU+t
         EPOOfY4rU9K7sKJkvFBWMVm84fer9LE5ByjMwdVvT965t3ReuvuYLgqDFA5NyPzKOxuX
         Np4khelQvdIkmXqCOU5Lx1Eu+SVmglgvJjeX4giOleCGt6YX7plUfYGz/2/JLAimnCBy
         z/KDL2Z/OXPWgDXBp4BGOc3y4xRRTtReHHxh2AoJsSLVae+kv4Pviv3RGDnIUPPsGpNS
         DPvQ==
X-Forwarded-Encrypted: i=2; AJvYcCWSamVMgy2LzcG9k8xv6xhQll++X7N3HNPytmcTIfqW6TSk0RnBeso/jhwXau5d7zfrKYjrtM+otd3ZZhAV4cevEFKnTq7gSC5y
X-Gm-Message-State: AOJu0Yz3XKPgJM2iGPXDo5osVbPPSv2KO44bkOMX95iNsgRP0AvY97Hl
	3FFQCOPqUjolpjAaRXR8/d4AvuFt7vs8I7hWQtq+C6XORtdM3Un3phZ4V75j+e4=
X-Google-Smtp-Source: AGHT+IGQ8W2PnI9pD8zRrCDkGlF/ea+2aT751lclpNg08b3FiPw+IXqF3dCBeOFKIGo65leRHydh+A==
X-Received: by 2002:a81:4415:0:b0:643:c2bf:c156 with SMTP id 00721157ae682-64c718f83d6mr68701307b3.19.1719885361726;
        Mon, 01 Jul 2024 18:56:01 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:570b:0:b0:444:b12b:b736 with SMTP id d75a77b69052e-4465298e19dls65264081cf.1.-pod-prod-02-us;
 Mon, 01 Jul 2024 18:56:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWco/sWcCQUpnEfgR7CQiC/TYngfR7cWIQ21hNfqaWIIEIQMXH4tQMzGeoL3RffOANGptJRofSHh5i/YehEF48Y8R92tnPQg1QQPW6V
X-Received: by 2002:a05:620a:4014:b0:79d:7e72:b907 with SMTP id af79cd13be357-79d7e72ba2emr964658085a.37.1719885360876;
        Mon, 01 Jul 2024 18:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719885360; cv=none;
        d=google.com; s=arc-20160816;
        b=PodQtIslSJ4In5a6+Q/4ASC4Ud+oO5b2eSPrLZJRVLo3g6ak4cNJTEDASlfPnidsHF
         kl2mX3LCON3tymQdA5TLaQciYKfPd81dasUECRqD9xreZmSFiXgaNvYhGJmPlz7aHMi3
         7vc1KFxKoP7WS9jd19g1AAz3CGwZiZFDNmf+vSICJ/3+potl9WwWWPgl3mC6NW8v/P/B
         2D8TqV+F/CjK9DDZaIK5ylJMSO5kh3aLmf6zmccAbbs37RKm1Ez5YK0ebR5vVz649fJQ
         EQqTMw0vrmXjT8+JJFEIBokCKoFXRKYdg7tvYYa+7wPe4JEEaEKzTnzS9PuG8Bbj1d3V
         +18A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=X+mE4VekZ2H+crrOaT8+KmR7PsUMCK/k73ceCBuolfw=;
        fh=Njq8pJfVXzvcWHRP9uVx3okqp80Z6Gd89EbBHXxBV/0=;
        b=e6lBJ01/ec+I5/wj1HMIEBuwjH39GqjGw9X6W52CybkX8immW09fgDh12sWp65TQj5
         yiEI2g26UWwZnDf9etRCO1PTJpVhpO7+tfSaL3IB9gjBhhL8PttnNc1trLjpCn5V7MJE
         j8PT31Iawb1EDqrPgmQk4/R2+JsD78F43YMU2NEg1FkKwgKZamIu9HC9XxfELK7R2RdP
         PZBkmL6+2OcBqWBd8XOfnXTkoQwpL6Mu3/52l84ycXrPqYHS19VcjQnbBPEPKTKvK9uV
         BB/ZPy+oLtSOuDAcQg70e2Fa8VftZtRTesIqWnDWa762ZGfDeDhbhMdlsfJXmI5bMQDD
         xeoA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79d69307725si902939185a.392.2024.07.01.18.56.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 18:56:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-338-Thh-yqi_O3iY1OJcUtOZxg-1; Mon,
 01 Jul 2024 21:55:59 -0400
X-MC-Unique: Thh-yqi_O3iY1OJcUtOZxg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C65981956087
	for <blinux-list@gapps.redhat.com>; Tue,  2 Jul 2024 01:55:58 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B6DF319560AE; Tue,  2 Jul 2024 01:55:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B46B119560AA
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 01:55:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0CE2B1956087
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 01:55:58 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-622-X7ez1BRvMpia2h2CbWVkQQ-1; Mon,
 01 Jul 2024 21:55:55 -0400
X-MC-Unique: X7ez1BRvMpia2h2CbWVkQQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WCmGM402Sz4DCt;
	Mon,  1 Jul 2024 21:55:55 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WCmGM3rJszcbc; Mon,  1 Jul 2024 21:55:55 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WCmGM3pPHzcbC;
	Mon,  1 Jul 2024 21:55:55 -0400 (EDT)
Date: Mon, 1 Jul 2024 21:55:55 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>
cc: "Jason J.G. White" <jason@jasonjgw.net>, blinux-list@redhat.com
Subject: Re: Fedora 40 workstation status
In-Reply-To: <5e90b809-1877-881a-9c59-2f6d94d0084c@hubert-humphrey.com>
Message-ID: <9b5b96de-77cf-3879-5128-3253107efec5@panix.com>
References: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com> <8062e3e7-7230-4351-a094-03fe7b4bea84@jasonjgw.net> <d0c75ec5-6bcd-e1d8-4c40-83070dc1c7da@panix.com> <5e90b809-1877-881a-9c59-2f6d94d0084c@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

I got orca up and working before I had to clean Fedora off my machine.  I
mostly use the terminal and that was accessible.
A current version downloaded with bittorrent is best with Fedora though
and not Rawhide either.  Rawhide has often been inaccessible and on that
count the article's author is correct.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 1 Jul 2024, Chime Hart wrote:

> Hi Jude-and-All: I didn't read an article, but in a Monday Access news-letter,
> there was a story about Fedora having not been accessible for 9 years. I bet
> the late Bill Acker would have never let that happen
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

