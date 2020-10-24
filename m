Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7DCEA297B2C
	for <lists+blinux-list@lfdr.de>; Sat, 24 Oct 2020 09:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603524282;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=n8oZEaj5az+p/Hz4IEjdtH+7DJ4eanQOCNxJMtOvehY=;
	b=NgceiXBnDVJwZprQhQF8gn1U0pwJgvFFK0CJbhPirxh+kukbve+N+YwW5+ZWoDUnyAONdh
	GEB/NI92gTyRgS2mF3sRLruRrDgIy2Rpm9Jn/Vs16kt0Eh8hVsWV50FZQOmkb88UzMqi1/
	uQSVxqZVPdwfLcwrqv6zGT6v7EBcvKo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-Co4Vqe_IPhug2BHIRcaYhw-1; Sat, 24 Oct 2020 03:24:40 -0400
X-MC-Unique: Co4Vqe_IPhug2BHIRcaYhw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B31A95F9DA;
	Sat, 24 Oct 2020 07:24:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A12E710013D7;
	Sat, 24 Oct 2020 07:24:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 16570180B657;
	Sat, 24 Oct 2020 07:24:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09O7OJ7S011688 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Oct 2020 03:24:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ABA12110FC13; Sat, 24 Oct 2020 07:24:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6B011016D94
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:24:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 970D2811E76
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:24:17 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-141-qxYgb7DTND2IpCWpkyp7SQ-1; Sat, 24 Oct 2020 03:24:13 -0400
X-MC-Unique: qxYgb7DTND2IpCWpkyp7SQ-1
X-SimpleLogin-Client-IP: 127.0.0.1
Received: from [172.17.0.4] (localhost [127.0.0.1])
	by mx1.simplelogin.co (Postfix) with ESMTP id 6FA473F1D0
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:24:12 +0000 (UTC)
Date: Sat, 24 Oct 2020 09:24:10 +0200 (CEST)
Subject: How do I install Voxin on an Ubuntu based Distro?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <160352425235.6.1944557228384903424.1427650@slmail.me>
X-SimpleLogin-EmailLog-ID: 1427650
X-SimpleLogin-Type: Reply
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Hieveryone,


Ihave Linux Mint with MATE GUI using the Orca screenreader on a laptopand I am trying to install the Voxin TTS voices I bought.


Thisis my first time installing softwareon Linux.


Onthe Voxin website they give instructions for installing Voxin onUbuntu. And Linux Mint is based on Ubuntu so i think the installationcommands should be more or less the same.


Theysay for Ubuntu type in:


sudo--login


cdvoxin-3.3rc1


cdvoxin-enu-3.3rc1


./voxin-installer.sh


Idon't have any files that are just Voxin-3.3rc1. The files that Idownloaded each include the name of the TTS voice within the title.


Forexample:


voxin-american-english-ava-high-3.3rc1.tgz


Soi went to my terminal and tried typing sudo --login and after i login, then i typed:


cdvoxin-american-english-ava-high-3.3rc1.tgz


butit gives me an error message, something like, bash cd no such file ordirectory.


Couldany of you who have installed Voxin for Orca graphicaldesktop on Ubuntu based systems please let me know how to install it?


Thanks,


SL

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

