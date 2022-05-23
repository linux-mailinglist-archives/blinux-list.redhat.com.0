Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ECC53115A
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 16:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653316527;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L/Y+pCNY0CISQ5Zp0inpU/QsxyW24mEFcCrqtZJyQvA=;
	b=FE9dwBurIPOrlSCTTlkDzHOfcpr5iQE1NHMLbjXRC6NHaMbRpuIKegZ9Q+fDBRMSHmgnj/
	Dzj2r9Jcu/FBZNkDgCsbjw6V0KxzKvrE9GXbqWnIPmBRe8gu0zTdXWKcE1mcjBJkpTsY1Q
	11tb+4+BBUJPagwDcOUgGs2gSSZOJvs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-245-WtyA3Zz8NYabaYj9U54K2w-1; Mon, 23 May 2022 10:35:23 -0400
X-MC-Unique: WtyA3Zz8NYabaYj9U54K2w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFE0885A5BA;
	Mon, 23 May 2022 14:35:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4581E7C2A;
	Mon, 23 May 2022 14:35:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ECFDE194705E;
	Mon, 23 May 2022 14:35:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: I'm in crisis, help!!!
In-Reply-To: <mailman.17535.1653315811.111208.blinux-list@redhat.com>
Date: Mon, 23 May 2022 07:35:14 -0700
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17727.1653315588.111206.blinux-list@redhat.com>
 <mailman.17535.1653315811.111208.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.17382.1653316520.111210.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Be VERY cautious about what you put in the restoration script, especially if it is run as a startup script.  In particular, you don't want it to trash an already working configuration.

-r

> On May 23, 2022, at 07:23, Karl Wilbur wrote:
> 
> ... You can also hook your custom script into startup so that it runs
> as soon as possible when the machine is ready for it.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

