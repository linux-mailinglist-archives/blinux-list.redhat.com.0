Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9914D4B2B84
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 18:15:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644599742;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x6pniVfxvq3773ut8NwV7bD1BgF24VRK9VnfjPyajp8=;
	b=Tj8TPUuhShkLtwTD0MHUSPHCRTg5bgkGQUIUA8LBjySPezkT/H1dvjegbkDy1gX7Ity0Sn
	QnmVrRwMdZaha5pxgQILlaSQhECc7D1DxHgXd9M7QQQwh2bO7xwt6npuAHuAyxZwInkfdj
	MRg1MTt3FTHl7C2SnTeld9mW/dS4GiA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-502-HwUZyMvpPRGfUj7sSJj-0A-1; Fri, 11 Feb 2022 12:15:39 -0500
X-MC-Unique: HwUZyMvpPRGfUj7sSJj-0A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D5C71091DAE;
	Fri, 11 Feb 2022 17:15:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C56EE5E4A9;
	Fri, 11 Feb 2022 17:15:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 70C231809CB8;
	Fri, 11 Feb 2022 17:15:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BHBB8Z004753 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 12:11:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D054C40885BD; Fri, 11 Feb 2022 17:11:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CCB0540885BB
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 17:11:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC6053C11C6E
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 17:11:11 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-99-nyjyPHl-Ob-Lm3hYUwNaeg-1; Fri, 11 Feb 2022 12:11:09 -0500
X-MC-Unique: nyjyPHl-Ob-Lm3hYUwNaeg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 89D746201A4; Fri, 11 Feb 2022 17:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 866B96200F0
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 12:11:08 -0500 (EST)
Date: Fri, 11 Feb 2022 12:11:08 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Coqui TTS has blew my mind!
In-Reply-To: <6fac56cb-70aa-f564-36d9-201135fbd08a@gmail.com>
Message-ID: <Pine.LNX.4.64.2202111204190.691543@server2.shellworld.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<1dbf9974-8873-b5ca-1ea0-9e77047677ff@protonmail.com>
	<Pine.LNX.4.64.2202101716160.517958@server2.shellworld.net>
	<6fac56cb-70aa-f564-36d9-201135fbd08a@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

First, this thread began with an effort to showcase a tts tool, by 
not providing download links so that *any* Linux user could sample them.
Someone decided, instead of being universal to blame html5, which exists 
in command line browsers as a plug in, assuming the source site actually 
uses html links...which it does not.
The hijacking came by blaming this lack of inclusion on standards, which 
themselves do not encourage Linux be used as a test platform.
So the standards you are shifting focus onto do not even consider Linux 
worthy of being incorporated tested or considered when those developers are building for .



On Fri, 11 Feb 2022, Linux for blind general discussion wrote:

> First off, no one is projecting their choices onto anyone else. You are the 
> one who hijacked this thread and made it something it never was intended to 
> be. After this hijacking took place, we provided work-arouds, possible 
> solutions and real-world scenarios that could help, but you still say we are 
> projecting our choices onto others. No, we are simply working with things as 
> they are. As it turns out, text mode is full of inconsistencies and is 
> severely limited in what it can do. The good news is that unlike Microsoft 
> and other too big to fail tech giants, no one takes any of this away if it's 
> what you like. And if you don't like the way it works, it can certainly be 
> changed to suit your specific needs. Once again, it is not the fault of the 
> standards bodies who try to be sure things work as well as they can on the 
> most software, and it is not the fault of web developers who do their best to 
> comply with standards. It is simply limitations and non-adherence to open and 
> free standards in the browsers you are choosing to use, which can and should 
> be overcome at the software level. If you don't like something, fix it or 
> propose the necessary changes. It's that simple.
>
> ~ Kyle
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

