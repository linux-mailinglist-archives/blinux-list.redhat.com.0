Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E424CD516
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 14:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646400165;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LkT8S3YHgqZ6FfTtKQ/JUi31/vEfxEDKeCXY95Amsf0=;
	b=YqW1pS7bluDa+bCTRBQDnUTarZui0/QyGk73BEpEbBHUG0J0nM+/jjoYzCbtdnzIhECmvr
	7me+PZhGVH061ffRWlR2j8n8vJmCYEeMScvWhVVwFuYbJx31A4+xLsChtkGr6bxwy6DJB4
	QJ1TXeSBEHJEXNPjK/lAY9iwcNrtq50=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-464-pS8hlM5HPiC-npy7Kvnlag-1; Fri, 04 Mar 2022 08:22:42 -0500
X-MC-Unique: pS8hlM5HPiC-npy7Kvnlag-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2AA31091DA0;
	Fri,  4 Mar 2022 13:22:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5DD1B84976;
	Fri,  4 Mar 2022 13:22:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6467A4ED66;
	Fri,  4 Mar 2022 13:22:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224DMVdD004225 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 08:22:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3D03FC4C7B7; Fri,  4 Mar 2022 13:22:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 391E3C4C7A5
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:22:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F8A4811E76
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:22:31 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-465-oKj33oB7OL6H8kH8OxuVOQ-1; Fri, 04 Mar 2022 08:22:28 -0500
X-MC-Unique: oKj33oB7OL6H8kH8OxuVOQ-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 25B101BBE00
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:22:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id Ezzspnpxb3IO for <blinux-list@redhat.com>;
	Fri,  4 Mar 2022 13:22:26 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:8616:d376:ace:323b]
	(2603-6080-6302-e002-8616-d376-0ace-323b.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:8616:d376:ace:323b])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 52F431BB09D
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:22:26 +0000 (UTC)
Message-ID: <f49b0dd9-8fe2-9ec1-1d49-ff5ce164ded9@free2.ml>
Date: Fri, 4 Mar 2022 08:22:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
In-Reply-To: <YiHciAX/R+L65BU3@waffles>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

They sent me a message like that a few months ago and terminated my 
username/password access near the end of last year. Although Thunderbird 
has no trouble signing in now, FairEmail on my phone stopped working 
with my Gmail and gave me periodic errors because I'm using their 
F-Droid version instead of the version in the Google Play Store. I 
haven't had any problem with my Google Drive access from rclone, since 
I'm just using the key that they tell me is slower, but works. Note that 
rclone already works with Google Drive, and there are two methods of 
access. You can either set it up through the developer console and use 
your own key, or you can use theirs, but it's said to be slower. Both of 
these options still should work. I can't speak to the terminal-based 
email, since I haven't used it in many years, but rclone is a definite 
yes. I've been using it now for Google Drive, Dropbox and NextCloud for 
a good bit and have no trouble with any of them.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

