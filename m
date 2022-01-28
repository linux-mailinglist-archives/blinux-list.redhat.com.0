Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD0C49F02F
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 01:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643331448;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jaK2Do5jqBHKRF9k9aqMpKi1ow4VtJM6h+qqLCSr+iE=;
	b=H30AtLtjv2L+6xEMNDNv1SKI0jSL8nbjFX7JAeWZHttrzOzXbUE3Nte0YgnTnBS5l8cr3c
	B0hHA3nTQvm3f0FXW+6ohKEPEMiqIuG6qs7f+3+4y5sQCWTZgIIzZsizpl3Bz5dr6hgk3N
	Q9iD6D03dxXFUtCfF1I1ISfOMshrFZ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-29-LnsusmJZO6-gyDJbDHuFzg-1; Thu, 27 Jan 2022 19:57:24 -0500
X-MC-Unique: LnsusmJZO6-gyDJbDHuFzg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E98F61853020;
	Fri, 28 Jan 2022 00:57:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F22D156F83;
	Fri, 28 Jan 2022 00:57:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 086B91809CB8;
	Fri, 28 Jan 2022 00:57:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S0v2bl028230 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 19:57:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7DC4048FB04; Fri, 28 Jan 2022 00:57:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A2C74021B2
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 00:57:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E8EC8039D5
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 00:57:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-577-fR8OOTxtO7CpntmHUJjfKQ-1; Thu, 27 Jan 2022 19:57:00 -0500
X-MC-Unique: fR8OOTxtO7CpntmHUJjfKQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JlJvH0ZMJzt6X
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 19:56:59 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JlJvH00J0zcbc; Thu, 27 Jan 2022 19:56:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JlJvG6nCVzcbP
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 19:56:58 -0500 (EST)
Date: Thu, 27 Jan 2022 19:56:58 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
In-Reply-To: <55be71e1-747d-412b-148-3b1ba95fdfa@panix.com>
Message-ID: <63fbe17c-eb4d-d5df-f68-c614c3a48cad@panix.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<55be71e1-747d-412b-148-3b1ba95fdfa@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you mean out of the box is also run inside your vm, what I wrote here
may be accurate.  If you mean by out of the box an install outside your
vm, it's possible you don't have your vm completely correctly configured
yet.


On Thu, 27 Jan 2022, Linux for blind general discussion wrote:

> Could it be accessibility needs to be enabled first before you can run
> orca?  If so, hit f4 once to toggle accessibility on then try alt+f2 orca
> or alt+f2 orca --replace or alt-super-s.
> One of those three may work.  It would be nice if f4 would make a rising
> or falling set of tones to let users know if they toggled accessibility on
> or off or if f4 made no sound, accessibility wasn't effected.
> I could not get Endeavouros talking at all on bare metal so can understand
> your frustration.
> That if it ever works will need a few minutes with sighted assistance.
>  On Thu, 27 Jan 2022, Linux for blind general discussion wrote:
>
> > Dear List,
> > This is my third attempt at Fedora.
> > I setup a VM on my Mac to try
> > Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso.
> > I pressed alt+F2, typed orca and enter.
> > I get no speech.
> > What can be wrong?
> > The same thing happened with Fedora Workstation 35.
> > I?m about to give up and stick with Accessible Coconut and Linux Mint 20.03.
> > They both work out of the box with no problems.
> > Thanks,
> > Rob
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

