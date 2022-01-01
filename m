Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD2A482852
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:29:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641065386;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xVb4qEIygXx5eBfuBpD9cBrySbnfzCNWupkrkzS1Gvk=;
	b=TIUNaKyQMXmK2o5oJCqNPKmdP07UvW0553ar9Lc0UZT5hMzIEomhnWxPhskEgOXJfoXWvT
	tz0zszdiBOPqWotkqgeJO6fhQZ7S0GOcFwfNDQyUvLlAc/HDAAtXf4u6xIQTLLQ4rEXJ0z
	aiFJZxl6dZ3p4J7tXVbJ1USBL3QK9B0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-465-TN9WQSbhN42yWu230WpsHQ-1; Sat, 01 Jan 2022 14:29:45 -0500
X-MC-Unique: TN9WQSbhN42yWu230WpsHQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2044D180830C;
	Sat,  1 Jan 2022 19:29:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 343A75BE00;
	Sat,  1 Jan 2022 19:29:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D7A081806D03;
	Sat,  1 Jan 2022 19:29:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JTYoQ015391 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:29:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5B97340CFD13; Sat,  1 Jan 2022 19:29:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5516D40CFD08
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:29:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B9BD8011A5
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:29:34 +0000 (UTC)
Received: from gateway7.unifiedlayer.com (gateway7.unifiedlayer.com
	[69.89.24.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-108-eiCwSqBlOiWTkFQUbrEUxQ-1; Sat, 01 Jan 2022 14:29:32 -0500
X-MC-Unique: eiCwSqBlOiWTkFQUbrEUxQ-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway7.unifiedlayer.com (Postfix) with ESMTP id 9AC9C200A963E
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 13:29:31 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 3k4JnrqsotGNQ3k4JnV3Me; Sat, 01 Jan 2022 13:29:31 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:46137 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1n3k4J-000u6r-B5
	for blinux-list@redhat.com; Sat, 01 Jan 2022 13:29:31 -0600
Date: Sat, 1 Jan 2022 13:29:30 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Recovering shift deleted data
Message-ID: <20220101132930.080d8609@bigbox.attlocal.net>
In-Reply-To: <4bc845a3-1923-4d72-6017-ddc37263cbd1@seznam.cz>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<92483ba2-4fcb-c333-5025-257f16e3dc20@gmail.com>
	<4bc845a3-1923-4d72-6017-ddc37263cbd1@seznam.cz>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1n3k4J-000u6r-B5
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:46137
X-Source-Auth: tim@thechases.com
X-Email-Count: 2
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here again. Yes, if your filesystem is ext4, extundelete is the
tool you want.  For best results, reboot into a live ISO/CD image and
install it there, leaving your RPi drive untouched.  This will
minimize the chance that installing extundelete overwrites the data
you want to preserve.

-tim

On January  1, 2022, Linux for blind general discussion wrote:
> Hello, I have ext4, yes.
> 
> Vojta.
> 
> Dne 01. 01. 22 v 20:18 Linux for blind general discussion napsal(a):
> > I'm guessing/hoping the partition that has your deleted file has
> > an ext4 filesystem. You should be able to recover the lost file
> > using extundelete, although if you write anything at all to the
> > SD, it will become less likely that your file will be
> > recoverable. It seems that other filesystems make it more
> > difficult, if not impossible to recover deleted files.
> > 
> > ~Kyle
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >   
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

