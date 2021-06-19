Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 51B093ADB10
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 19:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624123499;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5hH7i/1SbIScgqdhw30QjGE2AYYHFMHffmyqUxwhCtM=;
	b=M7a6aaaSiH1oYi3rq6zTZ/nAUXzFo+DHDI5hSLCpE8I9mS4Rf3sMLW7ufRAJYtrkSggOQE
	eW/ixpYM2FoLJ13TWXpL8rgedmUU63g6Y2HAkd/ZcqRPgW4bRdOIONBGmpw+2lXI2Md4i8
	ledz9lhjCinzhfmB+3KU3h42ikjIETU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-148-dyBfP83dPcKq5TOK6aV8HQ-1; Sat, 19 Jun 2021 13:24:57 -0400
X-MC-Unique: dyBfP83dPcKq5TOK6aV8HQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 815481084F4B;
	Sat, 19 Jun 2021 17:24:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3692F5C261;
	Sat, 19 Jun 2021 17:24:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4E0631809C9A;
	Sat, 19 Jun 2021 17:24:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JHMbH2018665 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 13:22:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4662A110FC09; Sat, 19 Jun 2021 17:22:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 414A0110FBF1
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 17:22:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4688A89C7DB
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 17:22:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-28-OXhieui2PYG4FQsgBLMY8A-1; Sat, 19 Jun 2021 13:22:30 -0400
X-MC-Unique: OXhieui2PYG4FQsgBLMY8A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4G6jKK2PYszQmL;
	Sat, 19 Jun 2021 13:22:29 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4G6jKK1JwPzcbc; Sat, 19 Jun 2021 13:22:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4G6jKK0yJ5zcbV;
	Sat, 19 Jun 2021 13:22:29 -0400 (EDT)
Date: Sat, 19 Jun 2021 13:22:29 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible linux distro for raspberry pi?
In-Reply-To: <CAO2sX32GdWh4kcy1eA=g+s287oYsZm2ZE+gsg0UOMLVO0-6XAQ@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2106191320550.21342@panix1.panix.com>
References: <CAO2QrD4sNDb913pvuHF1UXQmkTa96kwfyPYz+tbW8OAgSahBTw@mail.gmail.com>
	<CAO2sX32GdWh4kcy1eA=g+s287oYsZm2ZE+gsg0UOMLVO0-6XAQ@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
Cc: Daniel Nash <dnl.nash@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jenux still has active support.  Since I have no pi, I've not had an
opportunity to see how well it loads onto a pi for an operating system
though it's supposed to be able to do that.


On Sat, 19 Jun 2021, Linux for blind general discussion wrote:

> I'm not sure what you mean by setup screen in this context, but as far
> as I know, Stormux is the only Raspberry Pi image that's actively
> maintained and comes pre-loaded with blind accessibility already
> setup.
>
> That said, several users have had success setting up espeakup or
> Ffenrir on CLI-only images from several distros over ssh, and recent
> versions of Raspbian's full images are supposed to have a keyboard
> shortcut for enabling Orca(though reviews are mixed on how well this
> works and how well Orca works with the Raspberry Foundation's Pixel
> skin of LXDE, though people have reported successfully getting Orca
> running with Mate on higher ram models of the Pi 4.
>
> You might also want to check out the Raspberry VI website and mailing
> list, which are dedicated to blind accessibility on the Pi and double
> as a general low-vision hobby electronics blog and mailing list.
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

