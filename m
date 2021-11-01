Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E78444127E
	for <lists+blinux-list@lfdr.de>; Mon,  1 Nov 2021 04:54:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635738878;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CKd4DCCsiq2j9PKSpiHxkVT3rhpAaOZJ1/BN1ITMvZM=;
	b=e88k4vfKDON7/ysfEC5bByeMvKyrxHi/1FEG/yQa108X/0ytFLN6zpvuJ7XkunlDBnkRj4
	LT5r/b5nlQA4lcHyqJpbRO3lvO57o8ecPKLn5B5f29xFf9Z7QFx2VFfD29VBDQi/5VeG6S
	lhOz61SpIK0zr6NKCTQ9an/1L10+BaU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-ekG4S2r-NiqRQ7XTp8kLvw-1; Sun, 31 Oct 2021 23:54:34 -0400
X-MC-Unique: ekG4S2r-NiqRQ7XTp8kLvw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C71561006AA3;
	Mon,  1 Nov 2021 03:54:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEBF719C59;
	Mon,  1 Nov 2021 03:54:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5BCFE1809C84;
	Mon,  1 Nov 2021 03:54:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A13sBuq031245 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 23:54:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BFDB840CFD10; Mon,  1 Nov 2021 03:54:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BAB4440CFD01
	for <blinux-list@redhat.com>; Mon,  1 Nov 2021 03:54:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1B1F811E76
	for <blinux-list@redhat.com>; Mon,  1 Nov 2021 03:54:11 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
	by relay.mimecast.com with ESMTP id us-mta-132-WtK0TKppObCeWHxd5In8Jg-1;
	Sun, 31 Oct 2021 23:54:09 -0400
X-MC-Unique: WtK0TKppObCeWHxd5In8Jg-1
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id
	XAA04660 for blinux-list@redhat.com; Sun, 31 Oct 2021 23:46:42 -0400
Date: Sun, 31 Oct 2021 23:46:42 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: PBI - shell access via HTML?
Message-ID: <20211101034627.GD19111@nntp.AegisInfoSys.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<25068C73-5D52-4BF2-BB95-AD9DCB7672A4@cfcl.com>
Mime-Version: 1.0
In-Reply-To: <25068C73-5D52-4BF2-BB95-AD9DCB7672A4@cfcl.com>
User-Agent: Mutt/1.4.2.3i
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

most modern linux commands that are run from a shell (whether nushell or
bash or whatever) are already fairly powerful, and are easily adaptable
to creating tabular output, especially when more complex pipelines to do
that are encapsulated in a script.

probably more to the point, accessing any shell via http usually requires
a separate webserver process (shellinabox or gateone), is ajax-dependent
(ajaxterm), is a java client (mindterm), or some combination; the latter two
may render html that's weird enough to be unrecognizable by screen readers,
and the first requires a dedicated server. and all of these, along
with the general concepts of what are called "reverse shells", often
come with difficult and subtle security exposures.

since nushell is just a shell like any other, if your screen-reader setup
can parse the output of any other shell (like bash), it can similarly
parse the output of nushell, i would think. and using the relatively
well-secured ssh setup, could be just as effective.

On Sun, Oct 31, 2021 at 09:03:03AM -0700, Linux for blind general discussion wrote:
> I have a Partly Baked Idea (PBI) regarding shell access via HTML.  In reading about nushell (https://www.nushell.sh), I was intrigued by the fact that many of its commands (e.g., cal, ls) output data in tabular form.  This allows other commands to process the data, making certain sorts of pipelines more effective.
> 
> My PBI is that, if nushell were accessed via HTML, a screen reader could let a blind user navigate the rows and columns of any tabular output.  I'd like to get some early feedback on this idea.  Does anyone think it might be useful?  What issues would need to be resolved?  (Inquiring gnomes need to mine...)
> 
> - Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

