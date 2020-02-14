Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 1A53115F935
	for <lists+blinux-list@lfdr.de>; Fri, 14 Feb 2020 23:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1581717845;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dGlAmG3gYxKrNWawyVCzjWo+peMstgHiSzXz/etbgzs=;
	b=Iwm/L7bmtdGuFSd6CtdKkboSGEh+eHmYFPyv10eF3L4J+KlbWL0MgW9E54mJGDOaRWEwf7
	xeHDGlunoE/tVvGU2yEDz93l5MHJjq5MScy/tHFb03dl4rQeu7RObgLCqjA6KN+qme34ib
	vYBQHK0Zn1alB8nZeeyvfpGjNbMCbh8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-5JEghMogM3udtrDsP3aLJA-1; Fri, 14 Feb 2020 17:04:02 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D3CA100550E;
	Fri, 14 Feb 2020 22:03:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C609160BF1;
	Fri, 14 Feb 2020 22:03:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CE6678B2B3;
	Fri, 14 Feb 2020 22:03:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01EM1hkO016651 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 14 Feb 2020 17:01:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3E41B2028CD4; Fri, 14 Feb 2020 22:01:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 397F82026D67
	for <blinux-list@redhat.com>; Fri, 14 Feb 2020 22:01:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 129951800F1C
	for <blinux-list@redhat.com>; Fri, 14 Feb 2020 22:01:41 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-338-6Khj6WxSMnaFSqEd1L26CQ-1; Fri, 14 Feb 2020 17:01:38 -0500
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id E99378C0308; Fri, 14 Feb 2020 22:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 48C3C8C02D8
	for <blinux-list@redhat.com>; Fri, 14 Feb 2020 17:01:36 -0500 (EST)
Date: Fri, 14 Feb 2020 17:01:36 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Raspberry Pi's Raspbian now supports Orca screen reader. (fwd)
Message-ID: <Pine.LNX.4.64.2002141658530.32308@server2.shellworld.net>
MIME-Version: 1.0
X-MC-Unique: 6Khj6WxSMnaFSqEd1L26CQ-1
X-MC-Unique: 5JEghMogM3udtrDsP3aLJA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01EM1hkO016651
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Can anyone confirm this working first hand?
If so, what sorts of applications are possible, and are there voice 
choices for Orca?




The Raspberry Pi team reached out to an accessibility charity known as 
AbilityNet to help evaluate the Raspberry Pi desktop environment for 
improvements. Raspbian now supports Orca screen reader. Orca is compatible with 
most applications that use GTK or Qt toolkits. Other toolkits aren't compatible 
and may or may not work. You can also find a new pixel doubling feature in the 
Raspberry Pi Configuration menu, improving screen visibility for visually 
impaired persons.

https://www.tomshardware.com/news/raspbian-buster-gets-new-features-in-big-update



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

