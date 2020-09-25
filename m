Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C5FD227835D
	for <lists+blinux-list@lfdr.de>; Fri, 25 Sep 2020 10:56:27 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601024186;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EdtZAbyvhG9mkvqQqm9h0rhoBInIEGXYwiP/0gwIM7U=;
	b=G98j9q4AQC9syP/JR3HHMkSP3zvj2YM+SB1ue3QNNgkSevhpRC2IbhSN+CKmbvMf3HL5bE
	eaN7EWMfw9T4z/zb2TLzPuVYrRWY2/ewoalUobNvjs/BvX8xPIgC09sVkdFXCcAYocSzvp
	GOPdQPzCviCmx9T5tPP61aTgJbn1DWM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-JjUHTDuKM_GsZeRsxEA7_Q-1; Fri, 25 Sep 2020 04:56:24 -0400
X-MC-Unique: JjUHTDuKM_GsZeRsxEA7_Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B77F1008549;
	Fri, 25 Sep 2020 08:56:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8FF75C1C2;
	Fri, 25 Sep 2020 08:56:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3A4EC181A06C;
	Fri, 25 Sep 2020 08:56:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08P8tuhf031394 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Sep 2020 04:55:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 14CD3201F3BE; Fri, 25 Sep 2020 08:55:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FBBD2028DCC
	for <blinux-list@redhat.com>; Fri, 25 Sep 2020 08:55:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFF7A800296
	for <blinux-list@redhat.com>; Fri, 25 Sep 2020 08:55:52 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-41-UwXJ-PFiOcOpuYHmnWGOSA-1; Fri, 25 Sep 2020 04:55:50 -0400
X-MC-Unique: UwXJ-PFiOcOpuYHmnWGOSA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4ByQjx63mWzxSD;
	Fri, 25 Sep 2020 04:55:49 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4ByQjx5NyVzcbc; Fri, 25 Sep 2020 04:55:49 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4ByQjx4ms2zcbV;
	Fri, 25 Sep 2020 04:55:49 -0400 (EDT)
Date: Fri, 25 Sep 2020 04:55:49 -0400
To: orca-list@gnome.org
Subject: jenux status
Message-ID: <alpine.NEB.2.23.451.2009250454490.7003@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A new iso is now available; to get it:

mailto:dnl.nash@gmail.com
wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.08.16-x86_64.iso.sha512
wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.08.16-x86_64.iso
sha512sum -c Jenux-2020.08.16-x86_64.iso.sha512

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

