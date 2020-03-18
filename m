Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id C6CED18A766
	for <lists+blinux-list@lfdr.de>; Wed, 18 Mar 2020 22:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584568304;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Trxgo+Aodg6lEHGBMlwX7qNy1TrWc6L8ISgBlsDaCpo=;
	b=dRQ6i/gZNqgbrmPQbS0sAYKPeb5z8xiO/PVOTALbIsEkSmAZhHQNMKd0rmpUMiQ5rwNWXD
	cIGKiAzmyDKP9r0kg7EM+XqsRNp8Qfr8era3pv2Z9QU11yW3rJ+HqqLSA7kdttjx5ot8aq
	eAn56M8CtojIaHl3P80N5cobA6MEM0M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-JO8zZCXbPN6oBEtzGClfIw-1; Wed, 18 Mar 2020 17:51:42 -0400
X-MC-Unique: JO8zZCXbPN6oBEtzGClfIw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 49885190B2A2;
	Wed, 18 Mar 2020 21:51:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC30E6EF97;
	Wed, 18 Mar 2020 21:51:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A91D87013;
	Wed, 18 Mar 2020 21:51:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02ILpLOB007696 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Mar 2020 17:51:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4707E2166B29; Wed, 18 Mar 2020 21:51:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 436FA2166AE4
	for <blinux-list@redhat.com>; Wed, 18 Mar 2020 21:51:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CC818007CB
	for <blinux-list@redhat.com>; Wed, 18 Mar 2020 21:51:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-129-XZK6rJ_hOrKjDCmH_t4I5A-1; Wed, 18 Mar 2020 17:51:14 -0400
X-MC-Unique: XZK6rJ_hOrKjDCmH_t4I5A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48jNyn5hw5zlyv;
	Wed, 18 Mar 2020 17:51:13 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48jNyn3wyKzcbc; Wed, 18 Mar 2020 17:51:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48jNyn3GcNzcbV;
	Wed, 18 Mar 2020 17:51:13 -0400 (EDT)
Date: Wed, 18 Mar 2020 17:51:13 -0400
To: blinux-list@redhat.com
Subject: wget downloads
Message-ID: <alpine.NEB.2.21.2003181743480.22723@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02ILpLOB007696
X-loop: blinux-list@redhat.com
Cc: slint@freelists.org
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

the best way I've found to do wget downloads outside of sourceforge.net is
to use:
wget -bc url.
The reason for this is if wget-log doesn't exist on your user directory,
wget will create it and write its download progress into wget-log.  If
wget-log exists, wget-log.1 will get created and written to for the
present download.
The suffix number increases if the last one is present so you could get a
bunch of wget-log files in your user directory if you don't manage them.
The reasons you want wget-log are two.
First you can check if the download is complete with:
grep -i saved wget-log
If grep returns nothing, it means either a download failed or hasn't yet
finished.
If grep returns a line of information with the word saved in it, it means
your download is complete.
The second reason is you can check the progress of your download with:
wc -l wget-log
That will return a number.
If you repeat that command and get a higher number back, your download is
progressing.
If you don't use wget -bc url, you get a mess on your screen and no
ability to check completion and progress of your download.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

