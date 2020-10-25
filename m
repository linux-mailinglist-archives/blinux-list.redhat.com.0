Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id B2849298154
	for <lists+blinux-list@lfdr.de>; Sun, 25 Oct 2020 11:41:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603622510;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=exMvoNLHtsiGydAipfNxD3DjD7EhbtFC7Ng7LkZfzBw=;
	b=h1sZuICdPHn5QVfxrVCNv5nBSLhLPlPO72N5gYN4+pIB4UBy8zlfbSc62CaxSKHUlg6aCM
	PbwFsizIAfMvi898zGBQXsv7KMEQT6eAxXQKvbfufd6mJYPEF2fwDaj0vnTsT4MXsqzBEb
	6CZdoq7L15DK6LVuzHfr7YGKomPfZqA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-310-vqE-TZNVMae_dOQaNgA07Q-1; Sun, 25 Oct 2020 06:41:48 -0400
X-MC-Unique: vqE-TZNVMae_dOQaNgA07Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F8A62FD11;
	Sun, 25 Oct 2020 10:41:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C3E9555796;
	Sun, 25 Oct 2020 10:41:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3D78058128;
	Sun, 25 Oct 2020 10:41:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09PAZZaK030946 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Oct 2020 06:35:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 59DC3217B40F; Sun, 25 Oct 2020 10:35:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55048217B40D
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 10:35:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F99E185A790
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 10:35:33 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-197-lwQuQXe1MQudmbsMueDShg-1; Sun, 25 Oct 2020 06:35:30 -0400
X-MC-Unique: lwQuQXe1MQudmbsMueDShg-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4CJvW61s88z21n1
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 10:35:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id EUukaVg2Y4YQ for <blinux-list@redhat.com>;
	Sun, 25 Oct 2020 10:34:25 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4CJvTr5yF6z21gH
	for <blinux-list@redhat.com>; Sun, 25 Oct 2020 10:34:24 +0000 (UTC)
Message-ID: <20201025.103442.696.9@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Re: How do I install Voxin on an Ubuntu based Distro?
Date: Sun, 25 Oct 2020 05:34:42 -0500
MIME-Version: 1.0
In-Reply-To: <d5c3a72f-6dd0-5c83-c2-60a13f3d4ec5@hubert-humphrey.com>
References: <160352425235.6.1944557228384903424.1427650@slmail.me>
	<20201024.073231.148.6@[192.168.1.130]>
	<160355389674.6.9713551340879186352.1432620@simplelogin.co>
	<160360335129.6.5638435422909367922.1438135@slmail.me>
	<d5c3a72f-6dd0-5c83-c2-60a13f3d4ec5@hubert-humphrey.com>
User-Agent: POP Peeper Pro (5.0.0.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09PAZZaK030946
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Try something like
tar xf vox
and then hit tab key on vox


----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 25 Oct 2020 03:28:07 -0700 (PDT)
Subject: Re: How do I install Voxin on an Ubuntu based Distro?

> Well SL, I don't think "American English" is part of the file name, so 
> once you type that command without that, as they say "you should be good 
> to go"
> Chime
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

