Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 093457408EE
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jun 2023 05:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687922981;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bvvj8yzIYNqcxTSx0DreMKCK35mrMD+mPSG6qkou8KM=;
	b=XOJWNZXZ4z3oBZhVgQkOFE1YmjaHmTM5gjruQ1pEDNeyVxcc66v48qDXEWwGwlfobo06RO
	fbDz6GjAkvP4xjLH0b8esofs51qsnbsExf4cN2hI5MxEl4BZZ37EOC8G+U6H80ganQP/gp
	iDEzsezYqDyPUvlX60gFRAhNJsYJHIc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-606-MX9EvivtPaipRdaZSvqMPQ-1; Tue, 27 Jun 2023 23:29:37 -0400
X-MC-Unique: MX9EvivtPaipRdaZSvqMPQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0FE638ED600;
	Wed, 28 Jun 2023 03:29:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BE71C2166B25;
	Wed, 28 Jun 2023 03:29:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DBEBC194658D;
	Wed, 28 Jun 2023 03:29:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.3\))
Subject: Re: Looking for accessible cloud storage mounter
Date: Tue, 27 Jun 2023 23:29:12 -0400
References: <mailman.568.1687823723.3098367.blinux-list@redhat.com>
 <mailman.475.1687828137.3098369.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.475.1687828137.3098369.blinux-list@redhat.com>
Message-ID: <mailman.678.1687922957.3098369.blinux-list@redhat.com>
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

Thank you,
rclone was just what I needed.

Rob
> On Jun 26, 2023, at 9:08 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> try https://rclone.org
> 
> On 27.06.2023 2:45, Linux for blind general discussion wrote:
>> Dear List,
>> I would like to find a cloud mounter app for Linux to mount PCloud, DropBox, or Google Drive without taking up room on my disk drive.
>> I use Cloud Mounter on my Mac. They also have a Windows version, But I have not found a Linux version.
>> Thanks,
>> Rob
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

