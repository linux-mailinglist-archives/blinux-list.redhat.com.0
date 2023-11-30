Return-Path: <blinux-list+bncBDYPVTOXSQEBBH6YUCVQMGQEED7IQSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D327FE91F
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 07:30:56 +0100 (CET)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-58dc1a18554sf108605eaf.1
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 22:30:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701325855; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZtMZ5vjQc1ddiSi/eAI187VEBh7KzuV6VESMPOTLtnY35BCx5OcYmTwY8PweYEvuy7
         R63I30xd+ju/Dnt4N5lHIjaTooMzu6k4iTI0CljCQN4ICIOPHR9fKdWbH77o6CUcUNXE
         6KkveqGgNQEZnC3hc+nmjeV8RsRKTn0AC17AkljJLIM8w7uxs0uUAU5MIGWxAGGiZL1N
         QAD5e3oYf03+SZcLnkhGm+pEswFNLvAAHDbugKqBnGn+faS7hfl8Qd/uAiZdW+sT+Rgq
         AU2E3mTRaZ+BCImeHzw+j39tiQ3+DHjRlLmTKOrb9Gu5TYFiiBrL2MkFkSZeVP09yU/j
         HhFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=o/s/jwleOsH2rV+K3ESdK/WcX5xq6LbvoTHMM1a42e4=;
        fh=J2wXZoC9g4Av3YgMHDp2bH467jm5E1MwsgBC3j/xJnc=;
        b=PR1g6EVRVLqLK/332hHxCS2HTgtj+D01/QZMcuBNkR+gNiwasS7etAFPSMofkzytdz
         i07oJHrtQzC/FfmwKVGZq0uCrmE7h9U9gIBo7tEzZ+CbwH7aWmr0FF9wzmfN77aob/nv
         yfXQUCd9BZAWnFj5L6O34ChozX801gcwEWNvtFK9IFR446TtWOWfENg4XPcfI8uOaZGS
         lN6+0+av/bVQPMKeHcgY6XSonrhLrPYyMU65NnItRN4O46zZy/CufAY4o6iUYDAhSIVo
         ZMIXkn7IPjEk4mlR0YU1kat4YnbNg6P/DFtudD2W4VbuNvuxhmf+HW03EfJxh3yBKuoU
         by3Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701325855; x=1701930655;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o/s/jwleOsH2rV+K3ESdK/WcX5xq6LbvoTHMM1a42e4=;
        b=YmUfeyKxmu2/C/JrplkoeCRFE3Bg1uz5jiyMQnDNeQTf2m+Ig6Xj00fGlAknKD0/Oc
         p2lj616RNcnM3Nsb/9rCUjFtTbUtXPbx2qxNj8ga3Vc7fcKVAiBxG2vXTV7TVgiTCuGo
         B15FMhUMhrZkUUSufj9YUzoFTHktX7FCObTSCeeYR4qBA6W0CaL/w23nLX74sHMQNBWY
         wAquvYEOmURspFLU3es151G7zgNFZkD915kmMFE6tDJfpwYoul6+PMlIXEbepRMW0IVt
         8fhcnvSfLHDQoSf57cx6qcxvCQpbzwGs57Oj456ppMy9iK+tXWZF9/NXCTukOPyIq3Lx
         aPSA==
X-Gm-Message-State: AOJu0Yw40cg3SFC3IMjLcfdnROOwVmA69QIVw4oK0KlFjhSb6CG6xL0W
	qT/J0BBO/Eve4HOUWnL1x/06Ww==
X-Google-Smtp-Source: AGHT+IGHl7taugXnGNZoMasuPKSmtB/+jJdYedXCK8XDHUQJlURNPA3QThOKzA69liHXbRiWtrTHpw==
X-Received: by 2002:a05:6358:9217:b0:16b:9612:1210 with SMTP id d23-20020a056358921700b0016b96121210mr790919rwb.1.1701325855183;
        Wed, 29 Nov 2023 22:30:55 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d01:0:b0:421:c71a:9295 with SMTP id f1-20020ac85d01000000b00421c71a9295ls971853qtx.0.-pod-prod-01-us;
 Wed, 29 Nov 2023 22:30:54 -0800 (PST)
X-Received: by 2002:a05:620a:4fa:b0:77d:9fdd:23d3 with SMTP id b26-20020a05620a04fa00b0077d9fdd23d3mr13971253qkh.31.1701325854452;
        Wed, 29 Nov 2023 22:30:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701325854; cv=none;
        d=google.com; s=arc-20160816;
        b=FpJnYj6nK9W9bL0fAplrLpg06RisDGcaIB2xU3ku+2c5WtcLLupSI0Hf28Y1pJqTs1
         9eSXi0JT1Sz7IcSdbe7BwZtxJsGgX0YMQ0tnSYrX7Wwe1Z8b5YJlYWbYYU07NjKLo+F0
         dWwSIcJ5j5PftV/JVmuGMZeFJAZe2n1TN8F1wJ9373+Cub1JgiPb/5zap4QuGDen6dOQ
         tGwatki5B05StEBzbgiqS81XmyzJIPesW5IpxR68uakZ57NL2f2Y+uxtk10oDuJCyE0j
         EgUol60JwljDln6bFmxi1TixJbcveOacnbpN3CVIiXirph32ne7jyDVPVSN85ae+V3hz
         LfWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=/KX6KfDdAfSqFHRdx2nxk2YTZYAv0M/MEAtvAAXcRyY=;
        fh=J2wXZoC9g4Av3YgMHDp2bH467jm5E1MwsgBC3j/xJnc=;
        b=h9mVblIwwcs+XBA/+uVDMvNCQ4tKiHVW53eiVg8Ex6W4RuKbTusegiAvnmavqrTZVy
         KDAHSy09j5BR/7iFlrsMpJwhsZrkK8KXBFvs2yEH+0ld3CF1R4qJSoDd5+AEipusfeAr
         X7BGQhsEwPdamPivxHp0/AkUPizyGUL7BFd6u8/IxqH9As3kb2zqGHNUo2U/R7gwbwcn
         xqbxlIggMZaNYxERTs8ZtysHHbR0dA3h2pi5F27/OBeeTQh9aL5/7qFEdbaQCIyQn36j
         Nlh07lt5+2g8nS7Sqt8ov1EaHeQtijQ04j3QMJOQtZVhkwLXJvLbapoSqDy2ZTwRi11B
         QB1g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id d7-20020a05620a240700b0077d94325b7bsi436049qkn.350.2023.11.29.22.30.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 22:30:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-661-LvOzCjfEPxGyawHubwYvDQ-1; Thu,
 30 Nov 2023 01:30:53 -0500
X-MC-Unique: LvOzCjfEPxGyawHubwYvDQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6D7329ABA00
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 06:30:52 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C3C481C060BB; Thu, 30 Nov 2023 06:30:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC37B1C060AE
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 06:30:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0A9785A58A
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 06:30:52 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-581-gsvuOCaHOEWQ91gi5xcOow-1; Thu,
 30 Nov 2023 01:30:48 -0500
X-MC-Unique: gsvuOCaHOEWQ91gi5xcOow-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SgmXm0lTNz4DV7;
	Thu, 30 Nov 2023 01:30:48 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SgmXm0bcxzcbc; Thu, 30 Nov 2023 01:30:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SgmXm0VsQzcbP;
	Thu, 30 Nov 2023 01:30:48 -0500 (EST)
Date: Thu, 30 Nov 2023 01:30:48 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <Pine.LNX.4.64.2311300120150.3722274@users.shellworld.net>
Message-ID: <7f656b68-5cf4-3c90-911d-71b1fa403125@panix.com>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net> <c9277002-d894-203e-511b-952f27c98048@panix.com> <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net> <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com> <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net> <Pine.LNX.4.64.2311292351310.3721152@users.shellworld.net> <c7729650-4674-9b10-4a3e-d65a802bce17@hubert-humphrey.com>
 <Pine.LNX.4.64.2311300120150.3722274@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
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

If you want to get into the menus to set things up when it says go to url,
hit the alt key and you land in the files menu.  Right arrow gets you into
the other menus.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 30 Nov 2023, Karen Lewellen wrote:

>  Chime,
> after you open elinks and get go to url, hit enter to clear that.
> then try escape.
>
>
>
> On Wed, 29 Nov 2023, Chime Hart wrote:
>
> > O, Karen, after typing
> > elinks
> > it says "go to url" but after that nothing worked. An escape gave no output
> > Chime
> >
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

