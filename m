Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E93F0530C75
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 11:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653299867;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jvcpMAXOZmWEWdDDTmc+fCbEJY9o1K2OYmxL4HzPL+M=;
	b=bpvPzIeXm8ts0p6M91GgYT/tVzSU1ws/qY/JfsUVjv+MSHpR/IYZ1zdfOM6J+WAEiZF/9o
	FzQWkaCOUTBwGOUv/47AIabcUot6qqpSqSCEvDeGWK0WjUV/nrXl4MBEAkY/miitYpxI3a
	S1yGAymkeEGghyGaxkrKWS8YwqZYpac=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-653-M8gBBCJDMgGypsHL8FkLyw-1; Mon, 23 May 2022 05:57:44 -0400
X-MC-Unique: M8gBBCJDMgGypsHL8FkLyw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ADBA029ABA1A;
	Mon, 23 May 2022 09:57:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 388001410DD5;
	Mon, 23 May 2022 09:57:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D2F24194705F;
	Mon, 23 May 2022 09:57:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 May 2022 11:57:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
To: Blinux-list@redhat.com
Subject: I'm in crisis, help!!!
Message-ID: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,

I am currently running vanilla Ubuntu 22.04, but every time the laptop 
reboots, which I will admit is not often, I spend more time on fixing my 
sound devices than I feel should be needed. This is driving me nuts!

What would you suggest I do?

Fedora doesn't want to talk in the installer, why I have no idea. I 
tried upgrading from a Fedora 35 install, but it stopped talking as well.

I've tried installing Arch, but for some reason the Arch installer also 
doesn't want to talk, and, yes, I know how it's suppose to be done. It 
use to talk just fine on my system, but now?

OpenSUSE's installer is inaccessible, and being married to a blind lady, 
I don't have eyeballs to assist.

After re-installing Slint a few days ago, something broke when I updated 
the system to the point that I couldn't boot it at all.

Now you understand why I feel like I'm in a bit of a pickle here. I 
refuse to re-install Windows on this machine, I really don't want to 
take a dive out the nearest window, which would be the result of me 
doing that.

Have mercy on this dumb South African and help me out of my misery!

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird on the Linux box.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

