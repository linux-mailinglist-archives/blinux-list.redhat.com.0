Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D346545275
	for <lists+blinux-list@lfdr.de>; Thu,  9 Jun 2022 18:53:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654793619;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PmDyozoDWsvHogSRufgNMeSGjcWF8cT4K9XQdLjCsXs=;
	b=ZzPLOOw+2YnqxHYP/XnCKOr5OB8W6mPj2iapULXpBVRDvhKibIkDx/2ah3EPa2lbLDNwd7
	eME+alGM3/SVX9dWSbJIkx8+SbVUbj9/3Hxzm+am6NZL+h9IgvzcZKYcfFyc/sWEtv97Sq
	hZxslKsa/tIZ16plpgIJgQEZ32BN5qU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-609-M6yW8sNbPTWnHohcowF_vQ-1; Thu, 09 Jun 2022 12:53:35 -0400
X-MC-Unique: M6yW8sNbPTWnHohcowF_vQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E21288339A3;
	Thu,  9 Jun 2022 16:53:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3D9EF492C3B;
	Thu,  9 Jun 2022 16:53:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A10961947065;
	Thu,  9 Jun 2022 16:53:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.23546.1654791068.111208.blinux-list@redhat.com>
References: <mailman.23546.1654791068.111208.blinux-list@redhat.com>
Date: Thu, 9 Jun 2022 16:53:27 +0000
Subject: Re: How Can I Fix this Error?
To: blinux-list@redhat.com
Message-ID: <mailman.23252.1654793611.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

My usual workaround for something breaking in Debian Unstable is to
enable Testing in my /etc/apt/sources.list, downgrade the affected
package, and then spoof the version number of the package in
/var/lib/dpkg/status to make aptitude think the installed version is
slightly newer than the Unstable version... granted, this might not
help if the affected package can't be downgraded by itself, andif the
issue persists, you might find yourself in the situation where a new
version that doesn't fix the problem hits unstable but the version
that introduce the problem has since migrated to testing.

No idea on this specific issue though.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

