Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C424527F035
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 19:23:54 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601486633;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lqY5JtOIlId5CW+MTFwogVNI32Xl2EK980zkS1uYIk4=;
	b=SzQX1Zkv93spmHJmTpTpDqEHjmFSCm0hCHuNYt+15gcrcFCMqY/RSiRaO5LVqYT85FRq5W
	YCV3/trL9ch0cBmMceqU1q4Alh9/rCDpQ6H4RUH4sXgOOpJUCXdKq0E74qPPdor4x77lhQ
	GS53FySVGOC0cGttDz37LHKv9cR06+A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-407-TBDPz3BpNGGbX2u5VP9-UQ-1; Wed, 30 Sep 2020 13:23:50 -0400
X-MC-Unique: TBDPz3BpNGGbX2u5VP9-UQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C8061008542;
	Wed, 30 Sep 2020 17:23:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E3777880B;
	Wed, 30 Sep 2020 17:23:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8A37B183D021;
	Wed, 30 Sep 2020 17:23:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UHNewh015637 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 13:23:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 59EFF215688F; Wed, 30 Sep 2020 17:23:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 553BC2156880
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:23:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0541C801184
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:23:38 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-586-c-e2fiDjMcC7brQUxK3O_w-1; Wed, 30 Sep 2020 13:23:34 -0400
X-MC-Unique: c-e2fiDjMcC7brQUxK3O_w-1
Received: from spot.local (spot.local [IPv6:fe80::1453:af2:be00:999b])
	by cfcl.com (Postfix) with ESMTP id C4ACF15ABDC4
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 10:23:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Console screenreaders
Date: Wed, 30 Sep 2020 10:23:32 -0700
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<alpine.NEB.2.23.451.2009301308580.3267@panix1.panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.23.451.2009301308580.3267@panix1.panix.com>
Message-Id: <3A5161DB-CEB0-4910-8B3F-300E01CE0605@cfcl.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> Some anonymous miscreant wrote:
> 
> espeak preferable to fenrir but that's only because fenrir reads ansi line
> drawing characters when speaking.  espeak suppresses those characters.

You might want to file a bug report, asking for this to be turned from a
feature into an option.

-r


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

