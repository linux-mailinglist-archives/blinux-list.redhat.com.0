Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C0844FE70
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 06:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636954709;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9MDvOBLmbg6ulzIatvKpV2eQ5G1B2h6qmsJMsSZyWw4=;
	b=iD6PEwNYEIxM/oX7jeV9pTXB0F0UfaZzqhkyqzBFYwTOfIqyt4DntDfS6zaoKzT6AmQwLx
	fMEffM4tblzW/rslTQPuNW8wUc1HvmG2fcQ+VYaMZ97Htl5NuPkHmRkSYd+0qvt6MhQMwT
	2XwdbRKYFsmECTY2e5Kh/1ZM7U3PIBE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-481-J8d-o0PNOh-rBPiSE0eUrg-1; Mon, 15 Nov 2021 00:38:25 -0500
X-MC-Unique: J8d-o0PNOh-rBPiSE0eUrg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3FF5E1808309;
	Mon, 15 Nov 2021 05:38:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8EA235D6BA;
	Mon, 15 Nov 2021 05:38:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3CCB74A703;
	Mon, 15 Nov 2021 05:38:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF5c68m000601 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 00:38:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4D73D51DC; Mon, 15 Nov 2021 05:38:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 454D651DD
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 05:38:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A96B580158D
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 05:38:00 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-60-Wkt5-Dm5MB-J5meAlqTD3Q-1; Mon, 15 Nov 2021 00:37:55 -0500
X-MC-Unique: Wkt5-Dm5MB-J5meAlqTD3Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hsydb0D3Vz4N7D
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 00:37:55 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HsydZ6Sb1zcbc; Mon, 15 Nov 2021 00:37:54 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HsydZ690wzcbP
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 00:37:54 -0500 (EST)
Date: Mon, 15 Nov 2021 00:37:54 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
In-Reply-To: <2e84caa3-a3ce-d38b-b2e7-10d1d1b495bb@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111150036130.24447@panix1.panix.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<2e84caa3-a3ce-d38b-b2e7-10d1d1b495bb@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

nmh is available though that's a very different email philosophy from most
of the rest.


On Sun, 14 Nov 2021, Linux for blind general discussion wrote:

> I'm not sure about other distros, but on Fedora, my Seamonkey does have two
> menu invocations. One is the mail application and the other is the web
> browser. Both are located in my internet menu on my MATE desktop. Seamonkey
> mail will import mailboxes directly from an existing Thunderbird installation,
> and I am finding its accessibility with Orca to be quite good. Since I believe
> Seamonkey to be based on somewhat older versions of Thunderbird and Firefox,
> you may not see the calendar options, as you once needed an extension for
> that. Chat is also a separate invocation of seamonkey, so it shouldn't be in
> your main mail window either. The only thing that may possibly be considered a
> drawback is that opening a link in an email message in seamonkey will open the
> link in the seamonkey browser instead of the browser you set as the default.
> So if you want to open links in another browser, you will need to copy the
> link address to your clipboard. Other than that, I can recommend Seamonkey as
> a pretty good email application. It's not actually a bad browser either from
> my experience.
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

