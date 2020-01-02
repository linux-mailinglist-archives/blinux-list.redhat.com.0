Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 9752A12EA2A
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jan 2020 20:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577992271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RxfIUCpR5FSPLreFU0IU4ABlpvMM4zjhW5A9fi2pANM=;
	b=VwjJxyBJ+isiDQcRaKYLEazXeEAFffZBpsVOrthh2i9BWm9+vNGhgThHTfRqeUiaB1EDkI
	OC+H3u3RGTLN8ZrR4tttV8pPpNJnJkQhEMA1DG/zebggm2jq0LNN1E8nzqe7tCOB45iQ/w
	PIRqgG7ybVWwvZWdSe+/bTV7D39Q5zU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-WPzxJfxpPpe5om42zZO6lA-1; Thu, 02 Jan 2020 14:11:09 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 668E3800D50;
	Thu,  2 Jan 2020 19:11:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C3F645D9C9;
	Thu,  2 Jan 2020 19:11:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AFEBC1809567;
	Thu,  2 Jan 2020 19:10:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 002JAo7G019656 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jan 2020 14:10:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6490AAF9A4; Thu,  2 Jan 2020 19:10:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FB32AF9AB
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 19:10:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDCAC802889
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 19:10:47 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-360-Cqj_jH1EOqK2Zx9kpcOs6w-1; Thu, 02 Jan 2020 14:10:46 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47pd0k0DJJztpS
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 14:10:45 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47pd0d3NHLzcbc; Thu,  2 Jan 2020 14:10:41 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47pd0d2w2zzcbW
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 14:10:41 -0500 (EST)
Date: Thu, 2 Jan 2020 14:10:41 -0500
To: blinux-list@redhat.com
Subject: festival unknown voice file errors
Message-ID: <alpine.NEB.2.21.2001021407500.16816@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: Cqj_jH1EOqK2Zx9kpcOs6w-1
X-MC-Unique: WPzxJfxpPpe5om42zZO6lA-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 002JAo7G019656
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Running festival interactive I can run (SayText "string") and have it
speak the string.
Festival server is the problem area since it's throwing these errors so
far.  Fortunately an online version of the festival manual exists so I
expect I'll be doing a bit of reading.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

