Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A29154EE75D
	for <lists+blinux-list@lfdr.de>; Fri,  1 Apr 2022 06:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648787373;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5H1vp0IQN/C0JryL5kinNcsKJxTqobAcO5Fn0Wd3aiA=;
	b=EKzwu3fpQLDU97SVFWNWJZr8VozapOfmsJPq+lSxjPKAIQPsXRKpfTwrZCV6btDueXXdA/
	AwGUhdzoJ0MGNT997U1QpBAsweBbbviZ5i9TCzHS8ytMNkIapA2PCuRkoHbFnNBiACH8TI
	lAswbLZUjCtcHI9+jie1743/2XHcQe4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-404-ILcxgEiTPzmE0xzdxJ4Ofg-1; Fri, 01 Apr 2022 00:29:30 -0400
X-MC-Unique: ILcxgEiTPzmE0xzdxJ4Ofg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BBD0E3801EC3;
	Fri,  1 Apr 2022 04:29:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 244A9400E551;
	Fri,  1 Apr 2022 04:29:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3E3DB1940340;
	Fri,  1 Apr 2022 04:29:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 1 Apr 2022 00:29:16 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Non-visual mind mapping alternatives
In-Reply-To: <mailman.5721.1648781651.111205.blinux-list@redhat.com>
References: <mailman.5721.1648781651.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5911.1648787363.111206.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

org-mode can do it using at minimum outline format with drawers that can
archive stuff until it's needed.  It's possible to export an org-mode
outline to html or pdf file though the pdf file will be inaccessible for
screen readers once done.
Files and locations in files can be linked in org-mode then when exported
to html, the links get preserved when you publish your work.
Lots of support is already available on org-mode on youtube and the web.


On Thu, 31 Mar 2022, Linux for blind general discussion wrote:

> I have just started taking an artist startup course. One of the early tasks
> involves making a mind map. I am aware that this is a highly visual exercise,
> but I am hoping that someone may have suggestions on non-visual alternatives
> to creating a mind map, specifically on either my Linux computer or my Android
> phone, although a web-based alternative would also be helpful. Thanks for any
> help.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

