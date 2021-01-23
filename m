Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 60D463013A4
	for <lists+blinux-list@lfdr.de>; Sat, 23 Jan 2021 08:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611385300;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dyJEjsaX8oEMUf3BxUFXw52wejbMx7liJXjukpm2MH4=;
	b=AFxnNDi/x+EdJgNGCe0TXv1FubDp7Sa+vmHzvYuBSqGmbEixI0nDFs8IvK7HxDSGIkTeY1
	CUc2cVYDThQ6TCUScPkXqlI/QqFlmQppEyTigYM2DBSjPTSuj8pcGXa8/RXUhrb2nrK9jc
	A+eRcWZctQDWlSjIN/W30pLhgis+/gE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-102-mZRe9MJxMqeLGevhM8epGA-1; Sat, 23 Jan 2021 02:01:35 -0500
X-MC-Unique: mZRe9MJxMqeLGevhM8epGA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7E4110054FF;
	Sat, 23 Jan 2021 07:01:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FF45100AE43;
	Sat, 23 Jan 2021 07:01:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5395D1809C9F;
	Sat, 23 Jan 2021 07:01:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10N6wucq005218 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 23 Jan 2021 01:58:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E4BE3E2A76; Sat, 23 Jan 2021 06:58:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFC47E77AB
	for <blinux-list@redhat.com>; Sat, 23 Jan 2021 06:58:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 900F5811E76
	for <blinux-list@redhat.com>; Sat, 23 Jan 2021 06:58:53 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
	by relay.mimecast.com with ESMTP id us-mta-320-EdYD7WQGMRaxUHAJfkmAvQ-1;
	Sat, 23 Jan 2021 01:58:51 -0500
X-MC-Unique: EdYD7WQGMRaxUHAJfkmAvQ-1
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id
	BAA12498 for blinux-list@redhat.com; Sat, 23 Jan 2021 01:58:49 -0500
Date: Sat, 23 Jan 2021 01:58:48 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: renaming many files
Message-ID: <20210123065835.GR12763@nntp.AegisInfoSys.com>
References: <465180FE-6581-48FA-9EFD-23329FE3906A@gmail.com>
	<20210122203026.GN12763@nntp.AegisInfoSys.com>
	<20210122154602.55d4e4a7@bigbox.attlocal.net>
Mime-Version: 1.0
In-Reply-To: <20210122154602.55d4e4a7@bigbox.attlocal.net>
User-Agent: Mutt/1.4.2.3i
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

i disagree. that's not a small issue, it's a big issue.

everyone, please read the correction about the asterisk and quotes.

sorry for the blooper.

On Fri, Jan 22, 2021 at 15:46:02PM -0600, Linux for blind general discussion wrote:
> On January 22, 2021, Linux for blind general discussion wrote:
> >    rename -v -n 's/^renewal talk //' "renewal talk *"
> 
> One small issue here...you will likely need the asterisk outside the
> quotes:
> 
>   rename -v -n 's/^renewal talk //' "renewal talk "*
> 
> otherwise, this is my favorite solution for doing such renames.
> 
> If you use bash as your shell, you can even use the caret notation to
> remove the -n when you're ready to run
> 
>   $ ^-n
> 
> -tim
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

