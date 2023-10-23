Return-Path: <blinux-list+bncBDP7P6HU4IERB7HY3GUQMGQEA3746EA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAED7D38B8
	for <lists+blinux-list@lfdr.de>; Mon, 23 Oct 2023 16:00:29 +0200 (CEST)
Received: by mail-lj1-f197.google.com with SMTP id 38308e7fff4ca-2c520e0a9a7sf33415601fa.3
        for <lists+blinux-list@lfdr.de>; Mon, 23 Oct 2023 07:00:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698069629; x=1698674429;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:subject:to:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=khmLdPtwVFsqgzgYYUVxfcVZJViNX2/N2MwMdePLUSw=;
        b=wu8PmVAcCzaow5lfu0L/Xxz25MgUfgjD+8rN96tL/q3xrm9Cf1j3a5XBHsO0f9XS5L
         5aQ5eey9Xkw8/jO3XGCIuosvBPHbTPBu2KBe5uEhJBshEOrK1RjAUtXJjU/EzVS+vMwC
         /u1VCQKZRVPUlXJgSfvYlSCiKvAYeRmq5LHJzuA6gr+gmiH9YiCMVPHn89y3S+wBSUWr
         rI18XWOXzEmsKAWIguKZLYzDJe5rcip2KLiHf65W/Dx283sY49J4tuSC6AWaiDXIt5RQ
         mkvO54SQ8VW1WrayFW+OLLr9GGLs6wOxM+eqcIRW1FrzGmGlTN/yelu4zWihDFOtYxAA
         pknA==
X-Gm-Message-State: AOJu0Yw0YfGv53LxpUS13kJWoKjzL+tcrkbYJ4UJnOj2IQmCzWlzUBvl
	BH38ItefJgU0VOqSntvePmvpGg==
X-Google-Smtp-Source: AGHT+IEn+zlYCM6E/Yd8UrczYILCPjnju9u2Vw1bLt5IZF/elRIMZ3QXF2BN52iowsyylnFziJw6Hg==
X-Received: by 2002:a2e:a589:0:b0:2c5:21e3:f209 with SMTP id m9-20020a2ea589000000b002c521e3f209mr6206680ljp.23.1698069629004;
        Mon, 23 Oct 2023 07:00:29 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:600c:1d07:b0:406:5e86:ad61 with SMTP id
 l7-20020a05600c1d0700b004065e86ad61ls946592wms.0.-pod-prod-05-eu; Mon, 23 Oct
 2023 07:00:27 -0700 (PDT)
X-Received: by 2002:a5d:4fc1:0:b0:31f:4173:2ac8 with SMTP id h1-20020a5d4fc1000000b0031f41732ac8mr6886200wrw.18.1698069627282;
        Mon, 23 Oct 2023 07:00:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698069627; cv=none;
        d=google.com; s=arc-20160816;
        b=HqHOcKMxJR4woEvZ8JVfkE+dOJ1fVFKfKJTlt6bS8hSs9cTQQo7Y9dPtK2TCmIkgml
         2beh6Srsf+aoqiD4PNSZaDTkwtiyd9Q3sb35ttfL1lRVl4T41Y8z8M2dJgoO9w7kb5V3
         q8+9Bzizho0GLDOoVFE5QniSoEVZHsVQ++9ulB2g5R97fDaTzryBDqtzkist0BUxn9k3
         jqK0cEFVlcvctoJBfC3bu7qd5oikE85UeyUtXGJBb1S7ozWMLpr8MHkrj73nKF5IOxM4
         jPDZMRiaBhf0h4iWSjZl86VBhAEOetI+SNGHrwhVMkRv4qq93IAZclioe14hWQrgtGba
         /2Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:subject:to:from
         :delivered-to;
        bh=khmLdPtwVFsqgzgYYUVxfcVZJViNX2/N2MwMdePLUSw=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Vzpy+FIK2RlcqBqyx1Nz6aBVCkh7BKb5DbLZoST64aTKCIcJXUHDVEMeuwUYm8Ina6
         g2h/braT3OjCl4ymI0ddYKLzgQhLancfsME2ws0zARs4EVpRzSKpITuoNkISjWKoPqna
         Md9VM6xlL/QoCYYmmhUD6Ev4/qIcwEfI3aQaOddLHWHSXul598uPhfOIBbYfgB7EBjVH
         xsIrnyBjCD0WZfZl1lk0tKP40ssWA1dVFGGjOp5ZnKAY/58F8cokZvybdTEOeqp4FJGc
         M6LeIXQ31JPuTk6ldM59xHURw518XNGgCmPcEAOuCVmKkoOWRp0wIh+WXQ1GD2MBY72Q
         qawg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.32 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id o8-20020a056000010800b0032d5cfd78a2si4465209wrx.336.2023.10.23.07.00.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:00:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.32 as permitted sender) client-ip=65.20.63.32;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-652-0p4n-WipNTWuZNlqEiiP-A-1; Mon, 23 Oct 2023 10:00:24 -0400
X-MC-Unique: 0p4n-WipNTWuZNlqEiiP-A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5670A857A85
	for <blinux-list@gapps.redhat.com>; Mon, 23 Oct 2023 14:00:24 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 52E33492BE2; Mon, 23 Oct 2023 14:00:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AACA492BE3
	for <blinux-list@redhat.com>; Mon, 23 Oct 2023 14:00:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27B56816522
	for <blinux-list@redhat.com>; Mon, 23 Oct 2023 14:00:24 +0000 (UTC)
Received: from altprdrgo04.altice.prod.msg.synchronoss.net
 (altprdrgo04.altice.prod.msg.synchronoss.net [65.20.63.32]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-655-xUcIHYulN52HgDhqsoe8ng-1; Mon,
 23 Oct 2023 10:00:20 -0400
X-MC-Unique: xUcIHYulN52HgDhqsoe8ng-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 64D3D1350C191802
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvkedrkeeigdejtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffugggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhkedtkedtleejtdevhffgueelieevveffudeileeiffeujeetleeludekkefhueenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiirdhlrghnpdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz.lan (47.217.109.117) by altprdrgo04.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 64D3D1350C191802 for blinux-list@redhat.com; Mon, 23 Oct 2023 10:00:19 -0400
Received: from martin by wb5agz.lan with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>)
	id 1quvTZ-0001AH-S6
	for blinux-list@redhat.com; Mon, 23 Oct 2023 09:00:13 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: WSL using rsnapshot to copy to a Local Drive
MIME-Version: 1.0
Date: Mon, 23 Oct 2023 09:00:13 -0500
Message-Id: <E1quvTZ-0001AH-S6@wb5agz.lan>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4479.1698069613.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.32 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Subscribe: <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>,
 <mailto:blinux-list+subscribe@redhat.com>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

I'm trying to backup my Windows10 world to a new SSD which is
formatted for Windows and shows up as drive f in Windows, so far,
so good.  I can even see it in ubuntu WSL if I do ls on /mnt/f
from the ubuntu instance that is running.  It's obviously mounted
since one can see the volume information file from /mnt/f.  I've
already learned that if there is no drive recognized there, /mnt
lists f as a directory since it is meant to be a mount point.

	I even did mkdir /mnt/f/hpwin and now have that directory
so the plumbing works but rsnapshot is still not happy for some
reason.

	So, we should be ready to rock and roll with a rsnapshot
of the Windows drive which is everything under /mnt/c copied
faithfully to the currently empty space which is drive f.  When
done, the tree structure of F starts at hpwin and should be a
copy of the same directory in c.
One of the lines from /etc/rsnapshot.conf which is creating the
squawk of no destination given is as follows:

backup	/mnt/c/ "Program Files" /mnt/f/ "hpwin"/

/mnt/c/ "Program Files" is the source directory and
 /mnt/f/ "hpwin"/
should be the destination but that's not what rsnapshot seems to
think.  In Windows, files with spaces in their names are as
common as grains of beach sand.  This is the rsnapshot.conf file
that the system generated and it seems happy with the source
syntax.  I'm just trying to imitate the destination syntax based
on what the source lines showed.  In f, "program files" should
show up under "hpwin/"

So, what am I missing here?

	Thanks for any constructive ideas as I know I'm close but
syntax is one of the biggest headaches since it only takes one
typo to crash and burn.

Martin McCormick

