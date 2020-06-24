Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id D7133207A79
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 19:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593020643;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TGNeQCdE9WSOZitqYCUPaIkkKyhGyTp5j3adKB2MfaU=;
	b=T692lRneAZpe5xMQ7gLAnwkLQEaHtEZcFCNmepDrPJMN/4wAGyhfOb4b8bnmH/FSX2uk6/
	8UCwnY/SDIDSsW0Id6bPzr5DEjcILfDfzmaTnrsuAkT2ZRpqrQFhd7h+6de1qAzpuQSm+L
	HdMuA6AUSAVzxnW+0axkFCQN72lAFH0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-CmYCcMT0NKaV22tTH-_4Lg-1; Wed, 24 Jun 2020 13:44:01 -0400
X-MC-Unique: CmYCcMT0NKaV22tTH-_4Lg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5682A107ACF2;
	Wed, 24 Jun 2020 17:43:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A5B52B4AA;
	Wed, 24 Jun 2020 17:43:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1DB708758A;
	Wed, 24 Jun 2020 17:43:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OHhlZb011134 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 13:43:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C2B08F11D8; Wed, 24 Jun 2020 17:43:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEA4BF11D7
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 17:43:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2EC98805C1C
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 17:43:45 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-6-VZJh1FrjOFOpMYQFPxCJWQ-1; Wed, 24 Jun 2020 13:43:42 -0400
X-MC-Unique: VZJh1FrjOFOpMYQFPxCJWQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 8AE15541DAC; Wed, 24 Jun 2020 17:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 89F4A540303
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 13:43:41 -0400 (EDT)
Date: Wed, 24 Jun 2020 13:43:41 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: anonymity, threads, signatures, and confusion
In-Reply-To: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
Message-ID: <Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

You are aware of the history motivating the change?
Indeed, there  was a time when identifying information  was available, 
then  the list was hacked in a way that scammers started using that 
information.



On Wed, 24 Jun 2020, Linux for blind general discussion wrote:

> In reading some recent discussions, I've been completely unable to tell who was posting some of the messages.  This has caused me to be confused and discouraged.
>
> The underlying problem is the way that the mailing list handles "from" addresses, giving no information about who the sender might be.  I really think this needs to be fixed, but that is probably not a short-term goal.
>
> In the meanwhile, I implore folks to add some sort of identification to their messages, so that readers can follow the conversations without undue confusion. It isn't necessary to provide an email address, or even a full/legal name.  Just give us some way to tell who's saying what.
>
> For example, if I were worried about protecting my identity, I might use an alias such as rdm or RichM, instead  of my full name.  Instead, I plan to provide both my name and email address (as shown below), so folks can contact me off-list, etc.
>
> - Rich Morin (rdm@cfcl.com)
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

