Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4BB9F3FA0A0
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 22:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630096443;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GpFwFdc2ulfZ01whsikt/1jsiSC3MUeJPmPZD8vsOGA=;
	b=Hd9f0m9Kd2hYq7abZsYAkc/ssp7gJjNSRwBIN+kS5/GDiWT7TXjxDw2WPGjQGCcj/ezzYF
	EX1b3Gh/TqjOuvgBqS614mHviCAKBeVcwGmztFBv9fmtQ6RGdithEZclq4fKU6fSq0XcIF
	6t0F+WO5nzBVoozWHaD8OW0xAhREzLk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-pMAlSvuBOzeddXrKpOPSwA-1; Fri, 27 Aug 2021 16:34:01 -0400
X-MC-Unique: pMAlSvuBOzeddXrKpOPSwA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80C6B3639F;
	Fri, 27 Aug 2021 20:33:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32C7160C04;
	Fri, 27 Aug 2021 20:33:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 47563181A0F0;
	Fri, 27 Aug 2021 20:33:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RKXnsV025375 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 16:33:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5BBB119A754; Fri, 27 Aug 2021 20:33:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 569B81A91F2
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:33:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 598FD866DF4
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:33:46 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-437-VPiZ_t5lOk6ogZBw2U-fog-1; Fri, 27 Aug 2021 16:33:44 -0400
X-MC-Unique: VPiZ_t5lOk6ogZBw2U-fog-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4GxBJ66whPz8tQY
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:33:42 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id mF3NC502RSxr for <blinux-list@redhat.com>;
	Fri, 27 Aug 2021 20:33:42 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4GxBJ56Krxz8tQW
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:33:41 +0000 (UTC)
Message-ID: <20210827.203346.863.10@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: unable to install from aur
Date: Fri, 27 Aug 2021 15:33:46 -0500
MIME-Version: 1.0
In-Reply-To: <80cc3f79-c913-996c-b6c3-2f0be6579c82@gmail.com>
References: <20210827.181429.958.4@[192.168.1.100]>
	<f27ef494-11d0-71e1-dc0e-f93762bfb28b@gmail.com>
	<20210827.191148.445.6@[192.168.1.100]>
	<94329dd7-51a8-3124-583b-508c431cafd8@gmail.com>
	<20210827.200251.396.9@[192.168.1.100]>
	<80cc3f79-c913-996c-b6c3-2f0be6579c82@gmail.com>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17RKXnsV025375
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
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

Ok, that did work.
However, shouldn't this be handled auotmagically and not have to be done every time I need to install a package from aur?

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Fri, 27 Aug 2021 23:18:56 +0300
Subject: Re: unable to install from aur

> 27.08.2021 23:02, Linux for blind general discussion ?????:
> gpg: requesting key from 'https://db.debian.org/fetchkey.cgi?fingerprint=7A5A4E80E40097BAF6EAD638449190F3235ABD3B'
> gpg: WARNING: unable to fetch URI https://db.debian.org/fetchkey.cgi?fingerprint=7A5A4E80E40097BAF6EAD638449190F3235ABD3B: Server indicated a failure
> gpg: key fetch failed: Server indicated a failure
>
sorry.
curl 
https://db.debian.org/fetchkey.cgi?fingerprint=7A5A4E80E40097BAF6EAD638449190F3235ABD3B 
| gpg --import
will definitely work.

-- 
Sincerely, Alexander.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

