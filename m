Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9A257279803
	for <lists+blinux-list@lfdr.de>; Sat, 26 Sep 2020 10:46:43 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601110002;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MKTUlu2KfsQ92n4f6JAhsipN4PZ2WuAT4N8ZEjFi/mw=;
	b=G8w11z2hSCxTK+OBCfQA7l+FNX/A5yKn2aBJ50LmbncIcStcJCjq5WyauIC/eq64HRURfS
	XIKsG5T5g0ICAfgmm+5rf5sFZXNrrXOD20fmJ++aaC2RGhXzePMvwQfpQbUSwHuB1DEJXo
	hlmxUqU9QMy4ipNCwuWHh1rUX5tuyuA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-AZ1LAcM6N9-vYrMFxdvksA-1; Sat, 26 Sep 2020 04:46:40 -0400
X-MC-Unique: AZ1LAcM6N9-vYrMFxdvksA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D93E88EF12;
	Sat, 26 Sep 2020 08:46:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB56560CCC;
	Sat, 26 Sep 2020 08:46:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E894544A4E;
	Sat, 26 Sep 2020 08:46:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08Q8kFp2003193 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Sep 2020 04:46:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3C9AA2028E91; Sat, 26 Sep 2020 08:46:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 376932028DCC
	for <blinux-list@redhat.com>; Sat, 26 Sep 2020 08:46:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DB18E8007D9
	for <blinux-list@redhat.com>; Sat, 26 Sep 2020 08:46:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-135-iY9CAYSIOTWnMzU9vzIFuw-1; Sat, 26 Sep 2020 04:46:09 -0400
X-MC-Unique: iY9CAYSIOTWnMzU9vzIFuw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Bz2SJ73pjz18nD;
	Sat, 26 Sep 2020 04:46:08 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Bz2SJ5zs8zcbc; Sat, 26 Sep 2020 04:46:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Bz2SJ5PvDzcbV;
	Sat, 26 Sep 2020 04:46:08 -0400 (EDT)
Date: Sat, 26 Sep 2020 04:46:08 -0400
To: orca-list@gnome.org
Subject: https://jennios.com/projects.html
Message-ID: <alpine.NEB.2.23.451.2009260435030.12838@panix1.panix.com>
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
Cc: blinux-list@redhat.com
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You can't download jenux from this page since the url is out-dated.

The url has jenux at a June 2020 date when current version is August 2020
that's on offer now.



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

