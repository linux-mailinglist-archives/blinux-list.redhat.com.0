Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE00362C7D
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 02:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618620881;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TD73+sLPMydrfF6oqfhceWke8Nv9Geyrvc6E6Ty2nEY=;
	b=KQBydVAsH1625TW8HFmZcqY9OkvHxCBdo3+xeeFv1ZYeMmeMkOirDlSCyHBG5nTW3pwipV
	ioZbe7g7kMDV8vrc92CfNyWuMrBah/D+MXXSOdBOJnOD28qEFRpsuIUpZEC67WpbrI2NiI
	sWYQNEvk7aJQmU2hs1YPawFauaGc4MY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-1Sf9KFT-ONeNbs-A8ZgsIQ-1; Fri, 16 Apr 2021 20:54:39 -0400
X-MC-Unique: 1Sf9KFT-ONeNbs-A8ZgsIQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD6231006C8F;
	Sat, 17 Apr 2021 00:54:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00CE060BE5;
	Sat, 17 Apr 2021 00:54:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC8E11806D15;
	Sat, 17 Apr 2021 00:54:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H0sPxs024190 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 20:54:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BE08F20FE6DA; Sat, 17 Apr 2021 00:54:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B90BB20FE6D9
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 00:54:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BA128002E2
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 00:54:23 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-483-DpzgGtUWO5KccBjcj3EWtA-1; Fri, 16 Apr 2021 20:54:21 -0400
X-MC-Unique: DpzgGtUWO5KccBjcj3EWtA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 07115621C36; Sat, 17 Apr 2021 00:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 01725621C27
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 20:54:19 -0400 (EDT)
Date: Fri, 16 Apr 2021 20:54:19 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
In-Reply-To: <161861745773.6.10221248550300079442.5937580@slmail.me>
Message-ID: <Pine.LNX.4.64.2104162050360.2352872@server2.shellworld.net>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

May I ask a question?
Does not your email client allow you to associate a text editor?
By way of example, the Linux shell service I use has both Pine and 
Alpine, likely others as email client options.  Additionally, both pico 
and nano are here as editors, associated with the email client, plus a 
spell checker.
Does not your platform provide something comparative?
Kare



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

