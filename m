Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3884B297B49
	for <lists+blinux-list@lfdr.de>; Sat, 24 Oct 2020 09:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603525789;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oO0eJXigG39ujRqFY/ccUkYPY+yktPOA6VlAL4O+0lo=;
	b=BY2JIHzvRrH8vGyYnmRVu3mmbT8X6Y6poj9HxULkEEm1aHtxK7ATVdTPDWSxGquczsxBpA
	nX2uiD1vaIgoftQbF9tfqzZco+0Ad2qwi2TDmrf1e9TpSst13D0nRdq1uUG8K3ilaHsCPu
	TJzA9Tublw5hB1MONtvYE5rFyTy9P3I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-CXkhkcdCMwitWFH6QoLmNw-1; Sat, 24 Oct 2020 03:49:47 -0400
X-MC-Unique: CXkhkcdCMwitWFH6QoLmNw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6AA551868400;
	Sat, 24 Oct 2020 07:49:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44DA860BFA;
	Sat, 24 Oct 2020 07:49:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 93AAF58114;
	Sat, 24 Oct 2020 07:49:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09O7XKal012818 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Oct 2020 03:33:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B8997110FC05; Sat, 24 Oct 2020 07:33:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B494A110FC04
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:33:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05033185A78B
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:33:17 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-370-Hqux1azpOFWzLxYynoIZZQ-1; Sat, 24 Oct 2020 03:33:14 -0400
X-MC-Unique: Hqux1azpOFWzLxYynoIZZQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4CJCWF3gpRz21n2
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:33:13 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id t4rt16BgVxzQ for <blinux-list@redhat.com>;
	Sat, 24 Oct 2020 07:32:16 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4CJCV76FQyz21n0
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 07:32:15 +0000 (UTC)
Message-ID: <20201024.073231.148.6@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Re: How do I install Voxin on an Ubuntu based Distro?
Date: Sat, 24 Oct 2020 02:32:31 -0500
MIME-Version: 1.0
In-Reply-To: <160352425235.6.1944557228384903424.1427650@slmail.me>
References: <160352425235.6.1944557228384903424.1427650@slmail.me>
User-Agent: POP Peeper Pro (5.0.0.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09O7XKal012818
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You've got to extract the tgz file first.
tar xf file.tgz
Then you can do your cd commands.


----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sat, 24 Oct 2020 09:24:10 +0200 (CEST)
Subject: How do I install Voxin on an Ubuntu based Distro?

> 
> Hieveryone,
> 
> 
> Ihave Linux Mint with MATE GUI using the Orca screenreader on a laptopand I am trying to install the Voxin TTS voices I bought.
> 
> 
> Thisis my first time installing softwareon Linux.
> 
> 
> Onthe Voxin website they give instructions for installing Voxin onUbuntu. And Linux Mint is based on Ubuntu so i think the installationcommands should be more or less the same.
> 
> 
> Theysay for Ubuntu type in:
> 
> 
> sudo--login
> 
> 
> cdvoxin-3.3rc1
> 
> 
> cdvoxin-enu-3.3rc1
> 
> 
> ./voxin-installer.sh
> 
> 
> Idon't have any files that are just Voxin-3.3rc1. The files that Idownloaded each include the name of the TTS voice within the title.
> 
> 
> Forexample:
> 
> 
> voxin-american-english-ava-high-3.3rc1.tgz
> 
> 
> Soi went to my terminal and tried typing sudo --login and after i login, then i typed:
> 
> 
> cdvoxin-american-english-ava-high-3.3rc1.tgz
> 
> 
> butit gives me an error message, something like, bash cd no such file ordirectory.
> 
> 
> Couldany of you who have installed Voxin for Orca graphicaldesktop on Ubuntu based systems please let me know how to install it?
> 
> 
> Thanks,
> 
> 
> SL
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

