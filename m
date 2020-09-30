Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9B01A27F161
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 20:35:46 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601490945;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SSNNemHvuT6YB2EjSTkaqQhgEPcDRMFij70O9Gy5j54=;
	b=B2Ph/WfVHweb9mC6/QADFCT4AGm3tRCEnlx4/60l7hcBTV/ZqeZujnRpdS6sqWeHRzrd/L
	oYA77PjTfZvDa8Caz3PWyNxOWhbrJJBQHtGkk3eebpEzgPU6dkFRlgnoK/IYRGFITjsbuF
	OkTPG281GPBkkKFpj3hZVHN/Ubnq5ZE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-e-mX6QZsNqWjp45X1WkfHg-1; Wed, 30 Sep 2020 14:35:42 -0400
X-MC-Unique: e-mX6QZsNqWjp45X1WkfHg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8EE9410199A7;
	Wed, 30 Sep 2020 18:35:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71CD31972B;
	Wed, 30 Sep 2020 18:35:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2CC4144A46;
	Wed, 30 Sep 2020 18:35:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UIZani025113 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 14:35:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CCB27201828A; Wed, 30 Sep 2020 18:35:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C82F8201E730
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:35:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88F0C8007D9
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:35:33 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-122-86IIJeOWOt2R-f9Usno4kQ-1; Wed, 30 Sep 2020 14:35:31 -0400
X-MC-Unique: 86IIJeOWOt2R-f9Usno4kQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id A924A540129; Wed, 30 Sep 2020 18:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id A57875400FC
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 14:27:03 -0400 (EDT)
Date: Wed, 30 Sep 2020 14:27:03 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
In-Reply-To: <20200930121251.7d6b8c35@bigbox.attlocal.net>
Message-ID: <Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
MIME-Version: 1.0
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

I echo other suggestions  that there is no consensus, nor should there be 
one.  Individuals bring their individual needs to their choices.  for 
example, I would consider the ability to have extra ASCII characters 
spoken when drawn a positive feature.  although it should be a choice one 
can select when needful and turn off when not desired.
Karen



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

