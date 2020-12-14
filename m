Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0FD9F2DA425
	for <lists+blinux-list@lfdr.de>; Tue, 15 Dec 2020 00:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1607988848;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aErKzK5O+WCqsWQOsrwjug8ctSiGY/Qp6P/fBehM3mU=;
	b=Bp8L14PWVdW8Jbp4H7M4caZwd1TZwlJcZakVAxB7/Ok3vpvCkUkoSVaarfv6hNveq2H96a
	Ti29oYacSW98U7U0ONK0icJXhJkNz38pJIRbXKgXv0I2DNmRQHGVXYRD95fEXSikbcVo18
	TEw8wkDfKODfM/RpZin8qFk1d8JB9pI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-127-spBjxErqP4GcbG-_2lky5w-1; Mon, 14 Dec 2020 18:34:04 -0500
X-MC-Unique: spBjxErqP4GcbG-_2lky5w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 051A2107ACF5;
	Mon, 14 Dec 2020 23:34:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E301C5D9DC;
	Mon, 14 Dec 2020 23:33:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 401274E58F;
	Mon, 14 Dec 2020 23:33:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BENXt2R010169 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Dec 2020 18:33:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 410632026D47; Mon, 14 Dec 2020 23:33:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CAC32026D46
	for <blinux-list@redhat.com>; Mon, 14 Dec 2020 23:33:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB76A858EEC
	for <blinux-list@redhat.com>; Mon, 14 Dec 2020 23:33:52 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-142-7n03MhAlOM2toHrgXKgbNA-1; Mon, 14 Dec 2020 18:33:50 -0500
X-MC-Unique: 7n03MhAlOM2toHrgXKgbNA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CvyQ63Rjpz1jD3
	for <blinux-list@redhat.com>; Mon, 14 Dec 2020 18:33:50 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CvyQ630v9zcbc; Mon, 14 Dec 2020 18:33:50 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CvyQ62yJzzcbW
	for <blinux-list@redhat.com>; Mon, 14 Dec 2020 18:33:50 -0500 (EST)
Date: Mon, 14 Dec 2020 18:33:50 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Introduction
In-Reply-To: <79C20A2A-0AAD-484C-95D4-29D4503833F8@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2012141831380.11474@panix1.panix.com>
References: <79C20A2A-0AAD-484C-95D4-29D4503833F8@gmail.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I found slint to be an easy install and works well post-install.  If it
will work on a machine at all, the installation comes up talking
automatically, no knowledge of timing or special keystrokes needed.

On Mon, 14 Dec 2020, Linux for blind general discussion wrote:

> Date: Mon, 14 Dec 2020 18:29:30
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Introduction
>
> Hello everyone
>
> I am a new member here. Used windows then switched to Mac, now back with windows again. Recently though, I have heard about linux and am interested to know which flavor, as there are many is the most accessible with the orca screen reader. As I am completely blind. I am completely dependent on speech.
>
> I look forward to learning more from everyone in this community. Plus gaining further knowledge with linux with the more experience here on this list.
>
> With kind regards
>
> Daniel
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

