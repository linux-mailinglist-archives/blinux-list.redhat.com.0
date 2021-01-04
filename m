Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id ACE812E8F68
	for <lists+blinux-list@lfdr.de>; Mon,  4 Jan 2021 03:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609727020;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l7yxAgG0m/1BJy34CG1dFaZ1sWDlpKDROz4kAk08M6A=;
	b=FDy/BMmvoBXqY/C88i/nO+XPFdmhTS1w2fu0L8+/KV1D0s2lPve3555GJUbiHOLOtJn5V3
	OXZnBQqZ1/nnWsGdKbBrC2MUoZc4VaTZXVhw3lsLlW1QDr9YI+X9LBFH7+XRRU37bstuG6
	2HbD8tcW97awBATJYYuzOHnxHJPNCj4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-74-t2J34KntMZWtJBRC5YtQbA-1; Sun, 03 Jan 2021 21:23:38 -0500
X-MC-Unique: t2J34KntMZWtJBRC5YtQbA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A336107ACE3;
	Mon,  4 Jan 2021 02:23:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A7441A49B;
	Mon,  4 Jan 2021 02:23:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A896E4A7C6;
	Mon,  4 Jan 2021 02:23:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1042NJPx021472 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 21:23:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9C118112D17B; Mon,  4 Jan 2021 02:23:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97386112D178
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 02:23:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 240438007DF
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 02:23:17 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-396-rxQ2PqptN4ukyAGdc6u5dQ-1; Sun, 03 Jan 2021 21:23:15 -0500
X-MC-Unique: rxQ2PqptN4ukyAGdc6u5dQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4D8KDL6B59z1W4C
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 21:23:14 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4D8KDL5ZKfzcbc; Sun,  3 Jan 2021 21:23:14 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4D8KDL5GvRzcbW
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 21:23:14 -0500 (EST)
Date: Sun, 3 Jan 2021 21:23:14 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speech output log
In-Reply-To: <d79b90e0-c23c-20e9-7313-d54c5cddbef8@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2101032118520.5652@panix1.panix.com>
References: <d79b90e0-c23c-20e9-7313-d54c5cddbef8@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

dmesg | grep -i "codey"
will show you what happens as the speech server starts up.
After that, if you have a man page or info page or /usr/share/doc/codey/ 
directory check to see if anything interesting lives there.
With a man or info pages sometimes configuration options and configuration 
files are identified.  Good idea to read through these to see if any of 
them can solve your problem(s).



On Sun, 3 Jan 2021, Linux for blind general discussion wrote:

> So I'm using kodi on my laptop and need to get messages that kodi 
> screenreader outputs. Is there a way I can find this log because I have no 
> clue what to monitor with tail.
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

