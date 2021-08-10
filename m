Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3381E3E5E1E
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 16:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628606403;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IKNgHSLW4eNP7AflU94GpdajaW++zXypyWEPhykKFeE=;
	b=Tw6tjIhVvyHvNls6nX86QbR1fLtnFokTTT9TIJVUWcqqp5f9abKucrd+qoo25AYnyy24J6
	31AXJbbIdL+TOuv919b0kNU2UNI7fxjtXXjaRt0uJZ2dfkZ4FqOergQPWdU7NMKY47GJvo
	+cYiTz8wum0HXtPLz4dMwHSEq9eoOYI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-iWvKs7v9M5yVFh1De_bCVQ-1; Tue, 10 Aug 2021 10:40:00 -0400
X-MC-Unique: iWvKs7v9M5yVFh1De_bCVQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3C41D190B2A7;
	Tue, 10 Aug 2021 14:39:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE5E46F97F;
	Tue, 10 Aug 2021 14:39:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 37757181A2A6;
	Tue, 10 Aug 2021 14:39:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AEW942003534 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 10:32:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D2A37200E26F; Tue, 10 Aug 2021 14:32:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE391200D8F8
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:32:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8B1418A01AC
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:32:04 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-36-GrHV6vcSMJ6KHsQX1QMAEg-1;
	Tue, 10 Aug 2021 10:32:03 -0400
X-MC-Unique: GrHV6vcSMJ6KHsQX1QMAEg-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6D377A1CE7
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:31:55 +0200 (CEST)
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
	<YRJyWYpNsgGZW1De@abilitiessoft>
	<9cb596b4-06dc-945d-972e-65e2a42630d5@slint.fr>
Message-ID: <f4cd1cb1-d799-ecdf-ee3f-f4f6b1db54c8@slint.fr>
Date: Tue, 10 Aug 2021 16:31:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <9cb596b4-06dc-945d-972e-65e2a42630d5@slint.fr>
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

Erratum: I meant at least 10 years older.

> 5. At least 2O years older that the Slint maintainer.
> Hint: I am 72 years old

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

