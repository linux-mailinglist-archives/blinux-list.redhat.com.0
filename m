Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B784828D7
	for <lists+blinux-list@lfdr.de>; Sun,  2 Jan 2022 01:37:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641083878;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8h1JxYseSt/RfC9GMb0keLdUOjVJ4ehGcB/TCkQxfpA=;
	b=RHvAx3IA0yfH2M94W8Gdlo6JbYYfc/sb2xONY84V5Qm+ujeE7FGFjYIEvmScGVnPBMYo4j
	/ivPraD5tk0y/LDKZPmMtlKQ0kXcnEWY67yNhnPUyu8g0NWOIsJPd9ExwD3+T5tgsoQlEZ
	dmv5fdsH9/l6Rs3oUQDBNYsRZT51FMo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-221-rMzQXBnyPWe_Af3fTH7sfA-1; Sat, 01 Jan 2022 19:37:55 -0500
X-MC-Unique: rMzQXBnyPWe_Af3fTH7sfA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90C152F25;
	Sun,  2 Jan 2022 00:37:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FF57104A9F3;
	Sun,  2 Jan 2022 00:37:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E349418095C9;
	Sun,  2 Jan 2022 00:37:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2020bRMU000882 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 19:37:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8C80E1410DD5; Sun,  2 Jan 2022 00:37:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 88803140EBFE
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 00:37:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73519811E76
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 00:37:27 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-196-7nDN-cubMvGMBm4TiTLPmQ-1; Sat, 01 Jan 2022 19:37:25 -0500
X-MC-Unique: 7nDN-cubMvGMBm4TiTLPmQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JRKhj32d8z3yB9
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:37:25 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JRKhj2Ddyzcbc; Sat,  1 Jan 2022 19:37:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JRKhj1qx2zcbC
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:37:25 -0500 (EST)
Date: Sat, 1 Jan 2022 19:37:25 -0500
To: blinux-list@redhat.com
Subject: archlinux and pulseaudio
Message-ID: <cc5a1a34-5d16-e4bf-cd5-80988090af45@panix.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

pulseaudio has vlc and mplayer blocked from playing anything on my system
though pulseaudio hasn't blocked alsa yet.  Does any way around these
roadblocks exist?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

