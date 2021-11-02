Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D3B442B7E
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 11:16:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635848212;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MhAR8ySQxL7xhWtVRS6vuXVvTNHFniYyxei14u4cAoM=;
	b=YmxuuANfLo9n+L6MrgoD2rj7k7Ey820MeBXmJlv6HgtOzV7vzStw5R7USbd9Q1fb63v84E
	U11pSkRtHV4YPKnMs346YJvZp+U7vQNEECJMfw24mviUc0iBgz+xInB2oQu12pmbphBese
	/IWhOdvDNwYKXrVnqWidWL9dugY7QL8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-3Ii7kFaZNjCuY7oaFyPlOg-1; Tue, 02 Nov 2021 06:16:49 -0400
X-MC-Unique: 3Ii7kFaZNjCuY7oaFyPlOg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E2B05802682;
	Tue,  2 Nov 2021 10:16:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C584A19C59;
	Tue,  2 Nov 2021 10:16:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B682E1800FDD;
	Tue,  2 Nov 2021 10:16:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A2ADLR6029635 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 06:13:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A4A5740C1252; Tue,  2 Nov 2021 10:13:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0724400F3E6
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 10:13:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8CFB2899EC1
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 10:13:21 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-340-wqj3T-awO3u0SiT2tHdNjQ-1; Tue, 02 Nov 2021 06:13:20 -0400
X-MC-Unique: wqj3T-awO3u0SiT2tHdNjQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hk5MM37kqz43v2
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 06:13:19 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Hk5MM2Tsnzcbc; Tue,  2 Nov 2021 06:13:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Hk5MM2712zcbP
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 06:13:19 -0400 (EDT)
Date: Tue, 2 Nov 2021 06:13:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
In-Reply-To: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111020609220.8275@panix1.panix.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If fenrir is run correctly it can handle a g.u.i. terminal.  I never heard
of using brltty for this purpose but will try it out a little later today.
Orca has only one developer who is funded by her employer to do the
development.  If ygrazil gets more developers than one development will be
slowed by communication between developers by the square root of the
number of developers.  This is a well-known software development metric
among others.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

