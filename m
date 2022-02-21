Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BF04BD984
	for <lists+blinux-list@lfdr.de>; Mon, 21 Feb 2022 12:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645444412;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7CW+ATkNDuyXfekDeGqll77TqpZptmaljBUnT3lh7Pg=;
	b=EFuacfacuclhcJv8FwJXDOF0CpgcR4U7qtaNbWXAZyl0SIvCvObVg0GTvPV4oLC7pmvsVR
	NpWqP9x7Kjo64rYI4Rk1InCRfqM3A7W7ErJF1NdmQL+bGeKSgy/J0Rsqg5Ca0To8fQcSg6
	xzrBlr592/RcAW/38V1sgcW9nOQ1F4s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-542-5iX12XobPP-QrCkJ3BAxLw-1; Mon, 21 Feb 2022 06:53:28 -0500
X-MC-Unique: 5iX12XobPP-QrCkJ3BAxLw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2CA92F47;
	Mon, 21 Feb 2022 11:53:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E3F562D44;
	Mon, 21 Feb 2022 11:53:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC6644BB7B;
	Mon, 21 Feb 2022 11:53:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21LBqjEJ005387 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 21 Feb 2022 06:52:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 861CF1121325; Mon, 21 Feb 2022 11:52:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 820301121322
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 11:52:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78138800B24
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 11:52:42 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-637-zQmodQXaMwScRqENFfsyJw-1; Mon, 21 Feb 2022 06:52:40 -0500
X-MC-Unique: zQmodQXaMwScRqENFfsyJw-1
Received: from [192.168.116.128] (unknown [176.230.58.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 0826439ECAE6
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 11:52:38 +0000 (UTC)
Date: Mon, 21 Feb 2022 13:52:36 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: re: mutt or alpine
In-Reply-To: <13df69b9-b6e0-94a4-66b9-ba596636429d@panix.com>
Message-ID: <alpine.DEB.2.11.2202211350120.1580@debian.work>
References: <edc2d213-6272-de0-503b-5f3082f2ab95@panix.com>
	<13df69b9-b6e0-94a4-66b9-ba596636429d@panix.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Mon, 21 Feb 2022, Linux for blind general discussion wrote:

> One over-arching consideration especially with
> software and more generally with operating systems is length of support.
> With operating systems much email is sent on other lists whether to
> upgrade or not.  Very simply, everyone has a choice of upgrade or bail.
> In the case of bail, the move gets made to different operating systems.

Regarding ALPINE support, there is a good low-traffic mailing list which 
provides good support.  The current maintainer is an active participant 
there.

http://mailman12.u.washington.edu/mailman/listinfo/alpine-info

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

