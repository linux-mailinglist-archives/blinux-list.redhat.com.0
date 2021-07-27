Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id DE08F3D7155
	for <lists+blinux-list@lfdr.de>; Tue, 27 Jul 2021 10:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627375368;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=52LAjjE6VMtkCw1EeYXI0un3NT5/SB34oUo6P7dLi2o=;
	b=M4ET2VzfNcVNqn4d2lzXvwWv1P68DK37jW6ctlaZ1i78a8/L6Zi8570To3e5Fk8P3uDhqu
	w+oTLkNQBEckDWJOBdWlqBxdwvRKFRgiDxUzwC+45p2aAkMk2XFvt+5uURiz9CgORudrF2
	/WOXgegjNWvm3n9WmKXYpNl8t0lTmeo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-403-PbhsokC-OVK1HzFFNc_MUw-1; Tue, 27 Jul 2021 04:42:46 -0400
X-MC-Unique: PbhsokC-OVK1HzFFNc_MUw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA59C802C91;
	Tue, 27 Jul 2021 08:42:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D43560854;
	Tue, 27 Jul 2021 08:42:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8CB01180BAB0;
	Tue, 27 Jul 2021 08:42:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16R8cQmo025782 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 27 Jul 2021 04:38:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 54E60D1EB8; Tue, 27 Jul 2021 08:38:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50680D29DF
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 08:38:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0CD00811E78
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 08:38:23 +0000 (UTC)
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de
	[80.67.18.16]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-206-HdshI2PPMieldxPBg_ENEw-1; Tue, 27 Jul 2021 04:38:19 -0400
X-MC-Unique: HdshI2PPMieldxPBg_ENEw-1
Received: from [37.4.229.143] (helo=smtpclient.apple)
	by smtprelay04.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1m8IZI-0001NR-6I
	for blinux-list@redhat.com; Tue, 27 Jul 2021 10:36:04 +0200
Mime-Version: 1.0 (1.0)
Subject: Re: A question about adding keyboard shortcuts in mate
Date: Tue, 27 Jul 2021 10:38:17 +0200
Message-Id: <127FB27D-C6C3-4916-A575-3DE5AADEC936@linux-a11y.org>
References: <0B5B1D7B-CDA1-4A04-9BC9-0AEF80D6EA74@linux-a11y.org>
In-Reply-To: <0B5B1D7B-CDA1-4A04-9BC9-0AEF80D6EA74@linux-a11y.org>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Howdy,

Correction of an typo:
The run dialog starts with 
alt + f2



> Am 27.07.2021 um 10:30 schrieb Linux A11y <chrys@linux-a11y.org>:
> 
> alt + f1

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

