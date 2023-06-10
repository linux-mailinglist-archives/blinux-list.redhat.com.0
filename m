Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 598E972AB5D
	for <lists+blinux-list@lfdr.de>; Sat, 10 Jun 2023 14:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686399082;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=28iZe4FlaiePpch0Mk0oWbZcd2RM5F6ThdXe1COoPUo=;
	b=UCDzTgfp6z5q+SyCUIofVor1D65Nvb3vwKQFbH2zgVGGKQzFXoYybUw4Ze9R1WlEyOOgmv
	pZDnsDjTfMWKwN2Nghnqe75mF8GVStN+HPeDswkrETsI418vaI14meoSMAiQyyBlYsP1HP
	Gi6CyrqfhPNzM6qqymfZZh8yNA1E2K0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-5-YPdmn-K8N6-SXfwYCSBaBA-1; Sat, 10 Jun 2023 08:11:20 -0400
X-MC-Unique: YPdmn-K8N6-SXfwYCSBaBA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F890803791;
	Sat, 10 Jun 2023 12:11:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 48AD82166B26;
	Sat, 10 Jun 2023 12:11:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AED6E19451C4;
	Sat, 10 Jun 2023 12:11:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 10 Jun 2023 08:11:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Speech-dispatcher seems broken on ArchLinux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1788.1686336155.910463.blinux-list@redhat.com>
 <mailman.1748.1686341177.910461.blinux-list@redhat.com>
 <mailman.72.1686397739.3347374.blinux-list@redhat.com>
In-Reply-To: <mailman.72.1686397739.3347374.blinux-list@redhat.com>
Message-ID: <mailman.106.1686399075.3347375.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes, I forgot about the pipewire-pulse package. I believe my Fedora 
system installed it automatically along with the rest of the pipewire 
packages. I've had it working reliably here since 34, a bit over a year 
and a half ago just before the 35 release. Before that I had it working 
somewhat reliably on Arch, although there were still a couple of random 
bugs to work out at that time.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

