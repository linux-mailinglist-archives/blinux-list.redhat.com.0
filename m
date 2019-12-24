Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 2BB5112A3AE
	for <lists+blinux-list@lfdr.de>; Tue, 24 Dec 2019 18:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577209389;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MUW3UOzWkKiqEHjufwYodK1hw0U05bVp4WMxzqky4wg=;
	b=DjI8D0gtXszOEhG7EOM3oyZX0qE/pxCWIGnqtdfifVKgDZFKVB4pf4ElwIY4o0HOeC2Kc9
	15LZHeocvVJvIlOkiee1+y9udpzJ2Y8FFJiFu1z3G2132aM9RNvgaSsT/qhSN2IuNEKFL9
	NTIw5iUSJPKYF1bgh++aRuZ111fnAd4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-8khTb1CVMUejm813SEiojw-1; Tue, 24 Dec 2019 12:43:05 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4BDC4107ACC4;
	Tue, 24 Dec 2019 17:42:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6207E1000329;
	Tue, 24 Dec 2019 17:42:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A8751809567;
	Tue, 24 Dec 2019 17:42:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBOHgW0X018036 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 24 Dec 2019 12:42:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 14CDE10A8EA6; Tue, 24 Dec 2019 17:42:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FD0410A8EA3
	for <blinux-list@redhat.com>; Tue, 24 Dec 2019 17:42:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A17278012A9
	for <blinux-list@redhat.com>; Tue, 24 Dec 2019 17:42:29 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-397-1YCVwrOvPeukGdVSoy_djA-1; Tue, 24 Dec 2019 12:42:26 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47j3Sx4pWFz1Spw
	for <blinux-list@redhat.com>; Tue, 24 Dec 2019 12:42:25 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47j3Sx316bzcbc; Tue, 24 Dec 2019 12:42:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47j3Sx2dR4zcbV
	for <blinux-list@redhat.com>; Tue, 24 Dec 2019 12:42:25 -0500 (EST)
Date: Tue, 24 Dec 2019 12:42:25 -0500
To: blinux-list@redhat.com
Subject: archlinux lxde ratpoison adventure
Message-ID: <alpine.NEB.2.21.1912241239030.23485@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: 1YCVwrOvPeukGdVSoy_djA-1
X-MC-Unique: 8khTb1CVMUejm813SEiojw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBOHgW0X018036
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

I can't yet get this combination running since ratpoison can't find a
DISPLAY yet.  The linux system had a command line environment earlier and
had no need of a DISpLAY at that time.  I'm curious to know if ratpoison
will be better than xorg and I've already got ratpoison in my .xinitrc
file.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

