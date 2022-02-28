Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BF84C6092
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 02:07:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646010468;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tD1+PMaPjYjaAClgmiSyYZirFLFrB1iVkqOzYi1XQbA=;
	b=E76D9cSP24zeyrntXR+rOPmPe7FmsYcGYYylC3Qxff2uSu8//e7eH9vsqux8ANGU9jAacZ
	+KnYFh8BleJ5dwDwIekna6x6tvoF4A//Dpm2gnCvmt7vl2le2eQKICpsPLBH277rzwG+gh
	E4JiCWMnlYUUyZ9GItkon/9bXe3sSno=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-201-b5hcG9wyMEeb2-fs-MVukQ-1; Sun, 27 Feb 2022 20:07:44 -0500
X-MC-Unique: b5hcG9wyMEeb2-fs-MVukQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 372531091DA0;
	Mon, 28 Feb 2022 01:07:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A8C25D9F3;
	Mon, 28 Feb 2022 01:07:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B74144ED27;
	Mon, 28 Feb 2022 01:07:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21S17ZtX025103 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 20:07:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 68BDE2026D64; Mon, 28 Feb 2022 01:07:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63CD72026D4D
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 01:07:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F410329ABA39
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 01:07:31 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-637-DrYvkadJPLeB_1gJ04hI8A-1; Sun, 27 Feb 2022 20:07:30 -0500
X-MC-Unique: DrYvkadJPLeB_1gJ04hI8A-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 7FE9E1BBDFB
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 01:07:28 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id vdZH0XKBU9AA for <blinux-list@redhat.com>;
	Mon, 28 Feb 2022 01:07:27 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 754491BB0A1
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 01:07:26 +0000 (UTC)
Message-ID: <aa4a4dd9-4707-95d9-1db0-14ec1a715b0a@free2.ml>
Date: Sun, 27 Feb 2022 20:07:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Voting: Which game would you like to have on Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
	<3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
	<CAO2sX303T7OgFDkL5qZwAwDc2T1miTVrrAaB24EZ=i-R8H6syw@mail.gmail.com>
	<92f91c3f-56f6-ae03-0f4e-d52c3fc64daf@free2.ml>
	<CAO2sX321e0PL969ePjSzSKvy=HxDoueBc-P2jFwS50sM+ZR6AQ@mail.gmail.com>
	<57d14a3d-be66-d3ed-51f2-78a5cee23d06@free2.ml>
	<CAN8Cudgf03ND87hvLuabqwX8Yni_MTBraSxWN5s4P=ipwux=2A@mail.gmail.com>
In-Reply-To: <CAN8Cudgf03ND87hvLuabqwX8Yni_MTBraSxWN5s4P=ipwux=2A@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It was primarily designed in 1985 by Microsoft to make the use of IBM
> personal computers easier, for those who were intimidated by MS-DOS in its text only glory


It was originally developed in 1981 by Xerox Corporation, and I believe 
they called it Rooms at that time. Microsoft, as has been their business 
strategy from day one, stole the technology and played their little game 
of keep-away with it, just as they did with DOS before it, which was not 
theirs either.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

