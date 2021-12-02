Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6504659EA
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 00:40:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638402058;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CGzpdgqYjBryz35BOYeKuh/+GrB7aioDOaNjDyJ/gg4=;
	b=Q6Tv+mN4FhmQ+GHa22Gyu3cBSIe8J6DNAZ5qZBSmOZYpZZbx3CT72Qdu3tKLioHzKwYef+
	ggUEyaTc+MR3UdeMCkrPhXJT8tGGiwJK457Cu6eo7fmK66dS3ulG3a18zsPh+ld8DIBgbO
	MM4M9z9V+bLyFOdvQM4PhG9mgEo09UM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-176-oR5xd1_kOTeL8xI29KPlUg-1; Wed, 01 Dec 2021 18:40:54 -0500
X-MC-Unique: oR5xd1_kOTeL8xI29KPlUg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C1571F200;
	Wed,  1 Dec 2021 23:40:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C95F719C46;
	Wed,  1 Dec 2021 23:40:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09AAD1809C89;
	Wed,  1 Dec 2021 23:40:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B1NecMR018781 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Dec 2021 18:40:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9C53A492C3B; Wed,  1 Dec 2021 23:40:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96F98492C38
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 23:40:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D6FE8011A5
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 23:40:38 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-573-lqwWMKv7OeuRTrVe5kv1lQ-1;
	Wed, 01 Dec 2021 18:40:36 -0500
X-MC-Unique: lqwWMKv7OeuRTrVe5kv1lQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 337BFA3EAE
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 22:39:53 +0100 (CET)
Message-ID: <ad22b7a0-fddf-7a44-6f83-58d382ff2e51@slint.fr>
Date: Thu, 2 Dec 2021 01:40:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: New packages available for Slint: flatpak and pipe-viewer
References: <4d45f962-8735-59f4-695e-81e786b33a1e@slint.fr>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <4d45f962-8735-59f4-695e-81e786b33a1e@slint.fr>
X-Forwarded-Message-Id: <4d45f962-8735-59f4-695e-81e786b33a1e@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

to install flatpak and pipe-viewer in Slint type as root:
slapt-get -u
slapt-get --install-set slint

Top of https://slackware.uk/slint/x86_64/slint-14.2.1/ChangeLog.txt below:

In this batch of updates are provided:
1. flatpak and its dependencies
2. pipe-viewer and its *many* dependencies
Suggested readings after installation:
/usr/doc/flatpak-1.12.2/README.Slint
/usr/doc/bubblewrap-0.5.0/README.Slint (flatpak relies on bubblewrap)
/usr/doc/pipe-viewer-0.1.7/README.Slint
pipe viewer has also a GUI: gtk-pipe-viewer with a menu entry in the 
Audio and
Video sub-menu of the Applications menu.

Cheers,

Didier

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

