Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A565F4A681E
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 23:41:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643755300;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=afXgFwV7lB66/c7Hamy49bQKGSKMufiEaBogbQPreaA=;
	b=OtTzMKn6YsFHc2d5xel5RqnHP8PNOGfQ1W6ZVPR+1P/G2sowxJroEW3Jvpbm8Lz30pEuOy
	iIC+Rh0wtfvjJdkq2E+HfGa/zaEpPpqdJRlKnUHd0tcILPK7fVtc+bbE7v8jKiKMyhdEwg
	aqdhF7NNb5Z+20/u384pvHamQUG2xh8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-390-iYfYnlSbM2yiYpNkSs_GGA-1; Tue, 01 Feb 2022 17:41:36 -0500
X-MC-Unique: iYfYnlSbM2yiYpNkSs_GGA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 514221091DA0;
	Tue,  1 Feb 2022 22:41:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C797B6ABBF;
	Tue,  1 Feb 2022 22:41:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A86A718095C9;
	Tue,  1 Feb 2022 22:41:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211MfDBN020022 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 17:41:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A9330401E37; Tue,  1 Feb 2022 22:41:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5736401E2A
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 22:41:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9141485A5A8
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 22:41:13 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-204-oTRpX2LAPMqbZfLubvG8yw-1; Tue, 01 Feb 2022 17:41:11 -0500
X-MC-Unique: oTRpX2LAPMqbZfLubvG8yw-1
Received: from [192.168.116.128] (unknown [176.230.58.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 339E638B11A5
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 22:41:10 +0000 (UTC)
Date: Wed, 2 Feb 2022 00:41:08 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SSH server authentication (was Re: Remaining DecTalk Issues in
	Speakup?)
In-Reply-To: <676174e9-5e3b-f5e8-9993-e8ff1810fa0@hubert-humphrey.com>
Message-ID: <alpine.DEB.2.11.2202020036350.1960@debian.work>
References: <bfd3d4b4-13fe-acc4-406a-87cfae17403d@hubert-humphrey.com>
	<alpine.DEB.2.11.2202011838480.1960@debian.work>
	<676174e9-5e3b-f5e8-9993-e8ff1810fa0@hubert-humphrey.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Tue, 1 Feb 2022, Linux for blind general discussion wrote:

> Hi Jeff: Yes its Unstable. Usually any1 here needs a dot pem file to get in.

hmm OK well you may want to look at 
/usr/share/doc/openssh-server/changelog.Debian.gz for any package changes. 
I'm not running Syd anywhere so can't be of much help.

> For some reason, even though openssh is installed, it doesn't tab-complete, 
> so I cannot give you a version number.

Firstly, openssh-server is the package name, the binary is called sshd. 
And it's in /usr/sbin which won't be in a regular user's path.

If you want to see the package version for any package, you can run:

dpkg -s openssh-server

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

