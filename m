Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AC34E323569
	for <lists+blinux-list@lfdr.de>; Wed, 24 Feb 2021 02:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614131002;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YWdcmQbso8fL3g91tchVM43dz6WaAL5dmQHOi9DvT98=;
	b=XCOJxqtbte59mf/Vl1puWN3DttFX17YUWXeiQ99oDbTCdeehdBhhuyI2C3kWN0pA7k9uCq
	th9YkTkx+qazsMMnXtA9AkNi/tD7nANSTqYk/tEd2flp2mld3B9B2PwIMlC66LlAGAQHQM
	x4MJz7ibcmlwA6uHfFH8kC3XsWqlnRI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-ayuMKDpBOoy9WDuqPzh8hg-1; Tue, 23 Feb 2021 20:43:20 -0500
X-MC-Unique: ayuMKDpBOoy9WDuqPzh8hg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 57EA480198F;
	Wed, 24 Feb 2021 01:43:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA3275D6A1;
	Wed, 24 Feb 2021 01:43:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 303954E58D;
	Wed, 24 Feb 2021 01:43:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11O1h61l000659 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Feb 2021 20:43:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 502E4200BFFC; Wed, 24 Feb 2021 01:43:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B8322166B2F
	for <blinux-list@redhat.com>; Wed, 24 Feb 2021 01:43:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 219218CBAA5
	for <blinux-list@redhat.com>; Wed, 24 Feb 2021 01:43:04 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-500-oiPwqDUqOe2WXdcrWjl-ew-1; Tue, 23 Feb 2021 20:43:01 -0500
X-MC-Unique: oiPwqDUqOe2WXdcrWjl-ew-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id CADE6621D6C; Wed, 24 Feb 2021 01:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id C7AAB620229
	for <blinux-list@redhat.com>; Tue, 23 Feb 2021 20:42:59 -0500 (EST)
Date: Tue, 23 Feb 2021 20:42:59 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: recently referenced headphones?
Message-ID: <Pine.LNX.4.64.2102232037310.2301335@server2.shellworld.net>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi folks,
My turn to resurrect list information.
someone was seeking headphone suggestions.  They posted both here and the 
Raspberry vi list, which is likely why I cannot find the post in my 
folder for this one.
they shared the brand  and model they  were currently using, Panasonic 
ones complete with 
an amazon link.
Ringing a bell?
thanks,



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

