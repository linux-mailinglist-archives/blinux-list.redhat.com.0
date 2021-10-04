Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 500C5421395
	for <lists+blinux-list@lfdr.de>; Mon,  4 Oct 2021 18:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633363546;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pXvvydQRhpdxh/k3QV7Zovdsiw7vOnCfdcU5CjIJ2gI=;
	b=eTYPphaJBl9wubTl4wsEsuHQCax2HmzfIP1elBEF7/X79SINT/K+hsuAZBFcifGU0TO7P2
	3njuIE5iUwqtHvCRZ0gqdvPkn5tcTtpHZKFK2ZNDARV3nhJHjLDi/U+GqnF2AVLxI3dbyq
	R+X5bDEosexwKUDXc4fuw6j97gibqyE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-594-akbMVAqsNIOahyYMsRVe1g-1; Mon, 04 Oct 2021 12:05:43 -0400
X-MC-Unique: akbMVAqsNIOahyYMsRVe1g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 17456824FAA;
	Mon,  4 Oct 2021 16:05:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF50D60657;
	Mon,  4 Oct 2021 16:05:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C4AB1800B9E;
	Mon,  4 Oct 2021 16:05:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 194G5S4m024315 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 4 Oct 2021 12:05:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4E8B9C2117; Mon,  4 Oct 2021 16:05:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4512E2D445
	for <blinux-list@redhat.com>; Mon,  4 Oct 2021 16:05:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCC4318A01B0
	for <blinux-list@redhat.com>; Mon,  4 Oct 2021 16:05:23 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-98-z1q8RJdEOzeE5WhvFJv4hw-1; Mon, 04 Oct 2021 12:05:19 -0400
X-MC-Unique: z1q8RJdEOzeE5WhvFJv4hw-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4HNQXs0sc1z8vMx
	for <blinux-list@redhat.com>; Mon,  4 Oct 2021 16:05:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id nw993W7ORtt2 for <blinux-list@redhat.com>;
	Mon,  4 Oct 2021 16:05:16 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4HNQXr1PJgz8tYJ
	for <blinux-list@redhat.com>; Mon,  4 Oct 2021 16:05:16 +0000 (UTC)
Message-ID: <20211004.160532.421.2@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Can mpv Remember Where I Left Off?
Date: Mon, 04 Oct 2021 11:05:32 -0500
MIME-Version: 1.0
In-Reply-To: <3be9ece9-e0bb-9440-dc6f-db8ce454e6b3@hubert-humphrey.com>
References: <3be9ece9-e0bb-9440-dc6f-db8ce454e6b3@hubert-humphrey.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 194G5S4m024315
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hit shift q when exiting mpv

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Blinux Discussion List <blinux-list@redhat.com>
Date: Mon, 4 Oct 2021 08:33:57 -0700 (PDT)
Subject: Can mpv Remember Where I Left Off?

> Hi All: I thought I saw some mentions of a way of having mpv remember where I 
> left off, as an example in a large audio book? I prefer combining all 
> individual files to cut down on clutter. But certainly many books are more than 
> 13hours, so can some1 please inform if there are startup commands in mpv to 
> remember my place? Thanks so much in advance
> Chime
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

