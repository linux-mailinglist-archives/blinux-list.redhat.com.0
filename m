Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 829654EE771
	for <lists+blinux-list@lfdr.de>; Fri,  1 Apr 2022 06:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648788755;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NNSK0kjiUc9CxTpzVAX4zCg1x6NpdyzmcjT4XfxaYiI=;
	b=BnZIkVbtwxhWwpMi8WJ0cVjq/RTqpGStFqjIE08Smq/CuJaWqfmONOmvpZvMbPFLTd0mhn
	3L0tLgqyF9T0OWkCf+RxNOfTilFnYm/q4/GC74gy1zoKSYuJEoFJdYpUSgStzuJ4GaeAby
	84NSlWIOY4+iGg0uyWj9lcUxo2Vf5/E=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-655-9zzSMM2RMQW7R3RF9rzerw-1; Fri, 01 Apr 2022 00:52:32 -0400
X-MC-Unique: 9zzSMM2RMQW7R3RF9rzerw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9D24C85A5A8;
	Fri,  1 Apr 2022 04:52:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4D074C15D42;
	Fri,  1 Apr 2022 04:52:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CAAC01940340;
	Fri,  1 Apr 2022 04:52:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 1 Apr 2022 00:51:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Non-visual mind mapping alternatives
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.5721.1648781651.111205.blinux-list@redhat.com>
 <mailman.5911.1648787363.111206.blinux-list@redhat.com>
 <mailman.5879.1648787784.111202.blinux-list@redhat.com>
 <mailman.5777.1648788178.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.5777.1648788178.111208.blinux-list@redhat.com>
Message-ID: <mailman.5770.1648788748.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oh the table does seem to be a good idea. Listening to the description, 
that may work better than a simple outline, especially since the diagram 
is described as a circle in the middle with something like octopus 
tentacles around it, I'm thinking to left and right, since that is what 
should be filled in. So a table or tree structure seems to be what I'm 
looking at so as to keep it in a somewhat visual but non-visually 
accessible form. I'll also take a look at the recommended website

miro.com

to see whether or not I can properly fill in the template there and 
refer back to it later. Thanks again.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

