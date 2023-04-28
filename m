Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 800B16F1E22
	for <lists+blinux-list@lfdr.de>; Fri, 28 Apr 2023 20:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682707157;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cMbd1eRIA9KK4mLMv5A+ub3xNSqpRdkd4kIb4YdSfSU=;
	b=hWb4PzMwuYLetc9CiZncCAe6S1f7xsFvrdiRGrZc774CJAtZdVMtqY2fliMvAs1lS+LT4u
	kUIltkzbG4mpT/R4gfAM5Nzg7TJa9pawSgvtV29pYDGr/Kz02sXNuVVOs7L2EhWu+jIf7C
	kIJ3W85LYwJMLhV1KFAUMDEZb45PW6o=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-632-rzumN8qhPUaP-L2MY_tJsw-1; Fri, 28 Apr 2023 14:39:13 -0400
X-MC-Unique: rzumN8qhPUaP-L2MY_tJsw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1035B185A78B;
	Fri, 28 Apr 2023 18:39:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7543A409AFC1;
	Fri, 28 Apr 2023 18:38:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D39661946A52;
	Fri, 28 Apr 2023 18:38:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Apr 2023 14:38:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
To: blinux-list@redhat.com
References: <mailman.2100.1682687131.2351824.blinux-list@redhat.com>
Subject: Re: Kde accessibility docker question
In-Reply-To: <mailman.2100.1682687131.2351824.blinux-list@redhat.com>
Message-ID: <mailman.2134.1682707136.2351823.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


On 28/4/23 09:05, Linux for blind general discussion wrote:
> I don't know where was it posted, but 5 6 months ago, someone posted a 
> tutorial, how to test new KDE Accessibility with all commands needed 
> to get it working with Orca, but I lost the email and I can not find 
> it with Google. Please, can you help?

I tried KDE accessibility a few years ago. It was simply a matter of 
installing the appropriate package group and then starting Orca when KDE 
was running, if I remember correctly.

Some aspects of the desktop environment were accessible, but many were 
not. However, the KDE community has been devoting increased attention to 
accessibility recently, so there may be improvements in the latest release.

I would suggest installing it and then attempting to run Orca.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

