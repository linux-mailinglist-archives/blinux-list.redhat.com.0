Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 961494C499E
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 16:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645804377;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tJXXLgkjKnbfjem+ijdvC3FV+y7QI5qzA5E2OB9tDEQ=;
	b=QvUuCDR0RzmioY/YNTD7s99+RHZ7km51y5Q6gFYn9rI1afp5G8FgaW8lIz60e3H4ZzPkfb
	XbEjo4E1s7G8MSNQDchQwpjJolAvULytG+1S9IO4WpucBFtDEXY/usYuRL+aGTu4yt6AwR
	in8lSfRcMwjeyVGPqpOf0L0qTQA/9JQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-m0kYr_ByMZypvgBrMHdueQ-1; Fri, 25 Feb 2022 10:52:54 -0500
X-MC-Unique: m0kYr_ByMZypvgBrMHdueQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AF701854E26;
	Fri, 25 Feb 2022 15:52:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44AAD865BA;
	Fri, 25 Feb 2022 15:52:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CB4B01809C98;
	Fri, 25 Feb 2022 15:52:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PFqict025890 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 10:52:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E6F72C27FB2; Fri, 25 Feb 2022 15:52:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E34BBC27FAE
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 15:52:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA6351801387
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 15:52:43 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-379-pIRFRTLaP7uCQEd8qiXeAg-1; Fri, 25 Feb 2022 10:52:42 -0500
X-MC-Unique: pIRFRTLaP7uCQEd8qiXeAg-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 687EF1BB0B3
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 15:52:40 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id kqVlorzOMu-8 for <blinux-list@redhat.com>;
	Fri, 25 Feb 2022 15:52:39 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 4310A1BB092
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 15:52:38 +0000 (UTC)
Message-ID: <23dd358c-75cd-da87-b437-978556fff74f@free2.ml>
Date: Fri, 25 Feb 2022 10:52:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Voting: Which game would you like to have on Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<Yhjpvu0HyqYbNVO3@waffles>
	<852cc77f-a7db-d99f-645-346da7c1a11c@panix.com>
	<af81b24a-3f13-5005-1fc7-ba325f230bbe@free2.ml>
	<Yhj1+qM5EkmDnb2l@waffles>
	<alpine.DEB.2.11.2202251741190.2899@debian.work>
In-Reply-To: <alpine.DEB.2.11.2202251741190.2899@debian.work>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I found this

https://news.ycombinator.com/item?id=30174112

But it appears it just writes the letters in a specific color, it would 
require extensive use of color readouts using the screen reader of 
choice to determine which letters are yellow and which letters are 
black. I wouldn't call it inaccessible, just difficult. Perhaps a audio 
reimplementation could still be a good thing.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

