Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 479834CDCE7
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 19:48:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646419707;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7iv69Qbckknbt2LELInfhD99DyA+Sqfsz0nDrNoT2vE=;
	b=QEfjbrfCk9hp+xzV5z0gdrT11ifaL1fRxXEGn1xJcQUUuJLHNQJxAWFNH7keI0jkmEgtnz
	n3oYPw3wok1jDdarfDs96vjXnMFGar2Xjm1xc5c+9xp6cMB+G7ySG7BUsu6ua8F6pPObLV
	WaaH9yKx0zSljslOPmqCKmrxrMg3REI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-F1W-Vr_-OC6d2-54GJj8Ig-1; Fri, 04 Mar 2022 13:48:23 -0500
X-MC-Unique: F1W-Vr_-OC6d2-54GJj8Ig-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 99AFB801AFE;
	Fri,  4 Mar 2022 18:48:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 808FB8000F;
	Fri,  4 Mar 2022 18:48:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 007E018095C9;
	Fri,  4 Mar 2022 18:48:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224ImEw7031014 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 13:48:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A8C32400E86C; Fri,  4 Mar 2022 18:48:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A49A040CFD1B
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:48:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8BE79101CC63
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:48:14 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-388-Zd8SpipXNJGBLl7ERcPBNA-1; Fri, 04 Mar 2022 13:48:12 -0500
X-MC-Unique: Zd8SpipXNJGBLl7ERcPBNA-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 425861BBE00
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:48:11 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id rIiapOCicLrZ for <blinux-list@redhat.com>;
	Fri,  4 Mar 2022 18:48:10 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:8616:d376:ace:323b]
	(2603-6080-6302-e002-8616-d376-0ace-323b.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:8616:d376:ace:323b])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id B2E411BB099
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:48:10 +0000 (UTC)
Message-ID: <94b49596-52c1-cb49-2e80-f31f68c8d082@free2.ml>
Date: Fri, 4 Mar 2022 13:48:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<Pine.LNX.4.64.2203041303520.273578@server2.shellworld.net>
	<9c284d34-9e1c-a3ac-72fc-ba0c041877ec@gmail.com>
	<CAO2sX33E7R760BEc4kn+F5U7tNCWijUSPc_PbK9-OQ+pJ1psfg@mail.gmail.com>
In-Reply-To: <CAO2sX33E7R760BEc4kn+F5U7tNCWijUSPc_PbK9-OQ+pJ1psfg@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I don't really use webmaill, but from what I've seen, RoundCube seems to 
have a pretty nice interface, and you should be able to get it to 
interface with any IMAP mailbox without too much trouble. You should be 
able to run RoundCube locally and connect it to your non-Gmail IMAP 
mailbox without too much trouble, although I can't be absolutely sure, 
since I have only set it up to connect to IMAP mailboxes on the same 
machine. I once did find a webmail that looked to me similar to 
RoundCube, but it required logging into your mailbox from a third-party 
website, and you probably don't want to do that. As for webmail in 
general, it all looks clunky to me, even Gmail's basic HTML view, so I 
can't really comment on what would be comparable to it that would best 
suit your needs. Do have a look at a local RoundCube installation 
though. As long as you have an IMAP mailbox, RoundCube should be able to 
connect with it, and it's not as clunky-looking as some I've tried.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

