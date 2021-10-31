Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D084440EDE
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 15:40:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635691208;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xvhbqm8c5koyxmIigJ2oRC60KLGpiM1F67/+q7DSHac=;
	b=NH0gX54USqKB3kc+T27wXsaFyhYdMQzhx/TsQUpHZxPr3ZyPsr5xSbDDhlcsAlnv095aNV
	rkEt8BAXL7vGlV6g+wSrW9pSWWxbFlXav8VsF/I52crnkDCkb5tcVgt8++RxK4JwZbecxR
	yP4YkvTu1nuYmQmBTbgRWxbs1W5GIbg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-feEttGuUNTGQ0Krt302-mQ-1; Sun, 31 Oct 2021 10:40:04 -0400
X-MC-Unique: feEttGuUNTGQ0Krt302-mQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB15D10A8E00;
	Sun, 31 Oct 2021 14:39:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A29965D6CF;
	Sun, 31 Oct 2021 14:39:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0FD854A703;
	Sun, 31 Oct 2021 14:39:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VEdoPd003176 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 10:39:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 71CFA2166B26; Sun, 31 Oct 2021 14:39:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CCB92166B25
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 14:39:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69400185AD26
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 14:39:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-564-6QAG-Kf8Pz-9iJoL8SOSvg-1; Sun, 31 Oct 2021 10:39:44 -0400
X-MC-Unique: 6QAG-Kf8Pz-9iJoL8SOSvg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HhzMh0dZ9z2jMZ
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 10:39:44 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HhzMg6r43zcbc; Sun, 31 Oct 2021 10:39:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HhzMg6Kq5zcbP
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 10:39:43 -0400 (EDT)
Date: Sun, 31 Oct 2021 10:39:43 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Beginner's Guide To The Linux Terminal
In-Reply-To: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
Message-ID: <alpine.NEB.2.23.451.2110311039220.18525@panix1.panix.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On some systems but not all.


On Sun, 31 Oct 2021, Linux for blind general discussion wrote:

> Hi,
> For the new Linux users such as myself,
> I found this on Youtube.
> I learned that you can open the terminal with
> ctrl+alt+t
> Checkout this video.
> https://youtu.be/s3ii48qYBxA
>
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

