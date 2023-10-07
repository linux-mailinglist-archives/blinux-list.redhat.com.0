Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7A77BC90C
	for <lists+blinux-list@lfdr.de>; Sat,  7 Oct 2023 18:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696695655;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tU+AEOZJT8GknMwPDjtrux8Df/Dpf3+Z1whvx2gFRkk=;
	b=QEd6AKAG7hrs45uAIo80Uu5I9Ry2rY9VY0bHfws5t2uyv7NTgWMWB+ANLxjRns3HIZt+Hy
	VOGlo08h36GM3ziRs1mbeLkX83svBIAhGHWKo9dL6SF0m870b/vDzuT+7cdGkyoMiYiGRy
	nJYh6yYJAgnzsw7BPl/H5tC/ssOVQeg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-433-htuXUmV4Pt-QxMvF6AxhKw-1; Sat, 07 Oct 2023 12:20:41 -0400
X-MC-Unique: htuXUmV4Pt-QxMvF6AxhKw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7617D101A53B;
	Sat,  7 Oct 2023 16:20:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 64EB32156711;
	Sat,  7 Oct 2023 16:20:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C285C19465B5;
	Sat,  7 Oct 2023 16:20:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.24.1696694371.2052528.blinux-list@redhat.com>
References: <mailman.1823.1696646293.2981450.blinux-list@redhat.com>
 <mailman.1943.1696647005.2981447.blinux-list@redhat.com>
 <mailman.24.1696694371.2052528.blinux-list@redhat.com>
Date: Sat, 7 Oct 2023 12:20:27 -0400
Subject: Re: opensuse tumbleweed
To: blinux-list@redhat.com
Message-ID: <mailman.26.1696695637.2052531.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Now I'm curious...

Is there a way to get a report on any of the following?:

-The Installed size of a package and all it's dependencies.
-The download size of a package and all it's dependencies.
-The install size of a package, its dependencies, and its recommends.
-The download size of a package, its dependencies, and its recommends.

Preferably for Apt-based systems(I know Suse is RPM based, but I'm
typing this from a Debian box).

Aptitude includes fields for compressed(persumably the size of the
.deb) and uncompressed(presumably how much space the installed package
will take up) sizes for each package, but that's just for that package
itself(Aptitude reports 2093k compressed and 15m uncompressed for
Orca's size), so it's of limited use for packages that aren't
self-contained... and if the report could exclude sizes of shared
dependencies to things like python, an xserver, or a desktop meta
package, the things one would likely have installed even without the
target package, that would be even better...

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

