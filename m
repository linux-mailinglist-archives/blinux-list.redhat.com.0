Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0644177BBF0
	for <lists+blinux-list@lfdr.de>; Mon, 14 Aug 2023 16:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692024527;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6LY43L/XYwPG5oIEW2wzARRiXLP3OyShDbMZ+uvPmrM=;
	b=coKl9s7INF9OWuSp58zGwK86N+GfvDrgTDqaUVjMilIS5weM7Tx/BLK4o8hiowzOdrw+wY
	Y8wev42dwNDM5e5sjJoCf46gKY8XttSD7eELLts/I4mpckykCisR6eVIgtCDLFQYnEEzZh
	VazNKHPQa5fs0DdCHKlA6k5q9i3GT4Y=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-529-7N0mg43oP6mWedNl7Sxyyg-1; Mon, 14 Aug 2023 10:48:44 -0400
X-MC-Unique: 7N0mg43oP6mWedNl7Sxyyg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED63E800270;
	Mon, 14 Aug 2023 14:48:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1B7D4492C13;
	Mon, 14 Aug 2023 14:48:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B44861946595;
	Mon, 14 Aug 2023 14:48:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 14 Aug 2023 11:48:14 -0300
MIME-Version: 1.0
Subject: Re: Sound icons for desktop events?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.114.1691937328.2238098.blinux-list@redhat.com>
 <mailman.201.1692023024.2238102.blinux-list@redhat.com>
In-Reply-To: <mailman.201.1692023024.2238102.blinux-list@redhat.com>
Message-ID: <mailman.230.1692024521.2238099.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Vojta, first, many thanks for answering.

I'm trying the Ubuntu Mate live image, and I'd like to install Mate on 
Gentoo. If it is possible to have sounds for events in Arch, then I 
guess it should be possible to do it on any distro. Are you able to find 
out what method is used by Arch to implement that? Or perhaps I should 
ask on the Stormux discussion group?

Best,
Cleverson

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

