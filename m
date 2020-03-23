Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 75F9118FBBA
	for <lists+blinux-list@lfdr.de>; Mon, 23 Mar 2020 18:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584985516;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aXhZd5i4krRpW1uLTJvYBkxvABQvyWVlPhKl/75hzgw=;
	b=ZtiQ++xZZuMrI7+jlDDKVnYeanCowrvUMfNZYZcrXaoWHeEDNhaPwY7yqForfm+3ChvIHm
	Ega/Y4dzvYGGaHSE3jrUGliGOLsNkduk/Qbu3bEQYyHFRy8Xq7D+L88/ES8C7YKiOuDUqe
	ni7yM3raMKV5M87NDQdDY/P1nsE9c/o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-cuQOCEzaNzyrNRUNP8bNTQ-1; Mon, 23 Mar 2020 13:45:12 -0400
X-MC-Unique: cuQOCEzaNzyrNRUNP8bNTQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 763B11005514;
	Mon, 23 Mar 2020 17:45:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D402660BF3;
	Mon, 23 Mar 2020 17:45:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F9D086382;
	Mon, 23 Mar 2020 17:45:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02NHisCl008677 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Mar 2020 13:44:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B88352026D68; Mon, 23 Mar 2020 17:44:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B52C92037E43
	for <blinux-list@redhat.com>; Mon, 23 Mar 2020 17:44:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7099F8FF660
	for <blinux-list@redhat.com>; Mon, 23 Mar 2020 17:44:52 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-289-Z4sy8tqLOqGuhx4J0bCgtQ-1; Mon, 23 Mar 2020 13:44:49 -0400
X-MC-Unique: Z4sy8tqLOqGuhx4J0bCgtQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48mMG91MH1zmXg
	for <blinux-list@redhat.com>; Mon, 23 Mar 2020 13:44:49 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48mMG86wWdzcbc; Mon, 23 Mar 2020 13:44:48 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48mMG86VYXzcbW
	for <blinux-list@redhat.com>; Mon, 23 Mar 2020 13:44:48 -0400 (EDT)
Date: Mon, 23 Mar 2020 13:44:48 -0400
To: blinux-list@redhat.com
Subject: archlinux kernel upgrade surprise follow up
Message-ID: <alpine.NEB.2.21.2003231343170.13616@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02NHisCl008677
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It turns out my /etc/asound.conf file got corrupted somehow.
After use of rescue disk and repair of that file speaker-test and fenrir
now work.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

