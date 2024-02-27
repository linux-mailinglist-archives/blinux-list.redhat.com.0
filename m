Return-Path: <blinux-list+bncBDP7P6HU4IERBQHH66XAMGQENI3A7QA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3C1869887
	for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 15:37:54 +0100 (CET)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-21ff3a07718sf2397328fac.0
        for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 06:37:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709044673; cv=pass;
        d=google.com; s=arc-20160816;
        b=AEadNrKPHD85py6Qdm3wMdYSVdIaCuDnNJISsjqcEPF9vfMP67ZYK3J6ajADTRWYkd
         ezupbt4qhM1MA+3G7o0br+rx2QNEoWnMwDdk4kf2KnHk++lPc6NgT/TCEyWboO0UAJbT
         P0lQXhkEO1JKmCMJVaZ8BrtM/++oQT8H/GCsBpbu6NMEb3muYBs/miwQPwLZjaeeTTjQ
         j7DVKY3zemXTugusp0Bvigjpin4knJP3t19qbbfup79CfmuSX/IDo11mo8dyg2rsSZyj
         eiJZhNlR8uFT97DoaBf5J6DzxRY83upD8bIx5X62MSNHaLZqvqX+qoGuebvcR3NmIT/8
         C1xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=L9X67vxKiFTLbc4y5ujNY4mVi0BtK2jBLx/aZvOiWQU=;
        fh=k9FfIrQOJq96lnX9yyU7q8xI3szs4dvzAor75ukPLH0=;
        b=LEb/M/sDb8qNXxU7Z6itc/Td+A1ZqU6SDynYatYHrdoheQgXaQNniT2VEzVtQC/CBa
         KT157fKp7l0hBYNOIKc1B1Bus7HcJnFD65vxjDV1S/z4UtVcGi1w8tddbFIufgRCuetX
         bjaw4g8zYLSnI60vSMbI8Q0sZ1al8iJSDA820QiJT2pkVxXxg5X7FfEkv2FKok3APjVE
         ttizPMyEUjJ/mPPcBR9T+pTVEbecvd4aKCd3d49Vk1EIZkpznx7wE1Maz7T5zIMT/qif
         ztKCA/6fjVzFFc1vTGNRAhPTsgdXvZHgTEq2Ka2U0wRSDvGnR4AjnyxFiAvo98jS79qP
         S0BQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.38 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709044673; x=1709649473;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L9X67vxKiFTLbc4y5ujNY4mVi0BtK2jBLx/aZvOiWQU=;
        b=GYAnxy4Tf7+k3l6WlA6LlaLDMmQJCMwVzZRqPWHeCNxkkaLeJdzwH3Ql7H9xyHDTLe
         psxWKquYvESD75IRZHgNlea8bAIh/ItCHe7oKnT9CfHary87GZemUBs7wiS2xRnjCv9Y
         CnQeLmTvX/l8Uxuu49xt/yJX3qMUGIE7FLHttU8rOMSSbUZIT2lwLMWcss+/8a4kIXmw
         b8J+RBDkF3f9w1ZaW/9Q/zNztKHYQAZItp80tL5zSftJ/PYQlTw6F5WWuzRJEpHxgNau
         YVfm2rTHOlfhj3qXVo2hCbKnQNC4k50knkuCKECKqUpVYvQ2djNqheHL46QwMssChqFx
         fkuQ==
X-Forwarded-Encrypted: i=2; AJvYcCXF+aUBKu+PrG8zEORjhDQ3nKmk9NLzauHHxbIkGgM1CgXr2AFrZvBVZc4ZRaLXF5yY8+ar2YVzHIKHSWIQGwmIOe0JK00c4gCC
X-Gm-Message-State: AOJu0YwqHdFRmt3MgZLsx7YcPAScXT1++OsunFEdJ8qPK4nuMwxV2bcV
	34EEkivHjYav7dhnzGcXx+Ft1ZRdyfvcYy5khwRzb0fFeVy51yR2bwDsew9gTWM=
X-Google-Smtp-Source: AGHT+IF56L02sLCPlTynd9W2XVD0fxZ3kaUCGdzE4K5j8w5yfqZ0SlaklwOsAsyLTb06qM9o2dTFtw==
X-Received: by 2002:a05:6870:1489:b0:21f:903:578d with SMTP id k9-20020a056870148900b0021f0903578dmr11842117oab.1.1709044672752;
        Tue, 27 Feb 2024 06:37:52 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:ce4c:b0:21f:a0f8:8272 with SMTP id
 xd12-20020a056870ce4c00b0021fa0f88272ls4434259oab.2.-pod-prod-02-us; Tue, 27
 Feb 2024 06:37:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXGFBUAuEQyE9CR9pJzKbWanOh/wvZeJPtS7R7msnSkTbSsodk+ELJZALReZ431Hl4sozoCaLRGX6yydKqiGRw3J8osVxt8HaErARaS
X-Received: by 2002:a05:6808:2a44:b0:3c1:a437:ba42 with SMTP id fa4-20020a0568082a4400b003c1a437ba42mr1935760oib.14.1709044671997;
        Tue, 27 Feb 2024 06:37:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709044671; cv=none;
        d=google.com; s=arc-20160816;
        b=oCQAOBdL1rPSp5I0bEE6MLFyaHROfhDWrQl6Xo2/vwSo3AT4kBtRB6BRP51IJ1gpPr
         Q2jiTYfBFUBWAkHn1molvh66abwfPTX0QXhDKblCkgVIaQUGf2mlpVFwZtERivooChoa
         RdcuR/XNi5uchdVeZJWaaQW3q5Onoo6llBigeSp6U3MFkzc1EV4vDSjiFX+M4wbyByTR
         ZsGQYAK5+eJa/tbEVft9C1g/DdNcMAkkT7Wjoa/TkzRHDXxoELIXUIXPtV+2OpvF1mMF
         VIMtIVHfbnEObp//x44ve1tbeIWQd1Uc2+lTrtHYyUORUstIxTnYxITCnvj+lembxyxI
         HzQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=HGGmHb5z+IFLbVQgRSD39w0FAsQbIOOWOMIcrN1bntY=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=mSiQqMZSElzTiaCOMSUkh6/vwC2xD512j1ftI4rvepg+gT2CBjKkz2FSJt14prjE56
         2nbaZXbdtzNtDrHnn2FbuCwVFPv4N0BzC6CwuQk1iZCxeLR3jmmz2a0UT3Dfg90DRTqM
         yrU36vF4OchTmmERwhuOaDSDIzCFqegy7locH70XyfKNiPSrooYpY/2MplLKPthN80K2
         O3koSeOano9iu03vBrD4KmVxRFEohZYgEsmgq28+dHsOc0XvKS9tq53Sl3aQ/FrRdeE2
         7J0nL8ZWcvPtOg5hVFqQv7LNzScl2z5d7GR8UXZRjH5bHJ6eDiprEGixuBbC3RTOdOah
         KoHA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.38 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id h21-20020ac85055000000b0042e4f11e080si7428562qtm.143.2024.02.27.06.37.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 06:37:51 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.38 as permitted sender) client-ip=65.20.63.38;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-156-fqErKZ-wM6ywaPEAvBhiog-1; Tue,
 27 Feb 2024 09:37:50 -0500
X-MC-Unique: fqErKZ-wM6ywaPEAvBhiog-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D42FD38060E4
	for <blinux-list@gapps.redhat.com>; Tue, 27 Feb 2024 14:37:49 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D0C4A492BE2; Tue, 27 Feb 2024 14:37:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97A91492BD7
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 14:37:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB9E81C54022
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 14:37:48 +0000 (UTC)
Received: from altprdrgo03.altice.prod.msg.synchronoss.net
 (altprdrgo03.altice.prod.msg.synchronoss.net [65.20.63.38]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-588-h27UDokmPpasohrD4oQgxw-1; Tue,
 27 Feb 2024 09:37:45 -0500
X-MC-Unique: h27UDokmPpasohrD4oQgxw-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65BCFF4E04F6D648
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrgeehgdegvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdef
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo03.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65BCFF4E04F6D648 for blinux-list@redhat.com; Tue, 27 Feb 2024 09:37:45 -0500
Received: from martin by wb5agz with local (Exim 4.94.2)
	(envelope-from <martin.m@suddenlink.net>)
	id 1reyaQ-0007E4-RQ
	for blinux-list@redhat.com; Tue, 27 Feb 2024 08:37:38 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Keeping Orca Talking
In-reply-to: <66415a9a-09bd-5d8b-4629-485bf949ac0b@panix.com>
References: <E1reg56-0002ET-Pr@wb5agz> <66415a9a-09bd-5d8b-4629-485bf949ac0b@panix.com>
Comments: In-reply-to Jude DaShiell <jdashiel@panix.com>
   message dated "Mon, 26 Feb 2024 15:24:22 -0500."
MIME-Version: 1.0
Date: Tue, 27 Feb 2024 08:37:38 -0600
Message-Id: <E1reyaQ-0007E4-RQ@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <27778.1709044658.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.38 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

Jude DaShiell <jdashiel@panix.com> writes:
> That's why I like amixer set Master 100% unmute;alsactl store
> Something else /var/lock/alsa.state.lck may need to be removed for alsactl
> store to work.

	Thanks for that advice.  I've not run into that yet but
lock files are good at both keeping stuff running and equally
good at keeping stuff hosed if one doesn't watch out for such
things.

	On that particular system, I send the audio to a mixer
along with a few other audio sources and then to a
bluetooth transmitter so I can listen all over our house.

	I wanted to see just how much audio I was getting out of
the sound interface so I did set it to 100%.

	On this system, the audio is the output of a
hdmi-to-analog converter 
because the default sound card appears to have no Linux driver
for the hardware and I discovered that the hdmi interface appears
most stable so that's my default audio device on that system
although it will work with a usb sound card, also.

	With the hdmi sound card set to 100%, the hdmi-to-analog
converter puts out a sine wave at close to 1 volt peaks which is
a good reference against other sound sources.

	After doing that, I was able to get good sound from that
and the other sources that go to the mixer.

	If you are in to hardware tinkering, a good
blind-friendly thing to have is a peak-level detector.  An op-amp
or a voltage comparator chip which is an op-amp with some digital
logic stuck in to clean up the output is a great thing to put
together.

	This is not a VU meter but a device that tells you if any
part of your audio is above or below a given threshold that you
are interested in.

	Some very cheap tape recorders back in the day used to
connect a neon bulb to an audio stage in the recording amplifier
such that it would flash if one got above the maximum volume
level.  The comparator will do that for you and you can drive a
piezo buzzer or small speaker and hear click and buzzes if your
volume is too high.  I use a CD4014 quad comparator chip which
has open-collector outputs but any op-amp chip will act as a
voltage comparator if you use it in open-loop mode since modern
op-amps have enormous open-loop gain.

	Continuing with your message:

> One thing I haven't figured out about alsa in aplay -l on systems with
> more than one sound card is how to tell which of all the cards is actually
> in use at any given time among available cards.

	That's a problem I have noticed also.  Some cards show up
as card 0 and have also showed up as Card 1 at other times.  You
are supposed to be able to use udev rules to fix this but it's
been hit and miss for me.

Martin

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

