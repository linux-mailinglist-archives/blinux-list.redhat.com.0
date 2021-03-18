Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E79D134112F
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 00:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616111271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=asJT23xOKZJVlRuwDz6cRXAv71dl81DjjGP+6nFV7UM=;
	b=Q73jHMQln3u6jCOgk6Do2hUadkPgVT4/cRp6/TCD3oRR+hPQnucOIwWhDjYMafBo/qv3fb
	NUGPEt/AqUmNp/EeD0Ze2w0WB78zfkzmJFuBjd8ymJHXPkBL12JzL0CjrLHRP6QcTQ7AtT
	PNmTT4MPO4oq1h/I2ChV8iS1gVfhWfU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247--UJ7O6WQMwqegDeQEM1rfw-1; Thu, 18 Mar 2021 19:47:48 -0400
X-MC-Unique: -UJ7O6WQMwqegDeQEM1rfw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 807B31084D77;
	Thu, 18 Mar 2021 23:47:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6854E5944D;
	Thu, 18 Mar 2021 23:47:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 396D14BB7C;
	Thu, 18 Mar 2021 23:47:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12INlfXo028496 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 19:47:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A60492026D65; Thu, 18 Mar 2021 23:47:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A124B2026D64
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:47:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85E6F85A5AA
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:47:39 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-21-tUamg5uBNPyLnMHWRfWz7Q-1; Thu, 18 Mar 2021 19:47:36 -0400
X-MC-Unique: tUamg5uBNPyLnMHWRfWz7Q-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 16775621C29; Thu, 18 Mar 2021 23:47:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 13842620219
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 19:47:35 -0400 (EDT)
Date: Thu, 18 Mar 2021 19:47:35 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Are Their Any Other Graphical Screen-Readers in Linux, Other
	than ORCA?
In-Reply-To: <7fad9a07-f428-f096-1a4e-2ef5589a1388@protonmail.com>
Message-ID: <Pine.LNX.4.64.2103181943340.1840295@server2.shellworld.net>
References: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
	<7fad9a07-f428-f096-1a4e-2ef5589a1388@protonmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Chime,
I am going to ask  a comparative question, but a bit differently.
Others can answer as well.
If you could work in any computer environment of your dreams, never mind 
what you think is possible, but any environment at all, how would it 
function?
what would you be able to do easily that you cannot do right now.  how 
would you access what you desire using?
Perhaps if you describe what your desires are, a bit of let's pretend, 
there might  be a layout that gets you closer.
Kare



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

