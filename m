Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 602694B75C1
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 21:48:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644958098;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2o2fmtVP05ckMqNfdY0CvvzhBImLYiAIoMNtCm1DuZc=;
	b=e4NAcoF3POGRyDjEZ972wxbYX5EVwah4R/hRjM9FC6Om7ck3Cum5CUG+uX//bv70vT+PFN
	r21CXscf2DoR5whPjZQ5dXio6bLXT1NHvaAsWU/eowGSV3djJUx0DPNlQFEqfc5gAZp2hl
	4dJ6Jv0VSEpUuPdHH9EhEdEvQm2WPKo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-92-B55JNQ3cMpyJgbQfiMTQlg-1; Tue, 15 Feb 2022 15:48:16 -0500
X-MC-Unique: B55JNQ3cMpyJgbQfiMTQlg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58A31839A42;
	Tue, 15 Feb 2022 20:48:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B7E645C9E;
	Tue, 15 Feb 2022 20:48:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8A7231809C87;
	Tue, 15 Feb 2022 20:48:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21FKlwN7007653 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Feb 2022 15:47:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C8A40C080A9; Tue, 15 Feb 2022 20:47:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C38A5C080A7
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 20:47:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A961D811E80
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 20:47:58 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-321-8ryOM241NEmIdY8EztnfEA-1; Tue, 15 Feb 2022 15:47:56 -0500
X-MC-Unique: 8ryOM241NEmIdY8EztnfEA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JytT83q0hz3w0n
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 15:47:56 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JytT833NDzcbc; Tue, 15 Feb 2022 15:47:56 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JytT82f71zcbC
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 15:47:56 -0500 (EST)
Date: Tue, 15 Feb 2022 15:47:56 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
Message-ID: <ba91505e-8a3b-e024-44a6-3b4620798086@panix.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So far as I know now calamares has had no accessibility work done on it at
all.  Manjaro has a talking-manjaro but it's out of date and you would use
architect as the installer if you can get a good download iso.


On Tue, 15 Feb 2022, Linux for blind general discussion wrote:

> Hi all,
>
> As most of you probably know, the calamares installer is the "most popular",
> (more like, "most often used") installer for Linux distros.
>
> Last I checked, and yes, I must admit, that was a while ago, the thing was not
> at all accessible. Is that still the case?
>
> I know that Ubuntu broke their installer, but Fedora's "Anaconda (Spelling)
> installer" and the TUI installers for Slint and Debian still work, as well as
> installing Arch in which ever way you choose to do so.
>
> What other options do we, the Blind Linux users have? And, no, I really don't
> count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible Coconut, etc.)
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Slint console using Alpine
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

