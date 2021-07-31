Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C56393DC6D7
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 18:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627747686;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vaudbhKCvfavURWLcjhiFvFKJjDSZkg7+T1eT73i3P8=;
	b=dyRkp6zT0iY4++bdpCL+hVs6LjFZfK+M013hp2cg9bc+jjUdnVw04sf1YO8s7tYFXIg8T7
	pTA38Hg6jAC/yMANFlVCq2KANJ0hwhj+99/LfP6VGNcctIcbG1MizyvkKplQchUhg4I6c9
	mRR9xnjOifRHkeeUwpZU8ovCupdVl/U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-93-2wE25lm6MfCyTCnoci37Ag-1; Sat, 31 Jul 2021 12:08:04 -0400
X-MC-Unique: 2wE25lm6MfCyTCnoci37Ag-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6BBE107ACF5;
	Sat, 31 Jul 2021 16:07:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78F68608BA;
	Sat, 31 Jul 2021 16:07:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 26226180BAB1;
	Sat, 31 Jul 2021 16:07:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VG4Z6k032721 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 12:04:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D7E3C215CDB5; Sat, 31 Jul 2021 16:04:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2420215CDAE
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 16:04:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B6BC185A79C
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 16:04:33 +0000 (UTC)
Received: from gateway34.websitewelcome.com (gateway34.websitewelcome.com
	[192.185.148.164]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-585-rXsM6_wXMWKeOzAZVhno1A-1; Sat, 31 Jul 2021 12:04:30 -0400
X-MC-Unique: rXsM6_wXMWKeOzAZVhno1A-1
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway34.websitewelcome.com (Postfix) with ESMTP id 2AF7D1276D8
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 10:41:56 -0500 (CDT)
Received: from box2167.bluehost.com ([50.87.253.68]) by cmsmtp with SMTP
	id 9r7bm6jEqjSwz9r7cmg8rc; Sat, 31 Jul 2021 10:41:56 -0500
X-Authority-Reason: nr=8
Received: from [104.60.194.40] (port=60427 helo=BREWCREW)
	by box2167.bluehost.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <kelly@kellford.com>) id 1m9r7b-000bGE-I6
	for blinux-list@redhat.com; Sat, 31 Jul 2021 09:41:55 -0600
To: <blinux-list@redhat.com>
Subject: Setup of Raspberry PI
Date: Sat, 31 Jul 2021 10:41:55 -0500
Message-ID: <017601d78622$98193d80$c84bb880$@kellford.com>
MIME-Version: 1.0
Thread-Index: AdeGIiKQhmQw6VD0TqKNzgb8UsEeXA==
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2167.bluehost.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kellford.com
X-BWhitelist: no
X-Source-IP: 104.60.194.40
X-Source-L: No
X-Exim-ID: 1m9r7b-000bGE-I6
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (BREWCREW) [104.60.194.40]:60427
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

My Raspberry PI device lost power during an upgrade so wasn't booting any
longer.  I reflashed the SD card to just do a clean install.  But I am now
curious if there is a way to get ORCA or other speech to do setup?

 

The first time I did this, I had sighted assistance because I and a brother
were setting up four of these at the same time 

 

I've tried a few things to try and get things talking with no luck.  I'm
using the default Raspberry PI image from their site.

 

Kelly

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

