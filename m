Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6A34AAD2A
	for <lists+blinux-list@lfdr.de>; Sun,  6 Feb 2022 01:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644107129;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0EOhgEcZxNEvH202msqcrKsvpU34cz8EdwrcvtQIs4U=;
	b=P3W0V6caywCXxIrEXxZtqoxeelIHw4aBYTJujujLR5Wis7YlI/b7IrVTG5RKdJvsJvXEJh
	nY0zK94QxJ/MhDuBrwWoWeXVObnG8lPWvaIilneQEFLHbosMQiun2Kl9s/eNnbk8KNmSZe
	b/3OQ1/jcdeMtfZg13QV1EdaFOWuZ6Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-KV62-mFlNBey8mbheAdgHA-1; Sat, 05 Feb 2022 19:25:25 -0500
X-MC-Unique: KV62-mFlNBey8mbheAdgHA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD4E11091DA2;
	Sun,  6 Feb 2022 00:25:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E3165DBBF;
	Sun,  6 Feb 2022 00:25:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A77934BB7B;
	Sun,  6 Feb 2022 00:24:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2160LDOb020934 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 5 Feb 2022 19:21:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4EDD314171FE; Sun,  6 Feb 2022 00:21:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 495C8140EBFE
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 00:21:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D6BE800B24
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 00:21:13 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
	[209.85.215.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-421-KXrflxMJPciKcVRSSU09Nw-1; Sat, 05 Feb 2022 19:21:11 -0500
X-MC-Unique: KXrflxMJPciKcVRSSU09Nw-1
Received: by mail-pg1-f171.google.com with SMTP id e16so8366515pgn.4
	for <blinux-list@redhat.com>; Sat, 05 Feb 2022 16:21:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JnnwPrBzFykl5J4ravFlnvPJT7i/NFpqO3h3nhZDA34=;
	b=KFyBNIiuAprYPs6JwN4+Jd7FlqkWZkChL94U391X9pk8bc+d35HC4FIS22C12a7Ptz
	YMLd8R4DxCFSkAtUdhcU0I60oinUPLirR080UJsXAEwiIyYDTqmsdn+0qGX/8q4V0GDW
	Tayo1/pFzYylRsi/MOXc5P1MOTqz7LhOj3o0XYlY5ShA9iGIJ4y6lHL3StSXYEQ6Nexz
	kFp0xIMUuyiZ/vq4a7WCfEHKtC8ULXp65e0JHrz8r19VVJk7KQlCstjLVBFhy+95tWV4
	qdHboh4EdVbgGB/uM5+78pNHlSFnWg3ceWhFpvLHgS8N/UakhQesubCDinvQFYjTJJMb
	DORA==
X-Gm-Message-State: AOAM5326gQIuQ0dJ7MhcLfhhZBQCFYH2sPK3XRcW7mrZGwqt0PwFuBq9
	Hr50IsVHZ/aSXufvvVf5jQ7hkKSjaG9645Vz0eUvexZV
X-Google-Smtp-Source: ABdhPJyBvktlt6f2NDXIq5O+w0VRLh/ap2d94+Xx08B07fCfpUEeS7G+MOPW1TNdQRyXY/GKODpeKbAzfchE+dQgvEg=
X-Received: by 2002:aa7:8490:: with SMTP id u16mr9618632pfn.1.1644106870177;
	Sat, 05 Feb 2022 16:21:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:b655:0:0:0:0 with HTTP; Sat, 5 Feb 2022 16:21:09
	-0800 (PST)
Date: Sat, 5 Feb 2022 18:21:09 -0600
Message-ID: <CABKqQvGdMss8Ug46AsoVF_gqbUTeX1u0cMkzMz=ztpKz7kG8Vw@mail.gmail.com>
Subject: Running Zoom on Ubuntu
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I tried joining virtual office hours on my Ubuntu machine so that I
could share that screen with my prof. The machine stopped speaking. I
closed Zoom and I was told that the video still appeared to be
streaming. Have any of you used Zoom (or other meeting software) on
Linux with Orca?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

