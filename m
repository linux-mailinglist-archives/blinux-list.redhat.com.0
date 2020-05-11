Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id CABDA1CE871
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 00:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589237444;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fXk0sATLrSdXXcYYsNPfER+PB2ol4IQUyYXNV5t1cW0=;
	b=GArWX6fMuDy1XxWha2JsKnbCmYbiQ9QBAwnKlg+dwyDv0B7JO9AfUOsacEbynQwdSHaP3L
	B4gtV+Q84KVQXX+e8pMgSyScSa4QpcUTlB/lROpKawTlwZ+oDOiKkeUenZpzc3VRysgdqJ
	NLSWmyP3u9gieanJAIirB0udbSaVKWc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-cdupMlexOqyl5pxZ62x--Q-1; Mon, 11 May 2020 18:50:42 -0400
X-MC-Unique: cdupMlexOqyl5pxZ62x--Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B84DC8005AD;
	Mon, 11 May 2020 22:50:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B28F438F;
	Mon, 11 May 2020 22:50:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4769B1809543;
	Mon, 11 May 2020 22:50:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04BMoL6g016998 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 11 May 2020 18:50:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E829CDBB17; Mon, 11 May 2020 22:50:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1B4FDBB11
	for <blinux-list@redhat.com>; Mon, 11 May 2020 22:50:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7580811E7A
	for <blinux-list@redhat.com>; Mon, 11 May 2020 22:50:15 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-442-pKd23-AXMPOJnke6W-YURQ-1; Mon, 11 May 2020 18:50:13 -0400
X-MC-Unique: pKd23-AXMPOJnke6W-YURQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49Lbjw6nHsz1nBF
	for <blinux-list@redhat.com>; Mon, 11 May 2020 18:50:12 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49Lbjw5jMwzcbc; Mon, 11 May 2020 18:50:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49Lbjw58pxzcbV
	for <blinux-list@redhat.com>; Mon, 11 May 2020 18:50:12 -0400 (EDT)
Date: Mon, 11 May 2020 18:50:12 -0400
To: blinux-list@redhat.com
Subject: foldingathome-beta can't run here
Message-ID: <alpine.NEB.2.21.2005111844500.10419@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Just  one reason for that.  I don't know and cannot find out what gpu is
used on this machine.  The foldingathome app refuses to work until this
gpu is set correctly and I don't know what to query to discover this
particular model.  radeontool cannot even find a radeon device and I have
a radeon monitor but what this package may need to know is what's on the
card in the computer in which case that'll be some form of intel or
nvidia.  That foldingathome app if it's going to be useful needs to detect
and select the correct gpu for users.



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

