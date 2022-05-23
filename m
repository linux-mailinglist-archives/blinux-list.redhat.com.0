Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC005311C5
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 18:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653321687;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HlZoK/u14GB0kEsRCLkN3P1UhCiICNyZR188iM3xMmI=;
	b=N5HKHSbYKtnY7+0JAYKID2Ut98OtSRLTa43G5UO2hs5WSN4QDw6969KyahYa4s4p7o/Bpa
	6uqcomcz8RJqSWIZ+qo/3fyuNepcUy89pG5mZGJ2Skj/2mw6JEeMZrrcJNL8DmBwJBav4o
	39UYetu2EUtdAmdiMdcK9wWOLEwqonI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-321-BAIFX313OTKO75zWqJcI0w-1; Mon, 23 May 2022 12:01:24 -0400
X-MC-Unique: BAIFX313OTKO75zWqJcI0w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05A3B803B22;
	Mon, 23 May 2022 16:01:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A6E3540CF8F5;
	Mon, 23 May 2022 16:01:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 38B19194705E;
	Mon, 23 May 2022 16:01:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 May 2022 12:01:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: I'm in crisis, help!!!
To: blinux-list@redhat.com
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17518.1653310063.111208.blinux-list@redhat.com>
 <mailman.17273.1653321119.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.17273.1653321119.111205.blinux-list@redhat.com>
Message-ID: <mailman.17397.1653321680.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'll redownload Fedora and see if it works.

Looks like your best bet will be to download the MATE spin and then 
install GNOME. The version I had already downloaded and tested with the 
non-speaking installer is the same version 36-1.5currently on the 
website. The MATE version also says 36-1.5, but its installer speaks, 
and you should actually be able to convert it to standard Fedora 
Workstation through dnf. It seems the packages you need will be 
fedora-release-workstation, fedora-release-identity-workstation, 
fedora-workstation-backgrounds and fedora-workstation-repositories. 
Either that or just install the GNOME desktop environment over your MATE 
install and change your default session on the display manager screen.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

