Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id C0FB72E28AA
	for <lists+blinux-list@lfdr.de>; Thu, 24 Dec 2020 19:58:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608836289;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=krVy/yCTel0/xSPw3kX3ucS8N4gQ0C829t/8r5c8HbQ=;
	b=LDddSA1TX05dGyrsgRFzjmba2mBHkbSE17IWzpPnHOw4VUWpFW3LDtaFNmXZqf7KMRVNbm
	Nx6lUQVR6iR3vB0rpor9as8xB5pIZLqlVI7lKbdRRLYcsiABNHfZZZwFPGrDSLodXJ0ibH
	06yNxsZu4x0MyFaBI2U3zNKJHs9yWT8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-XpSjWheZMeaXvivbsJU6Fw-1; Thu, 24 Dec 2020 13:58:07 -0500
X-MC-Unique: XpSjWheZMeaXvivbsJU6Fw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4FACE1005513;
	Thu, 24 Dec 2020 18:58:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6EE741F476;
	Thu, 24 Dec 2020 18:58:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A6584180954D;
	Thu, 24 Dec 2020 18:57:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BOIvljD032254 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Dec 2020 13:57:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 74695AB417; Thu, 24 Dec 2020 18:57:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E32FAB413
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 18:57:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DB0F811E78
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 18:57:45 +0000 (UTC)
Received: from gateway36.websitewelcome.com (gateway36.websitewelcome.com
	[192.185.192.36]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-402-QNqF1Gy-P46VYxmttZdo_w-1; Thu, 24 Dec 2020 13:57:42 -0500
X-MC-Unique: QNqF1Gy-P46VYxmttZdo_w-1
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway36.websitewelcome.com (Postfix) with ESMTP id B4563400D3DB0
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 12:09:58 -0600 (CST)
Received: from box2167.bluehost.com ([50.87.253.68]) by cmsmtp with SMTP
	id sV3mk92dYoE4DsV3mkWavd; Thu, 24 Dec 2020 12:09:58 -0600
X-Authority-Reason: nr=8
Received: from [104.60.194.40] (port=49597 helo=BREWCREW)
	by box2167.bluehost.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <kelly@kellford.com>) id 1ksV3l-003Rhb-RU
	for blinux-list@redhat.com; Thu, 24 Dec 2020 11:09:57 -0700
To: <blinux-list@redhat.com>
Subject: Getting Reacquainted with Linux
Date: Thu, 24 Dec 2020 12:09:57 -0600
Message-ID: <02c701d6da1f$fdf1c550$f9d54ff0$@kellford.com>
MIME-Version: 1.0
Thread-Index: AdbaFjE8viPEhHzmQ7ipUbj/FiBJTQ==
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2167.bluehost.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kellford.com
X-BWhitelist: no
X-Source-IP: 104.60.194.40
X-Source-L: No
X-Exim-ID: 1ksV3l-003Rhb-RU
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (BREWCREW) [104.60.194.40]:49597
X-Source-Auth: kelly@kellford.com
X-Email-Count: 1
X-Source-Cap: a2VsbHlmb3I7a2VsbHlmb3I7Ym94MjE2Ny5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

It has been a while since I have created a Linux environment but I got a
Debian install loaded by booting from a CD and using the talking installer
that was one of the options.

 

All that is great but now the install has finished and I'm trying to get
Orca going.

 

I've brought up the command entry with alt+f2 and entered orca.  If the
screen reader is starting I'm not getting any speech output.  I've tried
orca -s and can get the Orca preferences and speech and braille are both on.

 

Does anyone have thoughts on what I might try here?

 

Kelly

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

