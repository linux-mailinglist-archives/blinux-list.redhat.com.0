Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 436D13631D3
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 20:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618684246;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8haDtzJz4g0ZyZgbvmvWjONlH5zCxqJ/9aX4Wb1yH8o=;
	b=RPzu+1T7QYUL4/98f/qFObXZiefcFK61Yp0PZVqWGx6mnpiY4p0ZPdziJs2NXH7yNsiDNp
	br4+7XTU+fpFCVfWtA0gPFNK4TFOC50Uz9DKJ1rsVb2uiLLfIEXBLreNye+tjmO3iSMFQQ
	olFe2D7fyQJNagAZYPyy11iw+xNTKEE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-zFjZGZ6ePtGNX1rN0kzqQQ-1; Sat, 17 Apr 2021 14:30:44 -0400
X-MC-Unique: zFjZGZ6ePtGNX1rN0kzqQQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4024107ACCD;
	Sat, 17 Apr 2021 18:30:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 332CD5D9CD;
	Sat, 17 Apr 2021 18:30:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 564A81806D15;
	Sat, 17 Apr 2021 18:30:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HIUJsv009818 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 14:30:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5F7D72182DC9; Sat, 17 Apr 2021 18:30:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A2462182DC4
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 18:30:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13396801E8D
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 18:30:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-251-iOpIOfwwPFuQj8p2R6oNzw-1; Sat, 17 Apr 2021 14:30:13 -0400
X-MC-Unique: iOpIOfwwPFuQj8p2R6oNzw-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FN1pY1cyvzK0N
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 14:30:13 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4FN1pY0jVVz1QXB; Sat, 17 Apr 2021 14:30:13 -0400 (EDT)
Date: Sat, 17 Apr 2021 14:30:12 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Gmail and attachments (or...how do I?)
Message-ID: <YHspNF2hA2SqYnWa@panix.com>
References: <590d3aa1-b8d5-5999-63a3-f94bff3d694e@gmail.com>
	<CAO2sX31G8zsH4axUFCf5gyGFjEcon-ksqRWPX4k0kLQts_GSzQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX31G8zsH4axUFCf5gyGFjEcon-ksqRWPX4k0kLQts_GSzQ@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You could set up mutt  to retrieve your gmail account. Then just use the mutt attachment menu
to save or view each attachment as desired.

e.g. with cursor on desired email, hit v to get attachment menu, use j and k keys to move
to desired attachment, say it's an html file, then hit m to view the file with  your browser defined in .mailcap or
e to edit the raw html with your favorite editor, or s to save to a file.


On Sat, Apr 17, 2021 at 04:16:16PM +0000, Linux for blind general discussion wrote:
> I can only speak for Gmail, and then only for it's basic HTML view,
> but if there are multiple attachments to an e-mail, viewing it in a
> web browser should present a download all link that serves a zip
> archive of all of the attachments... and there's no reason to think
> Gmail's Standard, JavaScript absuing view wouldn't have an equivalent
> feature... Admittedly, I don't think this works across entire
> conversations and I'm not aware of any means of doing entire folders
> worth of attachments... Admittedly, I've never used a dedicated e-mail
> client and have always just accessed my e-mail via web browser.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

