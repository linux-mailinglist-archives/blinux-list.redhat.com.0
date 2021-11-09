Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD1E44AF67
	for <lists+blinux-list@lfdr.de>; Tue,  9 Nov 2021 15:23:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636467789;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HJz7iSY3ITIGprgMRVPQ3zLHql4UND4FFaOXDfIrl1M=;
	b=aLTM52unaSEn3g6/N8RniMKjjKpsmrdmwdE2FIxPjodX3CY31tuXUGuX814RZyKweQwk+9
	u14Hd1ggiDjPioNKNoY3330ps/vIdz9e3L5i8dbaN9qCeKBJxNl7EVGelXvUB1Sx4GaPcD
	FQFhcyZ22YCdYFpLlwqT0sOpg8mSE3A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-419-R_5AwYzANEOVOfj-G2CQSg-1; Tue, 09 Nov 2021 09:23:07 -0500
X-MC-Unique: R_5AwYzANEOVOfj-G2CQSg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 87996100C610;
	Tue,  9 Nov 2021 14:23:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 030CB60936;
	Tue,  9 Nov 2021 14:23:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BD137181A1CF;
	Tue,  9 Nov 2021 14:22:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A9EMgd3011924 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Nov 2021 09:22:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A957F1121314; Tue,  9 Nov 2021 14:22:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4F471121318
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 14:22:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AAED98007B1
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 14:22:36 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-154-77gDQ9UmPCafCjCGERZekQ-1; Tue, 09 Nov 2021 09:22:33 -0500
X-MC-Unique: 77gDQ9UmPCafCjCGERZekQ-1
Received: from [192.168.116.128] (unknown [176.230.59.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id D50A2337BB45
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 14:22:31 +0000 (UTC)
Date: Tue, 9 Nov 2021 16:22:27 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Does any of you use a Whatsapp Linux client?
In-Reply-To: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
Message-ID: <alpine.DEB.2.11.2111091620510.7640@debian.work>
References: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
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

Hi,

I've not used it, but Debian packages a command line client in the 
yowsup-cli package.  It uses a Python library called yowsup.

Home page: https://github.com/tgalal/yowsup

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

