Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A274A6194
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 17:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643734117;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KiyFTTjB3+fPicFSwHRX9DPzzVcVmmoQunvsxzE7OvY=;
	b=G9ChSn4Ug1BaoZimzG7Gvp/ez7iDCEH43jQDk2St6WmTCNd8EcfAb0hmg17/9ftu78BoAx
	p9tFShqC3sMSaYInTsKn/RIFviJjjdjYO0DkF4Hx6rg66NIJPM0g7vPqzDkv2/kVzhV7dr
	i5w91HULX8eauwzei3xEOsUXgTBjICw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-311-FYfKM0XgO5-OzMUdAJWzuQ-1; Tue, 01 Feb 2022 11:48:33 -0500
X-MC-Unique: FYfKM0XgO5-OzMUdAJWzuQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2610B1091DA2;
	Tue,  1 Feb 2022 16:48:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9689384703;
	Tue,  1 Feb 2022 16:48:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CE325180BAD1;
	Tue,  1 Feb 2022 16:48:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211GmFkU026272 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 11:48:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A1071C08099; Tue,  1 Feb 2022 16:48:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D654C08092
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 16:48:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83DDF8027FC
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 16:48:15 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-650--ZZzob9PPzyxds7likVIKA-1; Tue, 01 Feb 2022 11:48:13 -0500
X-MC-Unique: -ZZzob9PPzyxds7likVIKA-1
Received: from [192.168.116.128] (unknown [176.230.58.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 030FF38AD120
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 16:48:11 +0000 (UTC)
Date: Tue, 1 Feb 2022 18:48:09 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: SSH server authentication (was Re: Remaining DecTalk Issues in
	Speakup?)
In-Reply-To: <bfd3d4b4-13fe-acc4-406a-87cfae17403d@hubert-humphrey.com>
Message-ID: <alpine.DEB.2.11.2202011838480.1960@debian.work>
References: <bfd3d4b4-13fe-acc4-406a-87cfae17403d@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Tue, 1 Feb 2022, Linux for blind general discussion wrote:

> And lastly on another topic, did something change involving ssh, as now if we 
> enable openssh server, any1 can login to my system without any 
> authentication. Obviously until we find out how to fix this, its turned off, 
> but maybe since last September Debian may have changed something.

Hi,

YOu didn't say which version of openssh-server or even Debian that you are 
running, but unless you're running unstable, I doubt that anything was 
changed.  Certainly nothing has changed in Bullseye since September.

But a few things to be aware of:

1.  The configuration for the SSH server is /etc/ssh/sshd_config

2.  The Debian default used at least to allow root login. I always turn 
this off because I think it's asking for trouble.

If you have no root password (also a bad idea) and root login is allowed, 
anyone could log in as root without a password.

3.  You may want to consider requiring remote access using SSH keys.  This 
means that you can turn off password authentication altogether and only 
people with valid keys can log in.

4.  You might also want to consider using a non-default port.  Yes some 
people will eventually find you, but in my experience, you get much less 
noise by doing this.

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

