Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 9EABA207B31
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 20:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593021854;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tD2Z9U1BKq0muMF+ATVTAsRBiftvT3uCcEj2wfmxDpw=;
	b=RJiTFmMrNrDJDD5tzlDpD0qrovz7v9jduM+zWL2urcDiZE+4oV4LsDZAxyTVV6Kol6Dohd
	ufNUm8s1+UdXjn7C95urw0/RtVh7wsz8AP2ZywhSPAUWrXz3oJVMKH6W5bdkFYXxWJdO23
	WIEu24J4K9bUvDO5+Ejll4bBnagEmZA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-2DBEYX01PZC_zx7l7ZZxmQ-1; Wed, 24 Jun 2020 14:04:12 -0400
X-MC-Unique: 2DBEYX01PZC_zx7l7ZZxmQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4C39804011;
	Wed, 24 Jun 2020 18:04:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACB122B47C;
	Wed, 24 Jun 2020 18:04:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6C53687588;
	Wed, 24 Jun 2020 18:04:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OI41uS012921 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 14:04:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E55E8F11E2; Wed, 24 Jun 2020 18:04:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0D67F11E7
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:03:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A66F800143
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:03:58 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-115-v0g0hwGyMiCQWkwNMHWFkA-1; Wed, 24 Jun 2020 14:03:54 -0400
X-MC-Unique: v0g0hwGyMiCQWkwNMHWFkA-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id 24B2C103C97C
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 11:03:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: anonymity, threads, signatures, and confusion
Date: Wed, 24 Jun 2020 11:03:52 -0700
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
	<Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
Message-Id: <435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05OI41uS012921
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Jun 24, 2020, at 10:43, (someone) wrote:
> 
> You are aware of the history motivating the change?
> Indeed, there  was a time when identifying information was available, then the list was hacked in a way that scammers started using that information.

Yes, I'm aware of that unfortunate history.  However, there's no reason to make the list less useful, just to protect email addresses.

Adding an identifying signature (however obscure) lets folks follow conversations more easily.  If I know that the "FredQ" who posted one message posted another one earlier, it gives me useful context.

- Rich Morin (rdm@cfcl.com)


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

