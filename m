Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AC0C731DDB2
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 17:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613580833;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ai9htOyXrOcgfTWI0I5d7yWW9/ZkIxCj/xC3CkjVUF4=;
	b=UsJk5ot4iJf5ohYjb0i1/L7er1MilNt5mG5aGcFWliFQ6a/wgWxZ85MPYSY7m6caoPFNkS
	4131lwosqbsvnORbMnrHcJqIRiXIelpjGBr4VLsug02gLEEp9lnAkZgCo/liZ4bxHyp+XQ
	fW54RpNM/oUiyQlJIishuKOTtEqjCno=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-587-x42W9CEhOge7XZpb7SF0IA-1; Wed, 17 Feb 2021 11:53:51 -0500
X-MC-Unique: x42W9CEhOge7XZpb7SF0IA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 502EA192CC4A;
	Wed, 17 Feb 2021 16:53:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3444310013D7;
	Wed, 17 Feb 2021 16:53:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CDFB18095CD;
	Wed, 17 Feb 2021 16:53:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGr5FO000904 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:53:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 131A4115D351; Wed, 17 Feb 2021 16:53:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A1BD115D34E
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:53:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5905186E120
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:53:02 +0000 (UTC)
Received: from gateway12.unifiedlayer.com (gateway12.unifiedlayer.com
	[74.220.211.17]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-16-IbH1us7_Mki-sEi_dhhJUQ-1; Wed, 17 Feb 2021 11:52:59 -0500
X-MC-Unique: IbH1us7_Mki-sEi_dhhJUQ-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway12.unifiedlayer.com (Postfix) with ESMTP id 0F3BB2009C70C
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 10:32:21 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id CPkSld1WjaJ23CPkSlaHlD; Wed, 17 Feb 2021 10:32:20 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:24338 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1lCPkS-003CIk-Lj
	for blinux-list@redhat.com; Wed, 17 Feb 2021 10:32:20 -0600
Date: Wed, 17 Feb 2021 10:32:19 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is this possible?
Message-ID: <20210217103219.3da4c2ef@bigbox.attlocal.net>
In-Reply-To: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1lCPkS-003CIk-Lj
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:24338
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

Yes, I have my wife set up with a graphical desktop edition of Ubuntu
and I SSH from my machine into her machine regularly to perform
backups & upgrades.  As long as you're running sshd on the graphical
desktop (and you haven't configured a firewall to block SSH access),
it should work fine.

-Tim

On February 17, 2021, Linux for blind general discussion wrote:
> Hi folks,
> Is it possible to ssh into a graphical desktop edition of Linux,
> Ubuntu for example?
> Karen
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@listman.redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

