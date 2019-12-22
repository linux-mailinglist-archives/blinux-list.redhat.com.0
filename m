Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 999F1128C1F
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2019 01:48:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576975727;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xqqUe1oi0tliCN/V+RvKJApA9mOgTQpRZa8pjWIdgpc=;
	b=DKlbbgWllN5urnXqnlyh+U8iW00F12EuLpPtmknvJ5dkqm2G/QiWVFH54SDkLN/HkD4lAY
	Ue4TCcfGaoMVJJUHcjGnspQzWnIaU9qHtEUET67eCoVLYDlP6S9WoVely8WARYr/ORB1Tq
	Oza2Amz+EtnhKL3qnrPw7H8m1TrMa+U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-194-LmTjVGXcPxOuVBx2V-hYsg-1; Sat, 21 Dec 2019 19:48:44 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC3F41005502;
	Sun, 22 Dec 2019 00:48:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E3D11001B05;
	Sun, 22 Dec 2019 00:48:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 871491809567;
	Sun, 22 Dec 2019 00:48:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBM0m8ID017792 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 21 Dec 2019 19:48:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4D3572166B29; Sun, 22 Dec 2019 00:48:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 492F22166B27
	for <blinux-list@redhat.com>; Sun, 22 Dec 2019 00:48:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2AB96185AB7C
	for <blinux-list@redhat.com>; Sun, 22 Dec 2019 00:48:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-63-Ukmtiov0NDOJgHsTZkyFYA-1; Sat, 21 Dec 2019 19:48:03 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47gP3Q732rznx6
	for <blinux-list@redhat.com>; Sat, 21 Dec 2019 19:48:02 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47gP3Q5jjNzcbc; Sat, 21 Dec 2019 19:48:02 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47gP3Q5H0bzcbV
	for <blinux-list@redhat.com>; Sat, 21 Dec 2019 19:48:02 -0500 (EST)
Date: Sat, 21 Dec 2019 19:48:02 -0500
To: blinux-list@redhat.com
Subject: ex syntax?
Message-ID: <alpine.NEB.2.21.1912211945530.16319@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: Ukmtiov0NDOJgHsTZkyFYA-1
X-MC-Unique: LmTjVGXcPxOuVBx2V-hYsg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBM0m8ID017792
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On line 6 of a file what is the command to delete word 6 on that line?
A long time ago when the bsd learn utility was working on a system I
studied the advanced ex lessons and unfortunately forgot that syntax.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

