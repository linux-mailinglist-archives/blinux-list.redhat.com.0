Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 99D5C34EC93
	for <lists+blinux-list@lfdr.de>; Tue, 30 Mar 2021 17:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617118523;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PtjyZMb001WAkB6xYsFBl3tZySH6PUfz8OUGje1i9hI=;
	b=Ptu/LdHKaGgQ7VqNAfiLW34/Cc0oQIDCWrAbBV3kZYpxmgX6ZxN8oYJNpgqLK3c+l+gOgI
	ThkyhbiRY6i5PBVMe2scYnLtpb2kO/WB3r6GuGkCO3gevB8B3Ba4nRp3408kvkY0f/VDhK
	kTYqO4HCZklck7rsU/22nBiu5XsV1L8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-MWaClWLoO_a4zXNd93hL4Q-1; Tue, 30 Mar 2021 11:35:21 -0400
X-MC-Unique: MWaClWLoO_a4zXNd93hL4Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D950610866A4;
	Tue, 30 Mar 2021 15:35:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A51419D80;
	Tue, 30 Mar 2021 15:35:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 907164BB7B;
	Tue, 30 Mar 2021 15:35:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12UFZ5MT001821 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Mar 2021 11:35:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 52CD66CA80; Tue, 30 Mar 2021 15:35:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D0086CA8F
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 15:35:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D75F385A5BE
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 15:35:02 +0000 (UTC)
Received: from gateway2.unifiedlayer.com (gateway2.unifiedlayer.com
	[69.89.22.1]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-183-WQE53qPwPJWQ26CaMdDdww-1; Tue, 30 Mar 2021 11:34:59 -0400
X-MC-Unique: WQE53qPwPJWQ26CaMdDdww-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway2.unifiedlayer.com (Postfix) with ESMTP id 2AC41201A08CC
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 10:34:57 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id RGOOljhcYkIbjRGOPlBqj6; Tue, 30 Mar 2021 10:34:57 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:63763 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1lRGOO-003BYs-QV
	for blinux-list@redhat.com; Tue, 30 Mar 2021 10:34:56 -0500
Date: Tue, 30 Mar 2021 10:34:55 -0500
To: blinux-list@redhat.com
Subject: Re: reddit clients
Message-ID: <20210330103455.3bcdde17@bigbox.attlocal.net>
In-Reply-To: <20210330.145206.677.2@[0.0.0.0]>
References: <20210330.145206.677.2@[0.0.0.0]>
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
X-Exim-ID: 1lRGOO-003BYs-QV
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:63763
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  There are several CLI reddit clients.  The granddaddy of
them was `rtv` but the maintainer stopped development.  They have a
page listing some forks/alternatives:

https://gist.github.com/michael-lazar/8c31b9f637c3b9d7fbdcbb0eebcf2b0a

TUIR was one fork that I've heard of but it didn't make it; "TTRV"
seems to be an active fork though this is the first I've heard of it;
and they list `reddio` as such a viewer written in shell-script (not a
fork).

Last time I used `rtv` it required some OATH tokens passed around via
the browser first to get the initial login that you handed off to
`rtv` but after it had successfully connected once, it worked
uneventfully from there out.

Hope this helps,

-Tim


On March 30, 2021, Linux for blind general discussion wrote:
> Do we have any accessible reddit clients for linux? Command line
> preferable, but not necessary. Thanks.
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

