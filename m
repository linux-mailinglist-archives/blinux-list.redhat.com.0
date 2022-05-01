Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A1F51655C
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 18:43:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651423409;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=66SniKkz1ZOTgHRN4qZHrs9dLPZShxzqGArsny/Am8c=;
	b=NurTVLiCRaOh9LXXoHjfZrVBV30C9Vimexmnmbr/I87CQ5FJ8iZzSylQiDm0c4NI+nvGbR
	0PkwI69RKrKDTuJJkTZeLaq+I3dD9tw9YUuCYy6/jKEGldb+5Z0u+M9ZU9OuCFCho2qfhe
	Ob3b8JG+ZGWNGidcs/L02d9y1zB1CEk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-tCQ0vE19PzaJ_kcbfq3Rkw-1; Sun, 01 May 2022 12:43:25 -0400
X-MC-Unique: tCQ0vE19PzaJ_kcbfq3Rkw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46444101AA6A;
	Sun,  1 May 2022 16:43:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1286840D2821;
	Sun,  1 May 2022 16:43:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5E73E1947063;
	Sun,  1 May 2022 16:43:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 1 May 2022 18:43:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Getting Linux in to the hands of those in need.
Message-ID: <mailman.12273.1651423399.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I am first and foremost an educator of the blind community in my 
country, South Africa to be exact, and am looking in to ways to get more 
people to use computers. Unfortunately, as we all know, the things are 
not cheep, especially when you look at options, such as computers bought 
from mainstream stores, most of which comes pre-installed with either 
Windows or MacOS.


Yes, I know I can buy Raspberry pies, and install something on there, 
weather it be Ubuntu, or whatever Distro I can lay my hands on.


But we have to remember that I'm dealing with folks that has either no 
computer knowledge, or very little. Thus, I'm thinking stay off of the 
single board computers for now.


Can someone who has done this before please let me know what they did?

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint machine

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

