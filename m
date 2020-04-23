Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id E7C791B6605
	for <lists+blinux-list@lfdr.de>; Thu, 23 Apr 2020 23:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587676460;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W0COAvlueFgNkEPaVndBr/jecXgpm4lFZkHphXNZfzY=;
	b=AmYi8/zgaECA9oqjkXUVk8pfy+PQPwDnF5+TzCknAYBVHMvGSG5UWy45nPWdUJhyOtGLGw
	vAm6MbcRLF6dhfimyHczYp6ivRjSBM4Zr5FgHWqKRboNVFyi70Xf5poAQOcOLxK569ICQ0
	RyHAl2NIM61e1TDcax84PmRsr4+KrGA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-260-mqzWwd8ZNl-7hrt2xg_87w-1; Thu, 23 Apr 2020 17:14:18 -0400
X-MC-Unique: mqzWwd8ZNl-7hrt2xg_87w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF093107ACCA;
	Thu, 23 Apr 2020 21:14:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B2211001920;
	Thu, 23 Apr 2020 21:14:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B8D3E4CAA0;
	Thu, 23 Apr 2020 21:13:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03NLDl4s007239 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Apr 2020 17:13:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B5D292026D5D; Thu, 23 Apr 2020 21:13:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B1E56202696B
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 21:13:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD327101A526
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 21:13:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-465-YqieQHYDObWukZhakJtN2A-1; Thu, 23 Apr 2020 17:13:43 -0400
X-MC-Unique: YqieQHYDObWukZhakJtN2A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 497VQt4K4fzXD1
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 17:13:42 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 497VQt3Kc8zcbc; Thu, 23 Apr 2020 17:13:42 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 497VQt2qW9zcbW
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 17:13:42 -0400 (EDT)
Date: Thu, 23 Apr 2020 17:13:42 -0400
To: blinux-list@redhat.com
Subject: unpacking git files
Message-ID: <alpine.NEB.2.21.2004231711080.12964@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03NLDl4s007239
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
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you download a git file how is it possible to have git unpack the file
for you into its own directory tree?
I failed to write my git credentials in braille and haven't used them for
a very long time so may be able to get a git file using wget but for now I
don't know how to unpack the file.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

